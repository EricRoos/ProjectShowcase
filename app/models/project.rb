class Project < ApplicationRecord
  include MeiliSearch::Rails

  has_many :requirements, dependent: :destroy
  belongs_to :creator, class_name: 'User'
  validates_presence_of :title
  has_rich_text :description
  has_many_attached :documents

  meilisearch do
    attribute :title
    attribute :tags
  end

  def tags
    ['rails','foo', 'bar']
  end
end
