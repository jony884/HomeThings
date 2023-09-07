class ItemsController < ApplicationController

  before_action :set_item, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]


  def index
    @titems = Item.includes(:user).order("created_at DESC")
  end

  def new
    @titem = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to '/'
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to root_path
  end

  def show
  end

  def search
    @items = Item.search(params[:keyword])
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :item_description).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
