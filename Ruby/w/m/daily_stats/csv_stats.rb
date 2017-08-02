#
# Usage:
# $ ruby csv_stats.rb nilai_stats.txt nilai_mcn_stats.txt (to generate the output of final csv values)

require_relative 'McnCsvReader'
require_relative 'StatCsvReader'

mcn_reader = McnCsvReader.new
stat_reader = StatCsvReader.new


ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name}"
  
  if csv_file_name == "nilai_mcn_stats.txt" || csv_file_name == "rawang_mcn_stats.txt"
    mcn_reader.read_in_csv_data(csv_file_name)
  end
  
  if csv_file_name == "nilai_stats.txt" || csv_file_name == "rawang_stats.txt"
    stat_reader.read_in_csv_data(csv_file_name)
  end
end

#puts "Total MCN rows: #{mcn_reader.get_total_rows}"
#puts "Total Stats rows: #{stat_reader.get_total_rows}"

#mcn_reader.print_all_rows
#stat_reader.print_all_rows

#p stat_reader.stat_records[0].number_of_events

#puts stat_reader.stat_records.count
#puts mcn_reader.mcn_records.count

total_mcn_rows = mcn_reader.mcn_records.count
total_stat_reader_rows = stat_reader.stat_records.count

count = 0

#
# Following lines will format and print all the required CSV values (combining all the required csv fields from both stats and mcn csv files),
# kindly note that this script is use to produce all previous records that is required to complete the 'ramis_stats.txt' file, newer
# data is automatically generated from the bash script...

while count < total_stat_reader_rows
  puts "#{stat_reader.stat_records[count].date};#{stat_reader.stat_records[count].number_of_calls};#{stat_reader.stat_records[count].number_of_direct_retrieval_call_corrected};#{stat_reader.stat_records[count].number_of_subscriber};#{mcn_reader.mcn_records[count].total_mcn_subs};#{stat_reader.stat_records[count].number_of_prepaid_static};#{stat_reader.stat_records[count].number_of_postpaid_static};#{stat_reader.stat_records[count].number_of_prepaid_dynamic};#{stat_reader.stat_records[count].number_of_postpaid_dynamic};#{stat_reader.stat_records[count].number_of_prepaid_static.to_i+stat_reader.stat_records[count].number_of_postpaid_static.to_i+stat_reader.stat_records[count].number_of_prepaid_dynamic.to_i+stat_reader.stat_records[count].number_of_postpaid_dynamic.to_i};#{stat_reader.stat_records[count].number_of_message_notification_delivered_for_mcn};#{stat_reader.stat_records[count].number_of_message_notification_successfully_delivered_for_mcn};#{stat_reader.stat_records[count].number_of_outcall}"
  count += 1
end