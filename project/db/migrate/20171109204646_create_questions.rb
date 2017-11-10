class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.text :alternatives
      t.string :status
      t.integer :id
      t.integer :year 
      
      t.timestamps
    end
  end
end
