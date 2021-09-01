class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    if params[:oath]
      raise
      @questions = Question.where(category: current_user.user_undone_oath.empty! ? params[:oath] : current_user.undone_categories )
    else
      @questions = Question.where(category: user_signed_in? ? current_user.undone_categories : SD["first_phase"]["categories"])
    end
  end

  def show
    @question = Question.find(params[:id])
  end
end
