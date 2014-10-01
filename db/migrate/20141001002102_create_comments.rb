class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.datetime :created_at
      t.references :user, index: true
      t.references :entry, index: true

      t.timestamps
    end
  end
end
