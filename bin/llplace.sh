#LLPlace schema
members {
  id:bigint
  fname:varchar:30
  lname:varchar:30
  user_name
  email:varchar:60
  created_ts
  modify_ts
  password_digest
  session_token
  city
  state
  country
}

activities {
  id
  name
  descriptions
  seller_id
  created_ts
  modify_ts
  price
  price_unit
  from_ts
  to_ts
  max_person:int
  available:boolean
  active:boolean
  address
  photo_url
}

activities_photos {
  id
  activity_id
  photo_url
}


purchases {
  id
  activity_id
  buyer_id
  start_date
  end_date
  payment_date
  duration
  payment_total
  currency_type_id
  status_id
  payment_method_id
}

ratings {
  purchase_id
  activity_id
  seller_rating
  seller_review
  buyer_rating
  buyer_review
}


chats {
  id
  activity_id
  buyer_id
  status
}

messages {
  id
  chat_id
  sender_id
  text
  seen:boolean
}

payment_method {
  id
  payment_type

}


addresses {
  line1
  line2
  city
  state
  zip
  country
  phone_number
  created_ts
  modified_ts
  activity_id
}

sessions {
  session_id
  data
  created_ts
  modified_ts
}

#install sinatra on Ubuntu 14.04
sudo apt-get update -y
sudo apt-get install ruby2.0 -y
sudo apt-get install ruby-dev -y
sudo gem install sinatra

#install ssh
sudo apt-get install openssh-client -y
sudo apt-get install openssh-server -y

#add user
sudo useradd -m -c "Jian Han" rosso  -s /bin/bash 
passwd rosso
#add it into sudoers

#install postgresql
sudo apt-get install postgresql-9.3 postgresql-server-dev-9.3 libpq-dev -y

#use postgresql
#/etc/postgresql/9.3/main
sudo -i -u postgres
psql 
CREATE DATABASE llplace;
CREATE USER llplace;
ALTER DATABASE llplace OWNER TO llplace;

ALTER USER llplace WITH PASSWORD 'LLplace007';



#dm-postgres-adapter
sudo apt-get install libpq-dev -y
sudo gem install dm-postgres-adapter

#isntall datamapper
sudo gem install data_mapper

#install git
sudo apt-get install git -y

#git clone llplace repo from github
git clone https://github.com/rossojianhan/llplace-web.git
git clone https://github.com/rossojianhan/llplace-server.git


#install apache
sudo apt-get install apache2
