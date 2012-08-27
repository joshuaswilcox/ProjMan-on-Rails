class Task < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	belongs_to :priority
	belongs_to :status
  attr_accessible :browser_version, :due_date, :due_date_time, :due_date_date, :name, :notes, :priority_id, :project_id, :status_id, :user_id
  
  # add the accessors for the two fields
  attr_accessor :due_date_date, :due_date_time

  # add some callbacks
  after_initialize :get_datetimes # convert db format to accessors
  before_validation :set_datetimes # convert accessors back to db format

  def get_datetimes
    self.due_date ||= Time.now  # if the published_at time is not set, set it to now

    self.due_date_date ||= self.due_date.to_date.to_s(:db) # extract the date is yyyy-mm-dd format
    self.due_date_time ||= "#{'%02d' % self.due_date.hour}:#{'%02d' % self.due_date.min}" # extract the time
  end

  def set_datetimes
    self.due_date = "#{self.due_date_date} #{self.due_date_time}:00" # convert the two fields back to db
  end  
end
