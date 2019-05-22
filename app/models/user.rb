# frozen_string_literal: true

class User < ApplicationRecord

  has_many :tasks 
  acts_as_messageable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def mailboxer_email(object)
    email
  end
end
