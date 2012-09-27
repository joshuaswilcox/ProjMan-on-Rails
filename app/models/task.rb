class Task < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	belongs_to :priority
	belongs_to :status
  attr_accessible :browser_version, :due_date, :name, :notes, :priority_id, :project_id, :status_id, :user_id
end
