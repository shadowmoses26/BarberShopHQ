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




get '/' do
	@barbers = Barber.order "created_at DESC"

	erb :index
	end