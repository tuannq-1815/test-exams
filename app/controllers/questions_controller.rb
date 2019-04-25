class QuestionsController < ApplicationController
  def index
    @questions = Question.list
  end

  def show
    #@question = Question.find_by :id params[:id]
  end

  def get_id_question
    respond_to do |format|
    format.html { redirect_to controller: 'Answers', action: 'index', id: "1"}
    end
  end
end
