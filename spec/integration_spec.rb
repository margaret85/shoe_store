require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'the store creation path', {:type => :feature} do
  it 'takes the user to a homepage where they can add stores' do
    visit '/'
    fill_in('store_name', :with => 'Caterpillar Shoes')
    click_button('Add Store')
    expect(page).to have_content('Caterpillar Shoes')
  end
end

describe 'the brand creation path', {:type => :feature} do
  it 'takes the user to a homepage where they can add brands' do
    visit '/'
    fill_in('brand_name', :with => 'Cheetah')
    fill_in('price', :with => '25')
    click_button('Add Brand')
    expect(page).to have_content('Cheetah')
  end
end

describe 'the store update path', {:type => :feature} do
  it 'allows the user to change the name of a store' do
    store = Store.new({:name => 'Caterpillar Shoes'})
    store.save
    visit '/'
    click_link('Caterpillar Shoes')
    click_link('Edit Store Name')
    fill_in('new_store_name', :with => 'Centipede Shoes')
    click_button('Update Store')
    expect(page).to have_content('Centipede Shoes')
  end
end

describe 'the brand update path', {:type => :feature} do
  it 'allows the user to change the name of a brand' do
    brand = Brand.new({:name => 'Puma', :price => 25})
    brand.save
    visit '/'
    click_link('Puma')
    click_link('Edit Brand Name')
    fill_in('new_brand_name', :with => 'Cougar')
    click_button('Update Brand')
    expect(page).to have_content('Cougar')
  end
end

describe 'the store delete path', {:type => :feature} do
  it 'allows a user to delete a store' do
    store = Store.new({:name => 'Caterpillar Shoes'})
    store.save
    visit '/'
    click_link('Caterpillar Shoes')
    click_link('Edit Store Name')
    click_button('Delete Store')
    visit '/'
    expect(page).not_to have_content("Caterpillar Shoes")
  end
end

describe 'the brand delete path', {:type => :feature} do
  it 'allows a user to delete a brand' do
    brand = Brand.new({:name => 'Caterpillar Shoes', :price => 25})
    brand.save
    visit '/'
    click_link('Caterpillar Shoes')
    click_link('Edit Brand Name')
    click_button('Delete Brand')
    visit '/'
    expect(page).not_to have_content("Caterpillar Shoes")
  end
end

describe 'adding a brand to a store', {:type => :feature} do
  it 'allows a user to add a brand to a store' do
    store = Store.new({:name => 'Caterpillar Shoes'})
    brand = Brand.new({:name => 'Cheetah', :price => 25})
    store.save
    brand.save
    visit '/'
    click_link('Caterpillar Shoes')
    click_link('Add a brand to this store')
    select('Cheetah', :from => "brand_id")
    click_button('Add Brand to Store')
    expect(page).to have_content('Cheetah')
  end
end

describe 'adding a store to a brand', {:type => :feature} do
  it 'allows a user to add a store to a brand' do
    store = Store.new({:name => 'Caterpillar Shoes'})
    brand = Brand.new({:name => 'Cheetah'})
    store.save
    store.save
    visit '/'
    click_link('Caterpillar Shoes')
    click_link('Add a store to this brand')
    select('Caterpillar Shoes' :from => "store_id")
    click_button('Add Brand to Store')
    expect(page).to have_content('Caterpillar Shoes')
  end
end
