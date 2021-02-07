class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :purpose
      t.string :activity_level
      t.float :height
      t.float :body_mass
      t.float :body_fat_percent

      t.timestamps
      t.index :email, unique: true
    end
  end
end
