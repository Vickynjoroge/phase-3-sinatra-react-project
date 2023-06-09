class User < ActiveRecord::Base
    belongs_to :product
    has_many :reviews
    has_many :products,through: :reviews

    def self.get_user_name(id)
    user = User.find_by(id: user_id)
    user ? user.name : "User not found"
  end
end