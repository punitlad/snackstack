class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  validate :validates_thoughtworks_email

  def validates_thoughtworks_email
    return unless email
    if !email.end_with?("@thoughtworks.com")
      errors[:email] << "is not a thoughtworks email!"
    end 

  end 
end
