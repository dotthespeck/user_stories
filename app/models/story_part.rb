class StoryPart < ActiveRecord::Base
  belongs_to :category
  belongs_to :part_type

  validates_presence_of :category
  validates_presence_of :part_type
  validates_presence_of :piece
end
