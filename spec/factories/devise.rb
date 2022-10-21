FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'test@user.com' }
    password { 'mypassword' }
    name { 'Joy' }
    created_at { '2022-10-13 15:41:55.526835' }
    # Add additional fields as required via your User model
  end

  factory :category do
    id { 1 }
    name { 'Food' }
    icon { 'family-icon.png' }
    user_id { 1 }
    total { 0 }
  end

  factory :expenditure do
    id { 1 }
    name { 'Pizza' }
    amount { 10 }
    user_id { 1 }
    category_id { 1 }
  end

  factory :category_expenditure do
    id { 1 }
    category_id { 1 }
    expenditure_id { 1 }
  end
end
