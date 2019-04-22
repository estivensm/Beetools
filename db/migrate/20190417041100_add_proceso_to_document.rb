class AddProcesoToDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :proceso_id, :integer
  end
end
