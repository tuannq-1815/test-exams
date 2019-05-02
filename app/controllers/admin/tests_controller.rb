class Admin::TestsController < Admin::BaseController
  before_action :load_test, only: %i(edit update destroy)
  def index
    @tests= Test.all.page(params[:page]).per 5
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new test_params
    if @test.save
      flash[:success] = t(".created")
      redirect_to admin_tests_path
    else
      flash[:error] = t(".create_unsuccess")
      render :new
    end
  end

  def edit; end

  def update
    if @test.update test_params
      flash[:success] = t(".test_updated")
      redirect_to admin_tests_path
    else
      render :edit
    end
  end

  def destroy
    if @test.destroy
      flash[:success] = t(".test_deleted")
      redirect_to request.referrer
    else
      flash[:error] = t(".test_failed")
      redirect_to admin_tests_path
    end
  end

  private

  def test_params
    params.require(:test).permit Test::TEST_PARAMS
  end

  def load_test
    @test = Test.find_by id: params[:id]
    return if @test
    flash[:error] = t(".test_not_found")
    redirect_to admin_tests_path
  end
end
