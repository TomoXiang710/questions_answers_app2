class AnswersController < ApplicationController
  def create
    @answer = current_user.answers.build(answer_params) #current_user.answersはhas_many設定をすることで使用できるようになる
    @answer.question_id = params[:question_id]
    if @answer.save
      redirect_to question_path(params[:question_id])
    else
      redirect_to question_path(params[:question_id])
    end
  end

  def destroy
    @answer = current_user.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(params[:question_id])
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
