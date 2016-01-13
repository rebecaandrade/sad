class CreateStateCases < ActiveRecord::Migration
  def change
    create_table :state_cases do |t|
      t.string :state
      t.integer :punctuation

      t.timestamps null: false
    end
  end
end
