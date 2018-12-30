class CreateRcards < ActiveRecord::Migration[5.2]
  def change
    create_table :rcards do |t|
      t.integer :list_id
      t.string :word
      t.text :meaning

      t.timestamps
    end
  end
end
