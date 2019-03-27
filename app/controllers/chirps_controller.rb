class ChirpsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @chirps = Chirp.all
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  def new

  end

  def create
    chirp = Chirp.new(content: params[:content])
    chirp.save
    flash[:success] = "Chirp Successful"
    redirect_to "/chirps"
  end
  
  def edit
    @chirp = Chirp.find(params[:id])
  end

  def update
    chirp = Chirp.find(params[:id])
    chirp.update(content: params[:content])
    flash[:success] = "Updated Chirp"

    redirect_to "/chirps/#{chirp.id}"
  end

def destroy
    chirp = Chirp.find(params[:id])
    chirp.destroy
    flash[:success] = "This Chirp is dead"
    redirect_to "/chirps"
  end

end

