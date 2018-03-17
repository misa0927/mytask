class Project < ActiveRecord::Base
  validates :title, :content,presence: true
  enum status: {incomplete: 0, completed: 1 }

end
