class Project < ApplicationRecord
  has_many :requirements, dependent: :destroy
  validates_presence_of :title
end
