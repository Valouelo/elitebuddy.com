class BuddiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_buddy, only: [:show]

  def index
    @buddies = Buddy.all
  end

  def show
  end

  def new
    @buddy = Buddy.new
  end

  def create
    @buddy = current_user.buddies.build(buddy_params)
    if @buddy.save
      redirect_to @buddy, notice: 'Buddy was successfully created.'
    else
      render :new
    end
  end

  private

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end

  def buddy_params
    params.require(:buddy).permit(:name, :description, :price)
  end
end
