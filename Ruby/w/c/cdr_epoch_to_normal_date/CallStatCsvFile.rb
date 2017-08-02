class CallStatCsvFile
  attr_reader :creation_time, :calling_address, :owner_number
  
  def initialize(creation_time, calling_address, owner_number)
    @creation_time = creation_time
    @calling_address = calling_address
    @owner_number = owner_number
  end
end