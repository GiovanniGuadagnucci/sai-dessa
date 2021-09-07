class EducationsController < ApplicationController
  def index
    fase = current_user.current_phase
    @educations = Education.where(category: current_user.phase_not_started? ? "#{fase}_intro" : current_user.undone_categories )
    if current_user.phase_not_started?
      @next_path = { text: "Boa, bora pro teste!", path: questoes_path }
    else
      @next_path = { text: "Assisti os conteudos!", path: questoes_path }
    end
  end
end
