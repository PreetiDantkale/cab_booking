FactoryBot.define do
  factory :user , class: User do
    first_name  { "Kriti" }
    last_name   { "Verma" }
    email_id  { "kriti@gmail.com" }
  end
end
