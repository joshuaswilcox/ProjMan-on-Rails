class Task < ActiveRecord::Base
  attr_accessible :browser_version, :due_date, :name, :notes, :priority_id, :project_id, :status_id
end
