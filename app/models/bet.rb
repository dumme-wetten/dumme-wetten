# frozen_string_literal: true
class Bet < ApplicationRecord
  has_many :goals
  has_many :participants
end
