class User < ApplicationRecord
  has_many :requests
  has_many :notes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

 def timeout_in
    if self.active == true
      30.minutes
    elsif self.active == false
      0.seconds
    end
 end
end
