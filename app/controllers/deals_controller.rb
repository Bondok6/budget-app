class DealsController < ApplicationController
  def index
    @current_user = current_user
    @group = Group.find(params[:group_id])
    # @group_deals= Group.find(params[:group_id]).group_deals.order(created_at: :desc)
  end

  def new
    @current_user = current_user
    @group = Group.find_by_id(params[:group_id])
    @available_groups = current_user.groups.reject { |f| @group.deals.include?(f) }
  end

  def create
    @deal = current_user.deals.new(name: params[:name], amount: params[:amount])

    if @deal.save
      @group_deal = GroupDeal.new(group_id: params[:groups], deal_id: @deal.id)
      @group_deal.save
      redirect_to group_deals_path(group_id: params[:groups]), notice: 'Deal has been created successfully!'
    else
      flash[:alert] = 'Something went wrong, Try again!'
      render :new
    end
  end
end
