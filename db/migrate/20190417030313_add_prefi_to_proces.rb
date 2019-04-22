class AddPrefiToProces < ActiveRecord::Migration[5.2]
  def change
    add_column :proces, :prefix, :string
  end
end
