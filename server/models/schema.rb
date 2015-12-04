# encoding: UTF-8
class Member
  include DataMapper::Resource

  property :id, Serial
  property :fname, String
  property :lname, String
  property :user_name, String
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

class Activity
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :descriptions, String
  property :seller_id, Integer
  property :price, Decimal
  property :created_ts, DateTime
  property :modified_ts, DateTime
  property :price_unit, Integer
  property :from_ts, DateTime
  property :to_ts, DateTime
  property :max_person, Integer
  property :available, Boolean
  property :active, Boolean
  property :address, String
  property :city_id, Integer
  property :photo_url, String
end
