class CreateProjectsUsers < ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
