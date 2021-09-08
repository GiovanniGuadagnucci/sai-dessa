class EducationsController < ApplicationController
  def index
    fase = current_user.current_phase
    @educations = Education.where(category: current_user.phase_not_started? ? "#{fase}_intro" : current_user.undone_categories )
    @btn_text = current_user.phase_not_started? ? "Boa, bora pro teste!" : "Assisti os conteudos!"
  end
end
