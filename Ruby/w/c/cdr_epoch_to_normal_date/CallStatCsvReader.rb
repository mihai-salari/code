require 'csv'
require_relative 'CallStatCsvFile'

class CallStatCsvReader
  attr_reader :stats
  
  def initialize
    @stats = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true, col_sep: ":") do |row|
      @stats << CallStatCsvFile.new(row["creation_time"], row["calling_address"], row["owner_number"])
    end
  end
end