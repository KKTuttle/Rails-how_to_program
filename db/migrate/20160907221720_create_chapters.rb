class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.column :name, :string

      t.timestamps
    end

    add_column :sections, :chapter_id, :integer
  end
end
