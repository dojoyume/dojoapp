class AddOmniauthToUsers < ActiveRecord::Migration
  def change
    add_column :salons, :provider, :string
    add_column :salons, :uid, :string
  end
end

