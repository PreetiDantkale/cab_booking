class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A\w+[.]*\w+[@]{1}[a-zA-Z]+[.][a-zA-Z]+[.]*[a-zA-Z]*\Z/
      record.errors[attribute] << (options[:message] || "is not a valid email")
    end
  end
end

class User < ApplicationRecord 
  #hello

  validates :first_name , :last_name , :contact_number ,:email_id ,:password , presence: true
  validates :contact_number ,uniqueness: true
  validates :email_id ,uniqueness: true
  validates :contact_number, numericality: { message: "integer must be given please" }
  validates :contact_number, length: { is: 10 , message: "Invalid Length" }
  validates :contact_number, numericality: { only_integer: true }
  #validates :email_id, format: { with: /\A\w+[.]*\w+[@]{1}[a-zA-Z]+[.][a-zA-Z]+[.]*[a-zA-Z]*\Z/,
    #message: "is Invalid" }
  validates :email_id , email: true
  validates_with EmailValidator ,:attributes =>[:email_id]
  
  has_many :ride_requests
  has_one :role

  before_save do 
    self.first_name = self.first_name.titleize
  end

  def firstname
    first_name
  end
  
end
