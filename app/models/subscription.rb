class Subscription < ApplicationRecord
  validate :validate_user_number
  validate :validate_user_uniqueness 
  belongs_to :team
  belongs_to :user

  private

  def validate_user_number
    team = self.team.users
    if team.length >= 5
      errors.add(:users, "This team is full.")
    end
  end

  def validate_user_uniqueness
    team = self.team.users
    emails = []
    team.each do |u|
      emails << u.email
    end
    if emails.include?(self.user.email)
      errors.add(:users, "You are already in this team.")
    end
  end

end
