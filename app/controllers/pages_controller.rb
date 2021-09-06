class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
  end

  def fase
    @current_phase = user_signed_in? ? current_user.current_phase : 'first_phase'
    @educational = Education.find_by(category: "#{@current_phase}_start")
  end

  def meio
    @motivos = current_user.undone_categories
  end

  def fim
    exclude = ["controller", "action"]
    @render = params.reject { |key, _value| exclude.include? key }
  end

  def jornada_final
  end
end
