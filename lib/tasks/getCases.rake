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
  Case.create(eachCase)
end

puts "End"
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