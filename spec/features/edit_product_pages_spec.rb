require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'Red Gummy', :cost => 5, :country => "Taiwan", :image => 'http://www.albanesecandy.com/candy-store/images/products/popup/red-raspberry-gummi-bears.jpg?v=1421434864')
    visit edit_product_url(product)
    fill_in 'Name', :with => 'Red Gummies'
    click_on 'Update Product'
    expect(page).to have_content 'Red Gummies'
  end
  it "gives error when no description is entered" do
    product = Product.create(:name => 'Yellow Gummy', :cost => 5, :country => "Taiwan", :image => 'http://www.albanesecandy.com/candy-store/images/products/popup/red-raspberry-gummi-bears.jpg?v=1421434864')
    visit edit_product_url(product)
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
