class ApplicationController < Sinatra::Base 
  attr_accessor :name, :breed, :age

  def Dog.initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
  end

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end
