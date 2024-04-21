class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  after_create :create_cart_for_customer
  enum role: [:admin,:customer]

  private

  def create_cart_for_customer
    if self.customer? do 
      Cart.create(user_id: self.id)
    end
  end
end
