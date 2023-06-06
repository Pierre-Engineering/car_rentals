class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.where(user_id: 1)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
