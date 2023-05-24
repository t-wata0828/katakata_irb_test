# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Insert user
unless User.exists?
  User.destroy_all
  User_MAX = 5
  insert_user = (1..User_MAX).map do |n|
    {
      name: "ユーザー 太郎#{n}",
      email: "user-#{}@sample.com",
      tel: "080-1234-#{n}00#{n}",
      gender: User.genders.values.sample,
    }
  end
  User.create!(insert_user)
end

# Insert article
unless Article.exists?
  Article.destroy_all
  ARTICLE_MAX = 10
  USER_ID_LIST = User.pluck(:id)
  insert_article = (1..ARTICLE_MAX).map do |n|
    {
      user_id: USER_ID_LIST.sample,
      title: "タイトル-#{n}",
      body: "本文#{n}を入力する"
    }
  end
  Article.create!(insert_article)
end
