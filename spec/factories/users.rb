FactoryBot.define do

  factory :user do
    nickname                   {"tanaka"}
    email                      {"kkk1111@gmail.com"}
    password                   {"Ka000000"}
    password_confirmation      {"Ka000000"}
    last_name                  {"田中"}
    first_name                 {"太郎"}
    last_name_kana             {"タナカ"}
    first_name_kana            {"タロウ"}
    birthdate_year             {2000}
    birthdate_month            {1}
    birthdate_day              {1}
    phone_number               {"08012345678"}
    authentication_code        {1234}
    address_last_name          {"田中"}
    address_first_name         {"太郎"}
    address_last_name_kana     {"タナカ"}
    address_first_name_kana    {"タロウ"}
    postal_code                {"111-1111"}
    prefecture                 {"北海道"}
    city                       {"熊本市"}
    block_number               {"北区1-1-1"}
    card_number                {12345678912345}
    card_expiration_date_year  {1}
    card_expiration_date_month {2019}
    card_security_code         {1234}
  end

end