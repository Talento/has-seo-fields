require "has_seo_fields/engine"

module HasSeoFields
  extend ActiveSupport::Concern
  included do
    has_one :seo_tag, as: :seo_taggable, class_name: "SeoTag", dependent: :destroy
    accepts_nested_attributes_for :seo_tag

    fields_accessors = []
    [:seo_meta_description, :seo_title, :seo_meta_keywords, :seo_robot, :seo_canonical, :og_image].each do |field|

      if defined? Globalize && ActiveRecord::Base.respond_to?(:translates)
        I18n.available_locales.each {|locale| fields_accessors << "#{field}_#{locale}" }
      end

      fields_accessors << field
    end

    delegate *fields_accessors, to: :seo_tag, allow_nil: true

  end
end
