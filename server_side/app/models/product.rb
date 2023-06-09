class Product < ActiveRecord::Base
    belongs_to :user
    has_many :reviews
    has_many :users, through: :reviews
end