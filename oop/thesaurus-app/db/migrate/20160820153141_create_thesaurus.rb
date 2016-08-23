class CreateThesaurus < ActiveRecord::Migration
  def change
    create_table :thesaurus do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
