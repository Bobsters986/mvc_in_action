class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
    @average_age = Comedian.average_age
  end

  def show
    @comedian = Comedian.find(params[:id])
    @longest_special = @comedian.specials.order(runtime: :desc).first
    #longest_special should be in the model
  end
end
