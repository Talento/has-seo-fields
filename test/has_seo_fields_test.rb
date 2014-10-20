require 'test_helper'

class DummyPage < ActiveRecord::Base
  include HasSeoFields
end

describe HasSeoFields do

    describe "creating a dummy page" do

      describe "with nested attributes for SeoTag" do

        before(:each) do
          @attrs = { name: 'test-page', seo_tag_attributes: {
            seo_title: 'test-seo-title', seo_meta_keywords: 'test keyword'}}
        end

        it "must create a new seo tag" do
          DummyPage.create(@attrs)
          SeoTag.all.size.must_equal 1
        end

      end

    end

end
