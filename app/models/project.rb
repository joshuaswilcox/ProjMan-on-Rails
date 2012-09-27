class Project < ActiveRecord::Base
	has_many :tasks, :dependent => :destroy
  attr_accessible :name, :body, :due_date
end
