class Category < ActiveRecord::Base
  has_many :stories
  has_many :story_parts

  validates_presence_of :name
end
