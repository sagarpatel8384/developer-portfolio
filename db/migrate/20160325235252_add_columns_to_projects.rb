class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :repo_url, :string
    add_column :projects, :host_url, :string
  end
end
