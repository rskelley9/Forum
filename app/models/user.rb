class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable


  def forem_name
    email
  end

  def to_s
    email
  end

  def name
    username
  end

  # It also uses an optional forem_email method for displaying avatars using Gravatar. It defaults to email. If you don't have an email attribute on the model, define a new method:

  # def forem_email
  #   email_address
  # end


end
