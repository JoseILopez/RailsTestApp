class AnswersController < ApplicationController
  def create
    Answer.create(question_params)

    redirect_to root_path
  end

  # Need to define question_params to avoid security issues

  private

  def question_params
    params.require(:answer).permit(:q_id, :email, :body)
  end
end
