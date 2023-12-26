class ExercisesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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
      routine_id: params[:routine_id],
    )
    if @exercise.save #happy path
      render :show
    else #sad path
      render json: { errors: @exercise.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update(
      title: params[:title] || @exercise.title,
      description: params[:description] || @exercise.description,
      image_url: params[:image_url] || @exercise.image_url,
      video_url: params[:video_url] || @exercise.video_url,
    )
    if @exercise.save #happy path
      render :show
    else #sad path
      render json: { errors: @exercise.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render json: { message: "Exercise destroyed successfully" }
  end
end
