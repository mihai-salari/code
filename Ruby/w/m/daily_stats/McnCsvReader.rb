require 'csv'
require_relative 'McnCsvFile'

class McnCsvReader
  attr_reader :mcn_records
  
  def initialize
    @mcn_records = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true, col_sep: ";") do |row|
      @mcn_records << McnCsvFile.new(row["date"], row["total voicemail subscribers"], row["total voicemail with mcn enabled subscribers"], row["total mcn disabled subscribers"])
    end
  end
  
  def get_total_rows
    @mcn_records.count
  end
  
  def print_all_rows
    total_rows = @mcn_records.count
    i = 0
    
    while i < total_rows
      puts "Index #{i+1}: #{@mcn_records[i]}"
      i += 1
    end
  end
  
end