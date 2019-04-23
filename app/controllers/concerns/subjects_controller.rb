class SubjectsController < ApplicationController
  def index; end

  private

  def load_subject
    @subject= Subject.find_by id: params[:id]
    return if (@course)
    flash[:danger] = t "not_found"
    render :index
  end
end
