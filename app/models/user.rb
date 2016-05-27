class User < ActiveRecord::Base
	has_many :blackout_poems
	has_many :magnet_poems
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def login=(login)
    @login = login
  end

  def login
    @login || self.username || self.email
  end

end
