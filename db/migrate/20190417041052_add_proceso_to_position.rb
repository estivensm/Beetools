class AddProcesoToPosition < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :proceso_id, :integer
  end
end
