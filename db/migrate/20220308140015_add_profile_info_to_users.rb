class AddProfileInfoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :age, :integer
    add_column :users, :dob, :date
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
  end
end
