class Project < ApplicationRecord
  include MeiliSearch::Rails

  has_many :requirements, dependent: :destroy
  belongs_to :creator, class_name: 'User'
  validates_presence_of :title
  has_rich_text :description
  has_many_attached :documents
  acts_as_taggable_on :tags

  meilisearch do
    attribute :title
    attribute :tag_list
  end

end
