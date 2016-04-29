helpers do
  def generate_results
    request = Unirest.post 'https://life-left.p.mashape.com/time-left',
    headers: {
      "X-Mashape-Key" => ENV["MASHAPE_KEY"],
      "Content-Type" => "application/x-www-form-urlencoded",
      "Accept" => "application/json"
    },
    parameters: {
      "birth" => params[:birth],
      "gender" => params[:gender].downcase
    }
    data = request.body['data']
    results = Result.create({
      years: data['yearsLeft'],
      months: data['monthsLeft'],
      days: data['daysLeft'],
      hours: data['hoursLeft'],
      minutes: data['minutesLeft'],
      seconds: data['secondsLeft']
      })
    return results
  end
end
