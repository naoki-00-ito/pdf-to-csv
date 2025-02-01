class CreatePdfs < ActiveRecord::Migration[7.0]
  def change
    create_table :pdfs do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
