class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|

      t.string :firstname
      t.string :lastname
      t.string:email
      t.integer :contactno

      t.timestamps
    end
  end
end
