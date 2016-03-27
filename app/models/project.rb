class Project < ActiveRecord::Base
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :project_tags
  has_many :tags, through: :project_tags
  has_many :project_categories
  has_many :categories, through: :project_categories
  has_many :comments
  accepts_nested_attributes_for :categories
  validates :title, :repo_url, presence: true
end
