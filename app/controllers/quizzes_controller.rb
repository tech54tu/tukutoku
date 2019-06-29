class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
  end

  def create
    Quiz.create(quiz_params)
    redirect_to action: :index
  end

  private
  def quiz_params
    params.permit(:title, :description, :image)
  end
end