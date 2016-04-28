post "/results" do
  @results = generate_results
  if request.xhr?
    erb :_results, locals: {results: @results||=nil}, layout: false
  else
    erb :_results, locals: {results: @results||=nil}
  end
end
