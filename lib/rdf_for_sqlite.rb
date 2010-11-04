require 'rubygems'
require 'rdf'
require 'rdf/ntriples'
require 'data_objects'
require 'do_sqlite3'
require 'rdf/do'
require 'spira'
require 'active_model'
require 'json'

require 'active_support/core_ext/hash/except'
require 'active_support/core_ext/hash/slice'

module FleetVentures
  # Rather than going through a Rails commit process, I've just hijacked this code and run it as my own module.
  # For Spira models, the attributes hash uses symbols rather than strings, and so I have to map them to strings
  # on line 15 below.
  module Serialization
    def serializable_hash(options = nil)
      options ||= {}

      options[:only]   = Array.wrap(options[:only]).map { |n| n.to_s }
      options[:except] = Array.wrap(options[:except]).map { |n| n.to_s }

      attribute_names = attributes.keys.map {|k| k.to_s}.sort
      if options[:only].any?
        attribute_names &= options[:only]
      elsif options[:except].any?
        attribute_names -= options[:except]
      end

      method_names = Array.wrap(options[:methods]).inject([]) do |methods, name|
        methods << name if respond_to?(name.to_s)
        methods
      end

      (attribute_names + method_names).inject({}) { |hash, name|
        hash[name] = send(name)
        hash
      }
    end
  end
end

module RDFForSQLite
  def self.included(base)
    base.send(:include, Spira::Resource)
    base.send(:include, RDF)
    base.send(:include, ActiveModel::Conversion)
    base.extend ActiveModel::Naming
    base.send(:include, FleetVentures::Serialization)
    base.send(:include, ActiveModel::Serializers::JSON)
    base.send(:include, ActiveModel::Serializers::Xml)
  end

  def initialize(attributes = {})
    super
    attributes.each do |name, value|
      self.send("#{name}=", value)
    end
  end
  
  def persisted?
    self.send(:exist?)
  end
  
  def update_attributes(hash)
    hash.each do |name, value|
      self.send("#{name}=", value)
    end
    self.save!
    self
  end
  
  def update_attribute(name, value)
    self.send("#{name}=", value)
    self.save!
    self
  end
  
end