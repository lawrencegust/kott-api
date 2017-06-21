class GolferSerializer < ActiveModel::Serializer
  attributes :id, :email, :status, :zipcode, :created_at, :username

  def id
    object.slug
  end
end
