class Api::TutorsController < ApplicationController
  respond_to :json

  def index
    respond_with Tutor.all
  end

end
