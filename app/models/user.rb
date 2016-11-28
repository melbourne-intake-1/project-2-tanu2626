class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :products
has_many :pins
         validates :name, presence: true
         after_create :create_a_customer

         def create_a_customer
         	token = self.stripe_card_token

         	customer = Stripe::Customer.create(
  				:card => token,
  				:plan => 120,
  				:email => self.email

        )
      end
    end
