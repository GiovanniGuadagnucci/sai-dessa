class QuestionsController < ApplicationController
  def index
    current_user.start_phase unless current_user.phase_started?

    if params[:oath]
      @questions = Question.where(category: "#{current_user.current_phase}_oath")
      @next_path = { text: "Eu juro! Bora pro teste!", path: nextstep_path }
    else
      @questions = Question.where(category: current_user.undone_categories)
      @next_path = { text: "Essas são minhas repostas", path: nextstep_path }
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def nextstep
    if current_user.undone_categories.empty?
      redirect_to fase_path
    elsif current_user.user_oath_count.zero?
      redirect_to educacao_path
    elsif current_user.oath_score >= 80 && current_user.user_oath_count == 1
      current_user.last_chance
      redirect_to questoes_path
    else
      if current_user.user_oath_count == 2
        redirect_to fim_path
      else
        redirect_to fim_path({ oath: "" })
      end
    end
  end
end
