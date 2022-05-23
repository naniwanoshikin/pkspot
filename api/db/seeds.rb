# 管理ユーザー
user1 = User.create!(
  name:  "Jason Pole",
  email: "example@railstutorial.org",
  password:              "foobar", # spec
  password_confirmation: "foobar",
  # admin: true,
  # address: '大阪城公園'
)

# ゲストユーザー
user2 = User.create!(
  name:  "ゲスト鈴木",
  email: "example-1@railstutorial.org",
  password:              "foobar",
  password_confirmation: "foobar",
  # address: '上汐町公園'
)

# 一般ユーザー n=0
28.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+2}@railstutorial.org"
  password = "password"
  User.create!(
    name:  name,
    email: email,
    password:              password,
    password_confirmation: password,
    # address: Faker::Address.city
    # https://github.com/faker-ruby/faker
  )
end

users = User.all
user3 = users[2]
user4 = users[3]
user5 = users[4]
user6 = users[5]
user7 = users[6]
user8 = users[7]