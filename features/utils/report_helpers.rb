require 'json'

# Report Helpers
class ReportHelpers
  def self.delete_failed_tests
    puts "===== ReportHelpers loading...... ====="
#    binding.pry
    file_list = Dir['*.json']
    file_list.each do |json_file_name|
      if File.file?(json_file_name)
        failed_scenario = []
        file = File.read(json_file_name)
        unless file.empty?
          json = JSON.parse(file)
          json.each do |scenario|
            scenario['elements'].each do |element|
              element['steps'].each do |step|
                if step['result']['status'] == 'failed'
                  puts "===== Removed scenario: #{element['name']} ====="
                  failed_scenario << scenario
                end
              end
            end
          end
          new_json = json - failed_scenario
          File.open(json_file_name, 'w') do |f|
            f.write(new_json.to_json)
          end
        end
      else
        puts "===== Log of execution: #{[json_file_name]} not found! ====="
      end
    end
  end
end
