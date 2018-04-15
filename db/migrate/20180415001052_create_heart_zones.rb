class CreateHeartZones < ActiveRecord::Migration[5.2]
  def change
    create_table :heart_zones do |t|
      t.integer :maxhr, default: 195, force: true
      t.integer :rhravg, default: 60
      t.boolean :illness, default: false
      t.boolean :drugs, default: false
      t.integer :age, default: 25
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end