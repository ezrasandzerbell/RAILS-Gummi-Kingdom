require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => 'Red Gummy', :cost => 5, :country => "Taiwan", :image => 'http://www.albanesecandy.com/candy-store/images/products/popup/red-raspberry-gummi-bears.jpg?v=1421434864')
    visit product_path(product)
    click_link 'Delete Record'
    expect(page).to have_content 'Get Started'
  end
end
