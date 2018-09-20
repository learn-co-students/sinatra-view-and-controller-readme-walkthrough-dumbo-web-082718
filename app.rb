require_relative 'config/environment'

class App < Sinatra::Base
  # this route renders the reverse page by using erb to direct the user
  # to the views where the reverse layout is located
  get '/reverse' do
    erb :reverse
  end

# ???
#
post '/reverse' do
  # puts params
  #
  # erb :reversed

  original_string = params["string"]
  @reversed_string = original_string.reverse
  erb :reversed
end

  # this route renders the friends.erb page
  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

    erb :friends
  end
end
