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
  else
    erb :_results, locals: {results: @results||=nil}  
  end
end

get "/donuts" do
	if request.xhr?
    @results = Result.last
		erb :_donuts, locals: {results: @results||=nil}, layout: false
  else
    erb :_donuts, locals: {results: @results||=nil}
	end
end

get "/drinks" do
  if request.xhr?
    @results = Result.last
    erb :_drinks, locals: {results: @results||=nil}, layout: false
  else
    erb :_drinks, locals: {results: @results||=nil}
  end
end

get "/fb" do
  if request.xhr?
    @results = Result.last
    erb :_fb, locals: {results: @results||=nil}, layout: false
  else
    erb :_fb, locals: {results: @results||=nil}  
  end
end

get "/sleeping" do
  if request.xhr?
    @results = Result.last
    erb :_sleeping, locals: {results: @results||=nil}, layout: false
  else
    erb :_sleeping, locals: {results: @results||=nil}  
  end
end

get "/heart" do
  if request.xhr?
    @results = Result.last
    erb :_heart, locals: {results: @results||=nil}, layout: false
  else
    erb :_heart, locals: {results: @results||=nil}
  end
end

get "/rickroll" do
  if request.xhr?
	  erb :rickroll, layout: false
  end
end