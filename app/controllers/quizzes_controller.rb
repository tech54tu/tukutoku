class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.order(id: "DESC")
  end

  def new
    @quiz = Quiz.new
    @quiz.questions.build
  end

  def create
    Quiz.create(quiz_params)
    redirect_to quizzes_path
  end

  def show
    @quiz         = Quiz.find(params[:id])
    @questions    = @quiz.questions
    gon.questions = @quiz.questions
  end

  def edit
  end

  def destroy
    @quiz      = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_path
  end

  private
  def quiz_params
    params.require(:quiz).permit(:title, :description, :image, questions_attributes: [:id, :question, :answer]).merge(user_id: current_user.id)
  end
end