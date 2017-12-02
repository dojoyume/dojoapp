class AddColumnToPass < ActiveRecord::Migration
  def change
    add_column :passes, :image, :string
  end
end
