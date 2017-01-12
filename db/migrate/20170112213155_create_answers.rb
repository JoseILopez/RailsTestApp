class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.q_id: :integer
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
