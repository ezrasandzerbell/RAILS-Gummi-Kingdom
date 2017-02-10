require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'create a new product'
    fill_in 'Name', :with => 'Red Gummy'
    fill_in 'Cost', :with => 3
    fill_in 'Country', :with => 'Taiwan'
    fill_in 'Image', :with => 'http://www.heyheycandy.co.nz/616-1310-thickbox/red-gummy-bears.jpg'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
