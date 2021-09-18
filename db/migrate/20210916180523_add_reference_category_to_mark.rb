class AddReferenceCategoryToMark < ActiveRecord::Migration[6.1]
  def change
    add_reference :marks, :category, null: false, foreign_key: true
  end
end
