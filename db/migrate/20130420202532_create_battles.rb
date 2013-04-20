class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.string :user_id
      t.string :friend_id
      t.string :category

      t.timestamps
    end
  end
end
