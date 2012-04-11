class LayoutsController < ApplicationController
  
  def location
    @city = request.location.city
    @state = request.location.state
  end