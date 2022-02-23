class Requirement < ApplicationRecord
  belongs_to :project
  has_rich_text :story
  validates_presence_of :story
  validates_presence_of :description
  has_many_attached :documents
end
