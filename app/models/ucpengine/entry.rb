module Ucpengine
  class Entry < ActiveRecord::Base
    scope :published, -> { where('published_at <= ?', Time.zone.now) }
    include Ucpengine::Concerns::Searchable
    def self.content_attr(attr_name, attr_type = :string)
      content_attributes[attr_name] = attr_type

      define_method(attr_name) do
        self.payload ||= {}
        self.payload[attr_name.to_s]
      end

      define_method("#{attr_name}=".to_sym) do |value|
        self.payload ||= {}
        self.payload[attr_name.to_s] = value
      end
    end

    def self.content_attributes
      @content_attributes ||= {}
    end
  end
end
