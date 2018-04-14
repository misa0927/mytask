class Project < ActiveRecord::Base
  validates :title, :content,presence: true
  enum status: {incomplete: 0, completed: 1 }
  validates :limit,presence: true
  validates :status, inclusion: {in: Project.statuses.keys}

  def toggle_status!
    if incomplete?
      completed!
    else
      incomplete!
    end
  end
end
