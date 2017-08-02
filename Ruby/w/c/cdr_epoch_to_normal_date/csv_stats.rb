#
# Usage: $ ruby csv_stats.rb xxx.csv > yyy.csv
#
# This script is to convert the Unix epoch timestamp to normal date/time, kindly note that the timestamp 
# in the original CDR is Java epoch timestamp with extra 3 digits, we need to remove this extra digits before
# we can apply the following script (a sed will do that).
#
# It should be better to use a Shell script for this task, anyway...
#

require_relative 'CallStatCsvReader'

stat_reader = CallStatCsvReader.new

ARGV.each do |csv_file_name|
  stat_reader.read_in_csv_data(csv_file_name)
end

count = 0

while count < stat_reader.stats.count
  calling_address="#{stat_reader.stats[count].calling_address}"
  owner_number="#{stat_reader.stats[count].owner_number}"
  date="#{stat_reader.stats[count].creation_time}"
  date=date.to_i
  puts `date -r #{date} "+%Y-%m-%d %H:%M:%S":#{calling_address}:#{owner_number}`
  count += 1
end