class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
  end

  def fase
    @current_phase = current_user.current_phase
    @educational = Education.find_by(category: "#{@current_phase}_start")
  end

  # def meio
  #   @motivos = current_user.undone_categories
  # end

  def fim
    # exclude = ["controller", "action"]
    # @render = params.reject { |key, _value| exclude.include? key }
    # redirect_to fase_path if current_user.ending_protected?
  end

  def jornada_final
    redirect_to fase_path unless current_user.journey_ended?
  end

  def perfil
    #@percentage_questions_done = (User.joins(:answers).where(id: current_user).size * 100)/Question.all.size
  end
end
