require "sinatra"
require 'json'
require 'net/http'

post '/message' do
  username_url = "https://api.github.com/users/#{params[:Body]}"
  resp = Net::HTTP.get_response(URI.parse(username_url))
  result = JSON.parse(resp.body)
  p result

  content_type 'text/xml' 
  "<Response>
    <Message>#{result['name']} is on GitHub and has #{result['followers']} followers!</Message>
  </Response>"
end

# Lets build an application in which:
#   1. you send a message with a github username
# #   2. you get a reply with the number of followers and when he signed up
# user = api.github.com/users/#{username}
# user["followers"]