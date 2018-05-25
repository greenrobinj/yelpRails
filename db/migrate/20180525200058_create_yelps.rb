class CreateYelps < ActiveRecord::Migration[5.2]
  def change
    create_table :yelps do |t|
      t.string :name
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
