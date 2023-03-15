class UserLeave < ApplicationRecord
  belongs_to :user
  belongs_to :leave

  enum leave_status: {
    "accepted": "accepted",
    "unrejected": "unrejected",
    "rejected": "rejected",

  }


end




