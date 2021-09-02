class QuestionsController < ApplicationController
  def index
    current_user.start_phase unless current_user.phase_started?

    if params[:oath]
      @questions = Question.where(category: "#{current_user.current_phase}_oath")
      @next_path = { text: "Eu juro! Bora pro teste!", path: questoes_path }
    else
      @questions = Question.where(category: current_user.undone_categories)
      @next_path = { text: "Essas são minhas repostas", path: meio_path }
    end
  end

  def show
    @question = Question.find(params[:id])
  end
end
