class AddRateToPostComments < ActiveRecord::Migration[6.1]
  def change
    add_column :post_comments, :rate, :integer
  end
end
