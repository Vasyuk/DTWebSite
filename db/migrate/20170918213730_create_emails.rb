class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :prenom
      t.string :email
      t.string :sujet
      t.string :texte

      t.timestamps
    end
  end
end
