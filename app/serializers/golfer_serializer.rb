class GolferSerializer < ActiveModel::Serializer
  attributes :id, :email, :status, :zipcode, :created_at, :username, :ready_to_play, :handicap

  def id
    object.slug
  end
end
