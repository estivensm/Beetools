class CreateProcessMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :process_maps do |t|
      t.string :file
      t.integer :admin_user
      t.integer :user_id
      t.integer :version

      t.timestamps
    end
  end
end
