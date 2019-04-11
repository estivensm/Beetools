class CreateJoinTableFieldDocumentType < ActiveRecord::Migration[5.2]
  def change
    create_join_table :fields, :document_types do |t|
      # t.index [:field_id, :document_type_id]
      # t.index [:document_type_id, :field_id]
    end
  end
end
