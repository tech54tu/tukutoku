class QuizzesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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
    @quiz = Quiz.find(params[:id])
  end

  def update
    quiz = Quiz.find(params[:id])
    quiz.update(quiz_params) if quiz.user_id == current_user.id
    redirect_to quizzes_path
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy if quiz.user_id == current_user.id
    redirect_to quizzes_path
  end

  private
  def quiz_params
    params.require(:quiz).permit(:title, :description, :image, questions_attributes: [:id, :question, :answer]).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end