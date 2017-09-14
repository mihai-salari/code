class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(param)
    @stored_proc.call(param)
  end
end

eg = ProcExample.new
eg.pass_in_block { |v| puts "The parameter is #{v}" } 
eg.use_proc(99)

def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "You called me with #{param}" }

bo.call 99
bo.call "hello"

bl = lambda { |param| puts "You called me with #{param}" }
bl.call 99
bl.call "hello"