class Resubmit < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :worker_id, :hit_id, :assignment_id 
end
