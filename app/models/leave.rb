class Leave < ApplicationRecord
  belongs_to :user
  has_many :user_leaves

  enum leave_type: {
    "sick": "sick",
    "casual": "casual",
    "holiday": "holiday",
    "unpaid": "unpaid",
  }
end
