class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home fase]

  def home
  end

  def fase
    @current_phase = user_signed_in? ? current_user.current_phase : 'first_phase'
    @educational = Education.find_by(category: "#{@current_phase}_start")
  end
end
