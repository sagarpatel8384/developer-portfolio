class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :github_url
      t.string :linked_in_url
      t.timestamps null: false
    end
  end
end
