require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students')

get '/hogwarts' do
 @students = Student.all()
 erb (:index) 
end

get '/hogwarts/new' do
 erb(:new)
end

post '/hogwarts' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end  

get '/hogwarts/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

post '/hogwarts/:id' do
  @student = Student.update(params)
  redirect to ("/hogwarts/#{params[:id]}")
end

post '/hogwarts/:id/delete' do
@student = Student.destroy(params[:id])
redirect to ('/hogwarts')
  end