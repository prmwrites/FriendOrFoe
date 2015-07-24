class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:id])
    @countries = Country.all
  end

  def new
  end
end
