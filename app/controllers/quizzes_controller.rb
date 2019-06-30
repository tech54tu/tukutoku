class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
    # @quiz.questions.build
  end

  def create
    Quiz.create(quiz_params)
    # @quiz = Quiz.create(title: quiz_params[:title], description: quiz_params[:description], image: quiz_params[:image], )
    # @quiz = Quiz.new(quiz_params)
    # @quiz = Quiz.save
    redirect_to action: :index
  end

  private
  def quiz_params
    params.require(:quiz).permit(:title, :description, :image)    
    # params.require(:quiz).permit(:title, :description, :image, question_attributes: [:id, :question, :answer])
  end
end