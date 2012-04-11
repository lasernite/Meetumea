class LayoutsController < ApplicationController
  
  def _location
    @city = request.location.city
    @state = request.location.state
          end