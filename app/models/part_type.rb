class PartType < ActiveRecord::Base
  has_many :story_parts

  validates_presence_of :name
end
