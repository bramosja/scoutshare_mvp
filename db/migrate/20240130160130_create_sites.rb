class CreateSites < ActiveRecord::Migration[7.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :description
      t.boolean :needs_permit
      t.string :notes

      t.timestamps
    end
  end
end
