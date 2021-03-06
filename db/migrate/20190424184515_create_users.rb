class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :gender
      t.integer :age
      t.string :bio
      t.integer :rating
      t.string :title
      t.string :img_url
      t.string :role, default: 'student'
      t.string :school, default: nil
      t.string :location, default: nil
      t.boolean :has_a_post, default: false

      t.timestamps
    end
  end
end
