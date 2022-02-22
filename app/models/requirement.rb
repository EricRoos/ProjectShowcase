class Requirement < ApplicationRecord
  belongs_to :project
  has_rich_text :story
  validates_presence_of :story
end
