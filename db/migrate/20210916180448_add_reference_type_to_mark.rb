class AddReferenceTypeToMark < ActiveRecord::Migration[6.1]
  def change
    add_reference :marks, :type, null: false, foreign_key: true
  end
end
