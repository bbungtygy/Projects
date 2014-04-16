class ShopsController < ApplicationController
  def index
    @shops = Shop.paginate(:page => params[:page], :per_page => 1)
  end

  def create
    @shop = Shop.create(shop_params)

    if @shop.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  def new
    @shop = Shop.new
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end

  private
    def shop_params
      params.require(:shop).permit(
        :name, :phone_number, :operate_period, :closing, :is_selfservice,
        :table_count, :alone_table_count, :couple_table_count, :room_count, :is_off_shoes,
        :address, :public_transport_info, :surrounding_info, :do_parking,
        :do_card_pay, :is_pre_pay, :is_coupon,
        :is_dessert, :do_drink, :is_special_menu,
        :quere_waited, :is_takeout)
    end
end
