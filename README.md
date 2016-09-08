# General observations
  This project was created to serve as a parameter for the use of "rerun", "HTML Report", "Json Report", "HTTParty" and "rake".
  For that were consulted several sources, the main source the Shashikant Jagtap blog (http://shashikantjagtap.net/faster-bdd-parallelising-cucumber-and-re-running-failed-scenarios/).

### HTML Reports
  Once you run the rake task, You will see HTML reports generated in the HTML files dependeing on how many process you have

### JSON Reports
  Once you run the rake task, You will see two json reports generated in the HTML files dependeing on how many process you have

### HTTParty
  Is used to query web services and examine the resulting output. By default it will output the response as a pretty-printed Ruby object (useful for grokking the structure of output). This can also be overridden to output formatted XML or JSON. More information, consultign: http://johnnunemaker.com/httparty/

### rake
  Rake é um programa Make-como implementado em Ruby. Tarefas e dependências são especificados na sintaxe padrão do Ruby. More informations, consulting: https://github.com/ruby/rake

### rerun
  It's basically a alternative to autotest. Doesn't require config files and works on any command, not just Ruby programs. More informations, consulting: https://github.com/alexch/rerun/


# Rakefile

  Rakefile has different tasks to perform different cucumber operations

### :cleanup

	This task delete old reports (html and json) and cucuber failures log file and create new one for fresh execution.

### :run_all
	
	This task run all tags and generates HTML report

### :delete_failed_tests

	This task remove failed tests from report json and merge new report from rerun

### :rerun

 	This task will rerurn only failed scenarios.

### :services

	This task will run only services scenarios.

### :content

	This task will run only content scenarios.

### :all

 	This task will combine everything in one, in sequence predefined.

### :services_rerun

	This task will run only services scenarios with rerun.

### :content_rerun

	This task will run only content scenarios with rerun.


# Running the tests

	$ bundle install
	$ bundle rake all

	Another examples:
		$ rake all
		$ rake services
		$ rake services_rerun
		$ rake content #(run in chrome)
		$ rake content BROWSER=ff #(run in firefox)
 
# env.rb

### ENV['BROWSER']
	It's possible test in different browsers, Chrome is the default.

### After do |scenario|
	At this point, in case of failure will be captured screenshot and added to the HTML report.

# cucumber.yml

  Cucumber lets you store and reuse commonly used cucumber command line arguments for a project. More informations, consulting: https://github.com/cucumber/cucumber/wiki/cucumber.yml

