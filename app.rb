require "sinatra"

uses = 0

get "/" do
  erb :index, {}, uses: uses
end

post "/go" do
  system "heroku dyno:restart --app hackhour"
  (uses += 1).to_s
end
