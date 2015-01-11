class Story < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :votes, dependent: :destroy

  validates_presence_of :category
  validates :sentence,
    uniqueness: true,
    presence: true
  validates_presence_of :user

end
