class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :location
      t.string :gender
      t.date :birthday
      t.string :profile_img_url

      t.timestamps
    end
  end
end
