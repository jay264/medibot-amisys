require 'json'
file = File.read ('DirectoryChangeReport_MtCarmelHP_01032017_02485606.json')
data_hash = JSON.parse(file)

@logfile = File.open("processed_json_parse_log.txt", "w")
@logfile.write "\n" + "Opened JSON file" + "\n"

data_hash.each do |provider|
  puts provider
  puts "\n"
  @logfile.write "\n" + provider.to_s
end
