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
    redirect_to quizzes_path(@quiz)
  end

  def show
    @quiz      = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  private
  def quiz_params
    params.require(:quiz).permit(:title, :description, :image, questions_attributes: [:id, :quistion, :answer])
  end
end