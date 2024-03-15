#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'rackup'


configure :development do
	#set :port, 5433
	set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'BarberShop', pool: 2, username: 'postgres', password: 'root', port: '5433'}
end

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end




get '/' do
	erb :index
end

get '/visit' do
	erb :visit
end

get '/contacts' do
	erb :contacts
end

post '/visit' do

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]



	erb "<h2> Cпасибо, вы записаны!</h2>"
end