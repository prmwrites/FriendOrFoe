class StaticPagesController < ApplicationController
  def home
    @countries = Country.all
  end

  def help
  end

  def countries
    @countries = Country.all
  end
end
