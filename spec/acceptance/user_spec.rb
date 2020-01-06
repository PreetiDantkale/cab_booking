require 'rails_helper'
require 'rspec_api_documentation/dsl'
# 
# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
#   it "is valid with valid attributes"
#   it "is not valid without a first name"
#   it "is not valid without a last name"
#   it "is not valid without a email"
#   it "is not valid without a password"
#
# end



resource "User" do
  get "/users" do
    example "show" do
      do_request

      expect(status).to eq 200
    end
  end
end
