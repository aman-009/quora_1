class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.references :user, index: true, foreign_key: true #means answer table will have a coloumn for a foreign key user which is a primary key for user table
      t.references :question, index: true, foreign_key: true # by the help of these foreignkey we will be able to tell which answer belong to which
      t.timestamps null: false
    end
  end
end
