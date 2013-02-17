class Student < ActiveRecord::Base
  attr_accessible :email, :first_name, :github_name, :graduation_month, :graduation_year, :last_name, :linkedin_url, :major, :mobile, :profile_pic, :testimonial
end
