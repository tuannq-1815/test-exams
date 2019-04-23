class TestsController < ApplicationController
  def index; end

  def new; end

  def loadTypeTest
    listTest = Test.by_subject_id params[:subject_id]
    respond_to do |format|
      format.json { render :json => listTest }
    end
  end
end
