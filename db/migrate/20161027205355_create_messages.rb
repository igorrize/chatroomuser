class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :message
	  t.integer :room_id, index:true

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
