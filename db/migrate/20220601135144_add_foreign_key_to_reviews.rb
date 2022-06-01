class AddForeignKeyToReviews < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :reviews, :restaurants
  end
end
