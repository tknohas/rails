class RenameEndColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :end, :end_date
  end
end
