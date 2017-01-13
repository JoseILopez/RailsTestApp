class AnswersController < ApplicationController
  def create
    question = Question.find(params[:answer][:question_id])
    question.answers.create(answer_params)

    session[:user_email] = answer_params[:email]

    redirect_to question
  end

  # Need to define question_params to avoid security issues

  private

  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end
end
