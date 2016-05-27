;class User < ActiveRecord::Base
	has_many :blackout_poems
	has_many :magnet_poems
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
