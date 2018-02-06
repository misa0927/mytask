class Project < ActiveRecord::Base
  validates :title, :content,presence: true
end
