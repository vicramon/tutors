Fabricator :tutor do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Internet.email }
  phone { Faker::PhoneNumber.phone_number }
  bio { Faker::Lorem.paragraphs[0] }

  subjects do
    SUBJECTS.sample(4)
  end

end
