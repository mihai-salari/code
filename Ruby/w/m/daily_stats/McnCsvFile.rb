class McnCsvFile
  attr_reader :date, :total_vm_subs, :total_mcn_subs, :total_mcn_off_subs
  
  def initialize(date, total_vm_subs, total_mcn_subs, total_mcn_off_subs)
    @date = date
    @total_vm_subs = total_vm_subs
    @total_mcn_subs = total_mcn_subs
    @total_mcn_off_subs = total_mcn_off_subs
  end
  
  def to_s
    "Date: #{@date}, Total voice mail subscribers: #{@total_vm_subs}, Total voice mail with MCN enabled subscribers: #{@total_mcn_subs}, Total MCN disabled subscribers: #{@total_mcn_off_subs}"
  end
  
end