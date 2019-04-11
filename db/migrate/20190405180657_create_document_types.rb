class CreateDocumentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :document_types do |t|
      t.string :name
      t.text :description
      t.boolean :file
      t.string :prefix
      t.boolean :responsible

      t.timestamps
    end
  end
end
