class Participant < ActiveRecord::Base
  validates_presence_of :survey_code  
  attr_accessible :survey_code, :worker_id, :hit_id, :assignment_id, :ip_addr, :cond

  CONDITION_URLS = ["http://www.surveygizmo.com/s3/1658339/mturk-survey",
  					"http://www.surveygizmo.com/s3/1658339/mturk_survey"]
end
