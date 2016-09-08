$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'fileutils'
require 'features/utils/report_helpers.rb'


task :cleanup do
  puts "===== Deleting old reports html ====="
	FileUtils.rm_rf('reports')
	Dir.mkdir("reports")
  puts "===== Deleting old reports json ====="
	File.delete("execution_log.json") if File.exist?("execution_log.json")
	File.delete("execution_log_rerun.json") if File.exist?("execution_log_rerun.json")
  puts "===== Deleting old logs rerun ====="
	File.delete("cucumber_failures.txt") if File.exist?("cucumber_failures.txt")
	File.new("cucumber_failures.txt", "w")
end

task :run_all do
  puts "===== Executing All Tests ======"
  system "cucumber features/* -p all_tags -p default -p formater -p reports"
	if File.size("cucumber_failures.txt") == 0
		puts "======= All successfully executed tests!!! ======="
	else
		puts "======= All running tests, but with errors ======="
	end
end

task(:delete_failed_tests) do
	ReportHelpers::delete_failed_tests if File.size("cucumber_failures.txt") != 0
end

task :rerun do
	if File.size("cucumber_failures.txt") != 0
		puts "===== Re-running Failed Scenarios ====="
		system "cucumber @cucumber_failures.txt -p rerun -p formater"
	end
end


task :all => [ :cleanup, :run_all, :delete_failed_tests, :rerun  ]
