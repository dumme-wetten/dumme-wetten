# frozen_string_literal: true
class CreateBets < ActiveRecord::Migration[5.0]
  def change
    create_table :bets do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
