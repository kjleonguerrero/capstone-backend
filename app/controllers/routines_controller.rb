class RoutinesController < ApplicationController
  def index
    @routines = Routine.where(user_id: current_user)
    render :index
  end

  def create
    @routine = Routine.create(
      user_id: current_user.id,
      exercise_id: params["exercise_id"],
      reps: params["reps"],
    )
    if @routine.valid? #happy path
      render :show
    else #sad path
      render json: { errors: @routine.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    routine = current_user.routines.find_by(id: params[:id])
    routine.delete
    render json: { message: "Exercise removed from routine!" }
  end
end
