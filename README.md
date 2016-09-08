### Reports

# HTML Reports
  Once you run the rake task, You will see HTML reports generated in the HTML files dependeing on how many process you have

# JSON Reports
  Once you run the rake task, You will see two json reports generated in the HTML files dependeing on how many process you have

### Rakefile

  Rakefile has different tasks to perform different cucumber operations

# :cleanup

  This task delete old reports (html and json) and cucuber failures log file and create new one for fresh execution.

# :run_all
  This task run all tags and generates HTML report

# :delete_failed_tests

  This task remove failed tests from report json and merge new report from rerun

# :rerun

  This task will rerurn only failed scenarios.

# :all

  This task will combine everything in one, in sequence predefined.
