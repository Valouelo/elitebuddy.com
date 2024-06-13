class BuddiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_buddy, only: [:show, :edit, :update]

  def index
    @buddies = Buddy.all
  end

  def show
    @buddy = Buddy.find(params[:id])
    @booking = Booking.new
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

  def edit
  end

  def update
    if @buddy.update(buddy_params)
      redirect_to @buddy, notice: 'Buddy was successfully updated.'
    else
      puts @buddy.errors.full_messages  # Affichez les erreurs dans la console pour le débogage
      render :edit
    end
  end

  private

  def set_buddy
    @buddy = Buddy.find(params[:id])
  end

  def buddy_params
    params.require(:buddy).permit(:name, :description, :price_per_day, :options, :photo, :proposal, :joined_year)
  end
end
