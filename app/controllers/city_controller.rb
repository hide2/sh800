class CityController < ApplicationController

  def list
    @ps = Province.find_by_name(params[:province])
  end
end
