class CreateProcesos < ActiveRecord::Migration[5.2]
  def change
    create_table :procesos do |t|
      t.string :name
      t.text :description
      t.integer :admin_user
      t.integer :user_id
      t.string :proces_type
      t.string :prefix

      t.timestamps
    end
  end
end
