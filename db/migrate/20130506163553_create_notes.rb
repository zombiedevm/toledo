class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :titulo
      t.text :avance

      t.timestamps
    end
  end
end
