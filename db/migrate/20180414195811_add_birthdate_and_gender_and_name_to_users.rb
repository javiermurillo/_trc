class AddBirthdateAndGenderAndNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date, default: Date.today
    add_column :users, :is_female, :boolean, default: true
    add_column :users, :name, :string, force: true
  end
end
