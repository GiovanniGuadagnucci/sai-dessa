class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    if params[:oath]
      @questions = Question.where(category: current_user.user_undone_oath.any? ? params[:oath] : current_user.undone_categories )
      @next_path = { text: "Eu juro! Bora para o teste!", path: questoes_path }
    else
      @questions = Question.where(category: user_signed_in? ? current_user.undone_categories : SD["first_phase"]["categories"])
      @next_path = { text: "Essas são minhas repostas", path: meio_path }
    end
  end

  def show
    @question = Question.find(params[:id])
  end
end
