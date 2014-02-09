class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string :decision
      t.integer :mom
      t.integer :edu
      t.integer :xcurr
      t.integer :friends
      t.text :swwhw

      t.timestamps
    end
  end
end
