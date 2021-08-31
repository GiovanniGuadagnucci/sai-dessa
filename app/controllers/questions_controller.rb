class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    if user_signed_in?
      @questions = Question.where(category: current_user.undone_categories)
    else
      @questions = Question.where(category: SD["first_phase"]["categories"])
    end
  end

  def show
    @question = Question.find(params[:id])
  end
end
