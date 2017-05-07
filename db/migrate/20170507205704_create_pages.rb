class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :name
      t.text :body
      t.boolean :with_layout, default: true

      t.timestamps
    end
  end
end
