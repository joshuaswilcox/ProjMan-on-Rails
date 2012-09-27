class Note < ActiveRecord::Base
  attr_accessible :body, :group_id, :name
end
