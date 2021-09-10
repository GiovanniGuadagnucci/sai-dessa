class QuestionsController < ApplicationController
  def index
    current_user.start_phase if current_user.phase_not_started?
    @current_phase = current_user.current_phase

    if current_user.user_oath_count == 1
      @questions = Question.where(category: "#{current_user.current_phase}_oath")
      @next_path = { text: "Eu Juro! Bora pro teste!", path: nextstep_path }
    else
      @questions = Question.where(category: current_user.undone_categories)
      @next_path = { text: "Essas são minhas respostas", path: nextstep_path }
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def nextstep
    if current_user.journey_ended?
      redirect_to jornada_final_path
    elsif current_user.undone_categories.empty?
      redirect_to fase_path
    elsif current_user.user_oath_count == 1
      redirect_to educacao_path
    elsif current_user.oath_score >= 80 && current_user.user_oath_count == 2
      redirect_to questoes_path
    else redirect_to fim_path
    end
  end
end
