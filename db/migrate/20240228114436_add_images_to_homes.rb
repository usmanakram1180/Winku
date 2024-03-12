class AddImagesToHomes < ActiveRecord::Migration[7.1]
  def change
    add_column :homes, :images, :json
  end
end
