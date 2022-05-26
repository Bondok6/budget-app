require 'rails_helper'

RSpec.describe 'Categories page', type: :feature do
  before :each do
    @user1 = User.new(name: 'kyrillos', email: 'kyrillos@gmail.com', password: '123456')
    @user1.save
    visit new_user_session_path
    fill_in 'Email', with: @user1.email
    fill_in 'Password', with: @user1.password
    click_on 'Log In'
  end

  it 'should be able to see categories' do
    expect(page).to have_content('CATEGORIES')
  end

  it 'should be able to redirect to add new category' do
    expect(page).to have_link('Add New Category')
  end

  it 'when click on add new category button should go to category#new' do
    click_on 'Add New Category'
    expect(page).to have_current_path(new_group_path)
  end

  it 'should be able to save category' do
    click_on 'Add New Category'
    fill_in 'Name', with: 'category 1'
    fill_in 'Icon', with: 'url'
    click_on 'Save'
    expect(page).to have_content('category 1')
  end
end
