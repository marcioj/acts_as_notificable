class CreateNotificationsTable < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.text :locals
      t.string :template_name
      t.references :owner, index: true
      t.timestamps
    end
  end
end
