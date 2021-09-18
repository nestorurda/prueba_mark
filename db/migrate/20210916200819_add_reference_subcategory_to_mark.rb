class AddReferenceSubcategoryToMark < ActiveRecord::Migration[6.1]
  def change
    add_reference :marks, :subcategory, null: false, foreign_key: true
  end
end
