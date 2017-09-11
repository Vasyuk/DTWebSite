class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :about
      t.string :typeOfImage

      t.timestamps
    end
  end
end
