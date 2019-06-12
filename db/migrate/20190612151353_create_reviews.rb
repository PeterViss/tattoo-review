class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :artist_id
      t.integer :client_id
      t.integer :stars

      t.timestamps
    end
  end
end
