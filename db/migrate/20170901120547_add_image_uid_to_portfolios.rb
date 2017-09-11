class AddImageUidToPortfolios < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :image_uid, :string
  end
end
