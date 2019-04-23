class TestsController < ApplicationController
  before_action :load_test, only: [:do_test]

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
end
