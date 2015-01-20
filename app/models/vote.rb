class Vote < ActiveRecord::Base
  belongs_to :story

  validates :user_id,
    presence: true,
    uniqueness: { scope: :story_id }
end
