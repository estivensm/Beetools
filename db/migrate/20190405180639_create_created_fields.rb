class CreateCreatedFields < ActiveRecord::Migration[5.2]
  def change
    create_table :created_fields do |t|
      t.text :content
      t.integer :document_id
      t.integer :field_id
      t.integer :admin_user
      t.integer :user_id

      t.timestamps
    end
  end
end
