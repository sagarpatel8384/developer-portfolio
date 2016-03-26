class AddProfilesTable < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :location
      t.string :website_url
      t.string :status
      t.text :bio
      t.string :github_username
      t.string :linkedin_username
      t.string :twitter_username
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
