class AddColumnToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :desc, :string
  end
end
