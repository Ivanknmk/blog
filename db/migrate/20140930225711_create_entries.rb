class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.references :user, index: true


      t.timestamps
    end
  end
end
