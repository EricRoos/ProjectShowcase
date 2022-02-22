class Project < ApplicationRecord
  has_many :requirements
  validates_presence_of :title
end
