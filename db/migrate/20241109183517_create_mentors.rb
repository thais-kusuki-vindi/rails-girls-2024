class CreateMentors < ActiveRecord::Migration[7.2]
  def change
    create_table :mentors do |t|
      t.string :name
      t.string :email
      t.text :skills

      t.timestamps
    end
  end
end
