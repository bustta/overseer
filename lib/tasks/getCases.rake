desc "Get cases from open data of New Taipei City."
task :getOverseerCases => :environment do
puts "Start"

puts "Count of Cases: #{Case.count}"


format = "json";
filter = "&$orderby=CaseStart%20desc"

responseCases = NTPCCase.new(format, filter).getData
jsonCases = JSON.parse(responseCases)

# Case.first().destroy();

jsonCases.each do |eachCase|
  #eachCase = jsonCases[19]

  digsite = eachCase['DigSite']
  responseCases = GoogleGeo.new(digsite).getData
  jsonObj = JSON.parse(responseCases.body)
  info = jsonObj['results']
  if (info[0].has_key?("geometry") &&
      info[0]['geometry'].has_key?("location") &&
      info[0]['geometry']['location'].has_key?("lat"))
    lat = info[0]['geometry']['location']['lat']
    lng = info[0]['geometry']['location']['lng']

    eachCase['lat'] = lat
    eachCase['lng'] = lng
  end

  Case.create(eachCase)
end



puts "End"
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


class NTPCCase
  include HTTParty

  def initialize(format, filter)
    dataSite = 'http://data.ntpc.gov.tw/NTPC/od/data/api/IMC14/?$format='
    @requestUrl = dataSite << format << filter
  end

  def getData
    NTPCCase.get(@requestUrl)
  end

end