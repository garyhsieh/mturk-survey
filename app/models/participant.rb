class Participant < ActiveRecord::Base
  validates_presence_of :survey_code  
  attr_accessible :survey_code, :worker_id, :hit_id, :assignment_id, :ip_addr, :cond

  CONDITION_URLS = ["https://catalyst.uw.edu/webq/survey/garyhs/216060",
  					"https://catalyst.uw.edu/webq/survey/garyhs/216059",
  					"https://catalyst.uw.edu/webq/survey/garyhs/216057",
  					"https://catalyst.uw.edu/webq/survey/garyhs/216058",
  					"https://catalyst.uw.edu/webq/survey/garyhs/214100"]
end
