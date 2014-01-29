class AddQuestionsUsersTable < ActiveRecord::Migration
  def change
    create_table :questions_users do |t|
      t.belongs_to :question
      t.belongs_to :user
    end
    add_index :questions_users, :question_id
    add_index :questions_users, :user_id
  end
end
