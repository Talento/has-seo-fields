class SeoTag < ActiveRecord::Base

  belongs_to :seo_taggable, :polymorphic => true

  validates :seo_title, :seo_meta_keywords, :seo_robot, :seo_canonical, length: { maximum: 255 }

  if defined? Globalize
    translates :seo_meta_description, :seo_title, :seo_meta_keywords, :seo_robot, :seo_canonical, :og_image
  end

end
