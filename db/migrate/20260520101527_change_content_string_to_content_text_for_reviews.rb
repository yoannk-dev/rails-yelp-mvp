class ChangeContentStringToContentTextForReviews < ActiveRecord::Migration[8.1]
  def change
    change_column :reviews, :content, :text
  end
end
