class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.text :header
      t.text :footer
      t.string :logo
      t.string :ubication_logo
      t.integer :proces_id
      t.string :coding_type
      t.string :coding
      t.integer :document_type_id
      t.integer :user_id
      t.integer :user_create_id
      t.integer :user_review_id
      t.integer :user_aprove_id
      t.date :create_date
      t.date :review_date
      t.date :aprove_date
      t.integer :version
      t.integer :review
      t.boolean :is_last
      t.boolean :state_review, default: false
      t.boolean :state_aprove, default: false
      t.boolean :finish_document
      t.string :document_state
      t.string :document_source
      t.integer :coutn
      t.string :document_file
      t.text :change_description 

      t.timestamps
    end
  end
end
