class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :state
      t.boolean :required
      t.string :form
      t.integer :admin_user
      t.integer :user_id

      t.timestamps
    end
  end
end
