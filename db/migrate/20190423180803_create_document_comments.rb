class CreateDocumentComments < ActiveRecord::Migration[5.2]
  def change
    create_table :document_comments do |t|
      t.integer :document_id
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :file

      t.timestamps
    end
  end
end
