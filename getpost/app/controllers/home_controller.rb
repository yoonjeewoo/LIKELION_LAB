class HomeController < ApplicationController
  def index
  end
  def write
  	@head = params[:title]
  	@body = params[:text]
  end
end
