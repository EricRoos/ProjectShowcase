class Project < ApplicationRecord
  has_many :requirements, dependent: :destroy
  belongs_to :creator, class_name: 'User'
  validates_presence_of :title
  has_rich_text :description
  has_many_attached :documents
end
