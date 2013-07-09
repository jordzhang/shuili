# encoding: utf-8

require "sinatra"
require "sinatra/reloader" if development?

set :public_folder, File.dirname(__FILE__) + '/static'
set :bind, '0.0.0.0'

get '/' do
  @datas = []
  @datas << Data1.new({id: :a, name: '水库1', time: '07-07 12:00', top: 100, left: 90, level: 19, status: 0})
  @datas << Data1.new({id: :a, name: '水库2', time: '07-07 12:00', top: 300, left: 500, level: 19, status: 0})
  @datas << Data1.new({id: :a, name: '水库3', time: '07-07 12:00', top: 500, left: 500, level: 19, status: 0})
  @datas << Data1.new({id: :a, name: '水库4', time: '07-07 12:00', top: 400, left: 300, level: 19, status: 0})
  erb :index
end

get '/m1' do
  return 'm1'
end
get '/m2' do
  return 'm2'
end

get '/a' do
  return "a";
end

class Data1
  attr_reader :id, :name, :time, :top, :left, :level, :status
  def initialize(options={})
    @id = options[:id]
    @name = options[:name]
    @time = options[:time]
    @top = options[:top]
    @left = options[:left]
    @level = options[:level]
    @status = options[:status]
  end
end
