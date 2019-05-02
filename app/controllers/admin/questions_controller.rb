class Admin::QuestionsController < Admin::BaseController
  before_action :load_question, only: %i(edit update destroy)
   def index
    @questions= Question.all.page(params[:page]).per 5
  end

  def new
    @question = Question.new
  end

  def edit; end

  def update
    if @question.update question_params
      flash[:success] = t(".question_updated")
      redirect_to admin_questions_path
    else
      render :edit
    end
  end

  def destroy
    if @question.destroy
      flash[:success] = t(".question_deleted")
      redirect_to request.referrer
    else
      flash[:error] = t(".question_failed")
      redirect_to admin_questions_path
    end
  end

  private

  def question_params
    params.require(:question).permit Question::QUESTION_PARAMS
  end

  def load_question
    @question = Question.find_by id: params[:id]
    return if @question
    flash[:error] = t(".question_not_found")
    redirect_to admin_questions_path
  end
end
