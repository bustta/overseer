desc "Get geometry infomation(latitude, longitude)."
task :getGeoInfoTask, [:address] => :environment do |t, args|
  p "getGeoInfoTask start."
  p args.address


  responseCases = GoogleGeo.new(args.address).getData
  #jsonInfo = responseCases.to_json
  #p responseCases.to_json
  jsonObj = JSON.parse(responseCases.body)
  info = jsonObj['results']
  lat = info[0]['geometry']['location']['lat']
  long = info[0]['geometry']['location']['lng']
  p "lat: #{lat}, lng: #{long}"
end

class GoogleGeo
  include HTTParty

  def initialize(address)
    dataSite = 'http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address='
    @requestUrl = dataSite << address
  end

  def getData
    GoogleGeo.get(URI.encode(@requestUrl))
  end

end


