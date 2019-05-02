class TestsController < ApplicationController
  before_action :load_test, only: [:update]

  def index
   @tests = Test.all
  end

  def loadTypeTest
    listTest = Test.by_subject_id params[:subject_id]
    respond_to do |format|
      format.json { render :json => listTest }
    end
  end

  def create

  end

  def show

  end

  def update
    if @test.update test_params
      flash[:success] = t(".profile_updated")
    else
      flash[:danger] = t(".not_update")
    end
  end

  def new
    @test = Test.new
  end

  private

  def load_test
    @test = Test.find_by id: params[:id]
    return if @test
    flash[:danger] = t "not_found"
    render :index
  end

  def test_params
    # params.require(:test).permit Result::RESULT_PARAMS
    # params.require(:test).permit :id, question_attributes:[:id, :answer_id]
  end
end
