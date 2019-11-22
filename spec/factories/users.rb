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
  end

  factory :another_user do
    nickname                   {"yamada"}
    email                      {"ooo1111@gmail.com"}
    password                   {"Ka000000"}
    password_confirmation      {"Ka000000"}
    last_name                  {"山田"}
    first_name                 {"太郎"}
    last_name_kana             {"ヤマダ"}
    first_name_kana            {"タロウ"}
    birthdate_year             {2000}
    birthdate_month            {1}
    birthdate_day              {1}
    phone_number               {"08012345678"}
    authentication_code        {1234}
    address_last_name          {"山田"}
    address_first_name         {"太郎"}
    address_last_name_kana     {"ヤマダ"}
    address_first_name_kana    {"タロウ"}
    postal_code                {"111-1111"}
    prefecture                 {"北海道"}
    city                       {"熊本市"}
    block_number               {"北区1-1-1"}
  end

end