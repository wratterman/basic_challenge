class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :number
      t.text :street
      t.text :city
      t.text :state
      t.text :zipcode
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
