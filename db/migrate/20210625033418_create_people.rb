class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
