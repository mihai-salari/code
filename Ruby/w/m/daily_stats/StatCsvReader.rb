require 'csv'
require_relative 'StatCsvFile'

class StatCsvReader
  attr_reader :stat_records
  
  def initialize
    @stat_records = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true, col_sep: ";") do |row|
      @stat_records << StatCsvFile.new(row["date"], row["number of events"], row["number of creation"], row["number of deletion"], row["number of calls"], row["number of direct retrieval call corrected"], row["number of direct retrieval call corrected (duration = 0)"], row["number of direct retrieval call corrected (duration != 0)"], row["number of outcall"], row["number of active subscriber"], row["number of message deposit"], row["number of message notification"], row["number of message notification for MCN"], row["number of message notification for new message (121)"], row["number of message notification delivered"], row["number of message notification delivered for MCN"], row["number of message notification sucessfully delivered for MCN"], row["number of message notification delivered for new message (121)"], row["number of message notification replaced"], row["number of message notification replaced for MCN"], row["number of message notification replaced for new message (121)"], row["number of greeting changed"], row["number of subscriber"], row["number of subscriber with english langage"], row["number of subscriber with bahasa langage"], row["number of subscriber with tamil langage"], row["number of subscriber with mandarin langage"], row["number of prepaid static"], row["number of postpaid static"], row["number of prepaid dynamic"], row["number of postpaid dynamic"], row["number of fixeline"], row["number of prepaid vvm"], row["number of postpaid vvm"], row["number of mcn off"], row["number of mailbox with basic greeting"], row["number of mailbox with msisdn greeting"], row["number of mailbox with nametag greeting"], row["number of mailbox with personal greeting"], row["number of password/language change"], row["total number of mailboxes with 1 to 5 messages"], row["total number of mailboxes with 6 to 10 messages"], row["total number of mailboxes with 11 to 15 messages"], row["total number of mailboxes with 16 or more messages"], row["total number of messages in msg store"], row["total number of messages in msg store with status SAVED"], row["total number of messages in msg store with status NEW"], row["total number of messages in msg store with status DELETED"], row["license dynamic used"], row["license static used"], row["license fix line used"], row["license vvm used"], row["Number of call with redirection reason -1"], row["Number of call with redirection reason 0"], row["Number of call with redirection reason 1"], row["Number of call with redirection reason 2"], row["Number of call with redirection reason 3"], row["Number of call with redirection reason 4"], row["Number of call with redirection reason 5"], row["Number of call with redirection reason 6"])
    end
  end
  
  def get_total_rows
    @stat_records.count
  end
  
  def print_all_rows
    total_rows = @stat_records.count
    i = 0
    
    while i < total_rows
      puts "Index #{i+1}: #{@stat_records[i]}"
      i += 1
    end
  end
  
  
end