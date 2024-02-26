class CreateSiteTags < ActiveRecord::Migration[7.1]
  def change
    create_table :site_tags do |t|
      t.belongs_to :site
      t.belongs_to :tag

      t.timestamps
    end
    add_index :site_tags, [:site_id, :tag_id], unique: true, name: "by_site_tag"
  end
end
