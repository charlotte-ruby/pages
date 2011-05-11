class CreatePagesTable < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.string :cached_slug

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end