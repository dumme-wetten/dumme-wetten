# frozen_string_literal: true
class AddDeleteFlagToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :deleted, :bool, default: false, after: :name
    add_index :users, :deleted
  end
end
