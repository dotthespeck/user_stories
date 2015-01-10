class Story < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  validates_presence_of :category
  validates_presence_of :sentence
  validates_presence_of :user
end