class CreatePrescreens < ActiveRecord::Migration
  def change
    create_table :prescreens do |t|
      t.string :title

      t.timestamps
    end
  end
end
