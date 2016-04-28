post "/blank" do
  response = Unirest.post 'https://life-left.p.mashape.com/time-left',
    headers: {
      "X-Mashape-Authorization" => "q5f35sq9vmmsh70hgwXmfaMEXxNGp1rlBYAjsnJw0laK6MQzyg",
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters: {
      "birth" => params[:birth],
      "gender" => params[:gender]
    }
    puts response.code
    puts response.headers
    puts response.body
    puts response.raw_body
end

get "" do

end

