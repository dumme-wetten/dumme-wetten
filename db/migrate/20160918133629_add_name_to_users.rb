class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, after: 'email'
    add_index(:users, :name, unique: true)
  end
end
