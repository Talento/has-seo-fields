require "test_helper"

describe SeoTag do
  let(:seo_tag) { SeoTag.new }

  it "must be valid" do
    seo_tag.must_be :valid?
  end
end
