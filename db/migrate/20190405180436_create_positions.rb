class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :name
      t.text :description
      t.integer :admin_user
      t.integer :user_id
      t.integer :proceso_id

      t.timestamps
    end
  end
end
