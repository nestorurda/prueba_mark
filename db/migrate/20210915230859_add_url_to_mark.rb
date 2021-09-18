class AddUrlToMark < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :url, :string
  end
end
