class AnswersController < ApplicationController
  def update
    answer = Answer.find(params[:id])
    answer.update(answer_params)
    current_user.save_avg_score(answer.question.category)
    current_user.oath_try_update if answer.question.category.include?('_oath')
  end

  private

  def answer_params
    params.require(:answer).permit(:user_answer)
  end
end
