class UsersController < ApplicationController
  def show
    @quizzes = Quiz.where(user_id: current_user.id).order(id: "DESC")
    @name    = current_user.name
  end
end
