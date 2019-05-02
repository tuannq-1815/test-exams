class ScoresController < ApplicationController
  before_action :load_test, only: [:create, :new]
  def index
  end

  def new
  end

  def loadTypeTest
    listTest = Test.by_subject_id params[:subject_id]
    respond_to do |format|
      format.json { render :json => listTest }
    end
  end

  def show

  end

  def create

  end

  def update
  end

  private

  def load_test
    @test = Test.find_by id: params[:test][:test]
    return if @test
    flash[:danger] = t "not_found"
    render :index
  end

  # def test_params
  #   params.require(:test).permit :id, question_attributes:[:id, :answer_id]
  # end
end
