class CreateEditablePages < ActiveRecord::Migration
  def change
    create_table :editable_pages do |t|
      t.text :description

      t.timestamps
    end
  end
end
