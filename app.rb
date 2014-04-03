require 'octokit'
require "sinatra"
require 'json'
require 'net/http'

post '/message' do
  # username_url = "https://api.github.com/users/#{params[:Body]}
  # resp = Net::HTTP.get_response(URI.parse(username_url))
  # result = JSON.parse(resp.body)

  # short cut for the above
  user = Octokit.user params[:Body]

  content_type 'text/xml' 
  "<Response>
    <Message>#{user.name} is on GitHub and has #{user.followers} followers!</Message>
  </Response>"
end

post '/call' do
  user = Octokit.user params[:Body]

  content_type 'text/xml' 
  "<Response>
    <Message>#{user.name} is on GitHub and has #{user.followers} followers!</Message>
  </Response>"
end