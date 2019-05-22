class RenameReviewColumn < ActiveRecord::Migration[5.2]
  def change
   rename_column :reviews, :comment, :content
  end
end
