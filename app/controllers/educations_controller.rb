class EducationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @educations = Education.where(category: user_signed_in? ? current_user.undone_categories : 'first_phase_intro')
  end
end
