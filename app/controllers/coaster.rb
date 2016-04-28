post "/results" do
  @results = generate_results
  erb :'results'
end

get "" do

end

