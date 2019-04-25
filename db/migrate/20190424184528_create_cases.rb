class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :assigned_to
      t.string :gender_preference
      t.string :type
      t.string :content
      t.boolean :activated, default: false

      t.timestamps
    end
  end
end
