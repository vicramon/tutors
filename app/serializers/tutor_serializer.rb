class TutorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :email, :bio, :raw_subjects

  def raw_subjects
    object.subjects.to_json.to_s
  end

end
