class CreateHealthProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :health_profiles do |t|
      t.date :birthday
      t.float :weight
      t.string :gender
      t.string :illness
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
