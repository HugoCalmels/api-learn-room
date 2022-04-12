class Course < ApplicationRecord

  include ActiveModel::Serializers::JSON

  has_many :teams

  def attributes
    {
      'id': nil,
      'title': nil,
      'description': nil,
      'image_url': nil,
      'link_to_course': nil,
      'teams': nil
    }
  end

end
