class AddContentToHomes < ActiveRecord::Migration[7.1]
  def change
    add_column :homes, :content, :string
  end
end
