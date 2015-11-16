# encoding: utf-8
get '/' do 
	File.read "#{Dir.pwd}/app/login/login.html"
end