class Team < ActiveRecord::Base
  attr_accessible :project_template_id, :user_id, :meeting_location, :meeting_time

  validates_presence_of :user_id
  
  # Model associations
  belongs_to :project_template  # Foreign key
  belongs_to :user              # Foreign key
  has_one    :project  			# Foreign key
  has_many   :team_memberships
end