class AddColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :reviews, :book_title, :string
  end
end
