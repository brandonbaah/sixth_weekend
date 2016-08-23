class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :word
      t.string :antonym
      t.string :synonym
      t.integer :thesaurus_id

      t.timestamps null: false
    end
  end
end
