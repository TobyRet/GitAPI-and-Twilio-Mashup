require "sinatra"

post '/message' do
  content_type 'text/xml'
  "<Response>
    <Message>This works!</Message>
  </Response>"
end