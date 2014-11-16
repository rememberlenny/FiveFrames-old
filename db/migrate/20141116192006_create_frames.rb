class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.attachment :character

      t.timestamps
    end
  end
end
