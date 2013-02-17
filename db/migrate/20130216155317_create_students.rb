class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email
      t.string :profile_pic
      t.string :graduation_month
      t.integer :graduation_year
      t.string :major
      t.string :linkedin_url
      t.string :github_name
      t.text :testimonial

      t.timestamps
    end
  end
end
