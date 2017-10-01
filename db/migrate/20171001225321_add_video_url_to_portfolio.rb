class AddVideoUrlToPortfolio < ActiveRecord::Migration[5.1]
  def change
    add_column :portfolios, :video_url, :string
  end
end
