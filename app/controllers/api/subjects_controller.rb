class Api::SubjectsController < ApplicationController
  respond_to :json

  def index
    render json: subjects
  end

  private

  def subjects
    SUBJECTS.map.with_index { |subject, i| { name: subject, id: i+1 } }
  end

end
