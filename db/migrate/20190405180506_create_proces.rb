class CreateProces < ActiveRecord::Migration[5.2]
  def change
    create_table :proces do |t|
      t.string :name
      t.text :description
      t.integer :admin_user
      t.integer :user_id
      t.string :proces_type

      t.timestamps
    end
  end
end
