class User < ApplicationRecord 

  validates :first_name , :last_name , :contact_number ,:email_id ,:password , presence: true
  validates :contact_number ,uniqueness: true
  validates :contact_number, numericality: { message: "integer must be given please" }
  validates :contact_number, length: { is: 10 , message: "Invalid Length" }
  validates :contact_number, numericality: { only_integer: true }
  validates :email_id, format: { with: /\A\w+[.]*\w+[@]{1}[a-zA-Z]+[.][a-zA-Z]+[.]*[a-zA-Z]*\Z/,
    message: "is Invalid" }

  before_save do 
    self.first_name = self.first_name.titleize
  end
  
end
