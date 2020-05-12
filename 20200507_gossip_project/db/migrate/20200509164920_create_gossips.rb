class CreateGossips < ActiveRecord::Migration[6.0]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content
      t.references :user, index: true

      t.timestamps
    end
  end
end
