class StaticPagesController < ApplicationController
  def home
    @countries = Country.all
  end

  def help
  end

  def countries
    @countries = Country.all
  end

  def nato
    @countries = Country.all
    @country = Country.find_by_id(params[:id])
  end

end