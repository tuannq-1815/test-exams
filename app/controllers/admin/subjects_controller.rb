class Admin::SubjectsController < Admin::BaseController
  before_action :load_subject, only: %i(edit update destroy)
  def index
    @subjects= Subject.all.page(params[:page]).per 5
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new subject_params
    if @subject.save
      flash[:success] = t(".created")
      redirect_to admin_subjects_path
    else
      flash[:error] = t(".create_unsuccess")
      render :new
    end
  end

  def edit; end

  def update
    if @subject.update subject_params
      flash[:success] = t(".subject_updated")
      redirect_to admin_subjects_path
    else
      render :edit
    end
  end

  def destroy
    if @subject.destroy
      flash[:success] = t(".subject_deleted")
      redirect_to request.referrer
    else
      flash[:error] = t(".subject_failed")
      redirect_to admin_subjects_path
    end
  end

  private

  def subject_params
    params.require(:subject).permit Subject::SUBJECT_PARAMS
  end

  def load_subject
    @subject = Subject.find_by id: params[:id]
    return if @subject
    flash[:error] = t(".subject_not_found")
    redirect_to admin_subjects_path
  end
end
