class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :battle_id
      t.string :cloud_url

      t.timestamps
    end
  end
end
