# frozen_string_literal: true
class Participant < ApplicationRecord
  has_many :bets
end
