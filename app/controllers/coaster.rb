post "/results" do
  @results = generate_results
  if request.xhr?
    erb :_results, locals: {results: @results||=nil}, layout: false
  else
    erb :_results, locals: {results: @results||=nil}
  end
end

get "/results" do
  @results = Result.last
  if request.xhr?
    erb :_results, locals: {results: @results||=nil}, layout: false
  end
end

get "/donuts" do
	if request.xhr?
    @results = Result.last
		erb :_donuts, locals: {results: @results||=nil}, layout: false
	end
end

get "/rickroll" do
  if request.xhr?
	  erb :rickroll, layout: false
  end
end