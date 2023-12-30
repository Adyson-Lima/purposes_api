class CreatePurposes < ActiveRecord::Migration[7.0]
  def change
    create_table :purposes do |t|
      t.string :decision
      t.string :why

      t.timestamps
    end
  end
end
