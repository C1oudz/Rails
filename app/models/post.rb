class Post < ApplicationRecord
    has_many :comments
    validates :title, presence: true, length: {minimum: 5}
    validates :body, presence: true, length: {minimum: 5}   
    validates :author, presence: true, length: {minimum: 5}, format: { with: /\A[\p{L}]+\z/,
    message: "Вводите только буквы" }
    validates :age, numericality: { only_integer: true, message: "Возраст должен состоять из цифр"  }
end