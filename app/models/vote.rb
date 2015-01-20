class Vote < ActiveRecord::Base
  belongs_to :story, counter_cache: true

  validates :user_id,
    presence: true,
    uniqueness: { scope: :story_id }
end
