class ChangeWordToEntryWord < ActiveRecord::Migration
  def change
    rename_column :thesaurus, :word, :name
  end
end
