class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  enum gender: {
    no_answer: 0,
    male: 1,
    female: 2
  }
end