class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render :index
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
    render :show
  end

  def create
    @exercise = Exercise.create(
      title: params[:title],
      description: params[:description],
      image_url: params[:image_url],
      video_url: params[:video_url],
    )
    render :show
  end
end
