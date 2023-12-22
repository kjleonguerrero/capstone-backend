class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
    render :index
  end
end
