# encoding: UTF-8
class Member
  include DataMapper::Resource

  property :id,         Serial
  property :fname,      String
  property :lname,   String
  property :user_name,   String
  property :email, Text
  property :created_ts, DateTime
  property :modified_ts, DateTime
  property :password, String
  property :token, String
  property :country_id, Integer
  property :city, String
  property :photo_url, Text, :lazy => false 
  property :state_id, Integer
end