class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  
  
 has_many :properties, dependent: :destroy

has_many :comments, dependent: :destroy

has_many :shots, dependent: :destroy
end
