class EducationsController < ApplicationController
  def index
    @educations = Education.where(category: params[:fase].present? ? "#{params[:fase]}_intro" : current_user.undone_categories)
    if params[:fase].present?
      @next_path = { text: "Boa, bora pro teste!",
                     path: questoes_path }
    else
      @next_path = { text: "Assisti os conteudos!",
                     path: questoes_path({ oath: "oath" }) }
    end
  end
end
