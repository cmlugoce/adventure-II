class ParksController < ApplicationController
  def index
    @parks = Park.all 

  end

  def show
    @park = Park.find(params[:id])
    if @park.country.trails.empty?
      redirect_to root_path 
    end 
  end
end
