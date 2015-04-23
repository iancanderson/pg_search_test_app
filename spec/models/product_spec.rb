require "rails_helper"

RSpec.describe Product do

  describe ".search" do
    it "finds products by exact name" do
      product = create(:product, name: "thing")
      expect(Product.search("thing").first).to eq(product)
    end

    it "finds products by exact name with different case" do
      product = create(:product, name: "Thing")
      expect(Product.search("thing").first).to eq(product)
    end

    it "finds products by partial name prefix" do
      product = create(:product, name: "thingiscool")
      expect(Product.search("thing").first).to eq(product)
    end

    it "finds products by name with different plurality" do
      product = create(:product, name: "best shirt evar")
      expect(Product.search("shirts").first).to eq(product)
    end

    it "finds products by slightly misspelled name" do
      product = create(:product, name: "shirt")
      expect(Product.search("shirrt").first).to eq(product)
    end

    it "finds products by exact description" do
      product = create(:product, description: "thing")
      expect(Product.search("thing").first).to eq(product)
    end

    it "sorts name matches over description matches" do
      description_match = create(:product, description: "foo")
      name_match = create(:product, name: "foo")
      results = Product.search("foo")
      expect(results.first).to eq(name_match)
      expect(results.second).to eq(description_match)
    end

    it "sorts exact matches before close matches" do
      close_match = create(:product, name: "foobarbazz")
      exact_match = create(:product, name: "foobarbaz")
      results = Product.search("foobarbaz")
      expect(results.first).to eq(exact_match)
      expect(results.second).to eq(close_match)
    end
  end

end
