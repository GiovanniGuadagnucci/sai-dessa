class EducationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @educations = Education.where(category: params[:fase].present? ? "#{params[:fase]}_intro" : current_user.undone_categories)
    @next_path = params[:fase].present? ? {
      text: "Boa, bora para o teste!",
      path: questoes_path
      } : {
        text: "Assisti os conteudos!",
        path: questoes_path({ oath: "oath" })
      }
  end
end
