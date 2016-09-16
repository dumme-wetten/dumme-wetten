class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'

  STATUS_NEW_REQUEST = 0
  STATUS_ACCEPTED_REQUEST = 1
  STATUS_CANCELED_REQUEST = 2
end
