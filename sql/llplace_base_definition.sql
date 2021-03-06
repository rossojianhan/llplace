drop database llplace;
create database llplace;

DROP SEQUENCE tag_seq;
CREATE SEQUENCE tag_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE tags;
CREATE TABLE tags (
  id integer DEFAULT nextval('tag_seq'::regclass) NOT NULL,
  name text NOT NULL
);
DROP TABLE tag_map;
CREATE TABLE tag_map (
  tag_id integer,
  activity_id integer
);

DROP SEQUENCE member_seq;
CREATE SEQUENCE member_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE members;
CREATE TABLE members (
	id integer DEFAULT nextval('member_seq'::regclass) NOT NULL,
 	fname character varying(32),
  lname character varying(32),
  user_name character varying(255),
  email character varying(255) NOT NULL,
  created_ts timestamp with time zone NOT NULL,
  modified_ts timestamp with time zone NOT NULL,
  password character varying(64) NOT NULL,
  token character varying(255),
	country_id integer,
  city character varying(64),
  photo_url text,
  state_id integer
);

DROP SEQUENCE activity_seq;
CREATE SEQUENCE activity_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE activities;
CREATE TABLE activities (
  id integer DEFAULT nextval('activity_seq'::regclass) NOT NULL,
  name text NOT NULL,
  descriptions text,
  seller_id integer NOT NULL,
  created_ts timestamp with time zone NOT NULL,
  modified_ts timestamp with time zone NOT NULL,
  price numeric NOT NULL,
  price_unit integer NOT NULL,
  from_ts timestamp with time zone NOT NULL,
  to_ts timestamp with time zone NOT NULL,
  max_person integer,
  available boolean,
  active boolean,
  address text,
  city_id integer,
  photo_url text
);


DROP SEQUENCE IF EXISTS activity_photos_seq;
CREATE SEQUENCE activity_photos_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

DROP TABLE IF EXISTS activity_photos;
CREATE TABLE activity_photos (
  id integer DEFAULT nextval('activity_photos_seq'::regclass) NOT NULL,
  activity_id integer,
  photo_url text
);

DROP SEQUENCE city_seq;
CREATE SEQUENCE city_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE city;
CREATE TABLE city (
  id integer DEFAULT nextval('city_seq'::regclass) NOT NULL,
  name text NOT NULL
);

DROP SEQUENCE IF EXISTS purchase_seq;
CREATE SEQUENCE purchase_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE IF EXISTS purchases;
CREATE TABLE purchases (
  id integer DEFAULT nextval('purchase_seq'::regclass) NOT NULL,
  activity_id integer,
  buyer_id integer,
  start_date timestamp with time zone NOT NULL,
  end_date timestamp with time zone NOT NULL,
  payment_date timestamp with time zone NOT NULL,
  duration integer,
  payment_total numeric,
  currency_type_id integer,
  status_id integer,
  payment_method_id integer
);


DROP SEQUENCE IF EXISTS chat_seq;
CREATE SEQUENCE chat_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE IF EXISTS chats;
CREATE TABLE chats (
  id integer DEFAULT nextval('chat_seq'::regclass) NOT NULL,
  activity_id integer,
  buyer_id integer,
  status integer
);


DROP SEQUENCE IF EXISTS message_seq;
CREATE SEQUENCE message_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id integer DEFAULT nextval('chat_seq'::regclass) NOT NULL,
  chat_id integer,
  sender_id integer,
  contents text,
  seen boolean
);

DROP TABLE IF EXISTS payment_method;
CREATE TABLE payment_method (
  id integer NOT NULL,
  payment_type character varying(8)
);
