class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:id])
    @countries = Country.all
  end

  def new
    @country = Country.find(params[:id])
    @countries = Country.all
  end


end
