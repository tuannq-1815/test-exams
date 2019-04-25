class AnswersController < ApplicationController
  def index
    @answers= Answer.list_answer(1)
  end

  private

end
