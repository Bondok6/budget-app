require 'rails_helper'

RSpec.describe 'Transaction page', type: :feature do
  before :each do
    @user1 = User.new(name: 'kyrillos', email: 'kyrillos@gmail.com', password: '123456')
    @user1.save
    @category = Group.new(name: 'category 1', icon: 'icon')
    visit new_user_session_path
    fill_in 'Email', with: @user1.email
    fill_in 'Password', with: @user1.password
    click_button 'Log In'
    click_link 'Add New Category'
    fill_in 'Name', with: @category.name
    fill_in 'Icon', with: @category.icon
    click_button 'Save'
  end

  it 'should see TRANSACTIONS text' do
    click_on 'category 1'
    expect(page).to have_content('TRANSACTIONS')
  end

  it 'should have New Deal button' do
    expect(page).to have_css '.btn'
  end

  it 'should be able to add transaction' do
    click_on 'category 1'
    click_on 'New Deal'
    fill_in 'name', with: 'Deal 1'
    fill_in 'amount', with: 200
    click_on 'Add Deal'
    expect(page).to have_content('Deal 1')
  end
end
