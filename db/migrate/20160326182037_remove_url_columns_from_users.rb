class RemoveUrlColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :github_url
    remove_column :users, :linked_in_url
  end
end
