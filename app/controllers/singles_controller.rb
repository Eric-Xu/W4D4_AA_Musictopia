class SinglesController < ApplicationController
  def index
    @singles = Single.includes(:artist)
  end

  def show
    @single = Single.find(params[:id])
  end

  def new
    @single = Single.new
  end

  def create
    @single = Single.new(params[:single])
    if @single.save
      redirect_to singles_url  ##we did this on purpose
    else
      render :new
    end
  end

  def edit
    @single = Single.find(params[:id])
  end

  def update
    @single = Single.find(params[:id])
    if @single.update_attributes(params[:single])
      redirect_to singles_url
    else
      render :edit
    end
  end

  def destroy
    Single.find(params[:id]).destroy
    redirect_to singles_url
  end
end