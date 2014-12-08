class FlamesController < ApplicationController
  include FlamesHelper
  def index
  end

  def show
    your_name = params[:your_name]
    crush_name = params[:crush_name]
    @flame = findFLAME(your_name, crush_name)
  end
end
