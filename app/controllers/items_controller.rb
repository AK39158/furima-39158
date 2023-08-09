class ItemsController < ApplicationController
  before_action :set_prototype, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.includes(:user)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @items.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    @item.update(item_params)
    if @item.valid?
      redirect_to item_path(@items)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    if @item.user_id == current_user.id
      @item.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price, :category_id, :item_condition_id, :shipping_cost_id,
                                 :prefecture_id, :shipping_date_id).merge(user_id: current_user.id)
  end

  def set_prototype
    @item = Item.find(params[:id])
  end
end
