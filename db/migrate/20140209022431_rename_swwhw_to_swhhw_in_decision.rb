class RenameSwwhwToSwhhwInDecision < ActiveRecord::Migration
  def up
  	rename_column :decisions, :swwhw, :swhhw 
  end

  def down
  	rename_column :decisions, :swhhw, :swwhw
  end
end
