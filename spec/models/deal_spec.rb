require 'rails_helper'

RSpec.describe Deal, type: :model do
  before :each do
    @user = User.new(name: 'Kero', email: 'Kero@gmail.com', password: '123456')
    @deal = Deal.new(name: 'deal 1', amount: 1)
  end

  it 'name should be present' do
    @deal.name = nil
    expect(@deal).to_not be_valid
  end

  it 'amount should be present' do
    @deal.amount = nil
    expect(@deal).to_not be_valid
  end
end