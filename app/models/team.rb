class Team < ApplicationRecord

  include ActiveModel::Serializers::JSON

  belongs_to :course
  belongs_to :creator, class_name: "User"
  has_one :info, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions

  validates :name, length: { maximum: 40, minimum: 3}, presence: true
  validates :name, uniqueness: true

  after_create :set_creator_as_member
  after_create :set_infos

  def attributes
    {
      'id': nil,
      'name': nil,
      'start': nil,
      'intensity': nil,
      'creator': nil,
      'team_users': nil,
      'timezone': nil,
      'timezone_number': nil
    }
  end

  def team_users
    users = []
    self.users.each do |u|
      users << u
    end
    return users
  end

  private

  def set_creator_as_member
    Subscription.create(team: self, user: self.creator)
  end

  def set_infos
    Info.create(team: self)
  end

end
