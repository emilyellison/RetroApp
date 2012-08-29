class CreateRetros < ActiveRecord::Migration
  def change
    create_table :retros do |t|
      t.integer :sprint
      t.integer :team_id

      t.timestamps
    end
  end
end
