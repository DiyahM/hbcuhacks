class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.text :desc
      t.text :prizes
      t.text :address

      t.timestamps
    end
  end
end
