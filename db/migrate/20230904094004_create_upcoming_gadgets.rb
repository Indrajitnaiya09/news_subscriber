class CreateUpcomingGadgets < ActiveRecord::Migration[6.0]
  def change
    create_table :upcoming_gadgets do |t|
      t.json :information

      t.timestamps
    end
  end
end
