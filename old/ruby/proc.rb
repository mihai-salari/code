proc1 = -> arg { puts "In proc1 with #{arg}" }
proc1.call("ant")

proc2 = -> arg1, arg2 { puts "In proc2 with #{arg1} and #{arg2}" }
proc2.call("hello","world")

proc3 = -> (arg1, arg2) { puts "In proc3 with #{arg1} and #{arg2}" }
proc3.call("shit","hole")

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 2, -> { puts "#{val} is small" }, -> { puts "#{val} is big" }
end

def my_while(cond, &body) # we use & here, to convert do...end block into a Proc object
  while cond.call
    body.call
  end
end

a = 0

my_while -> {a < 3} do
  puts a
  a += 1
end

a = 0

def my_while2(cond, body) # here without &, because we are passing a Proc object directly (created with lambda)
  while cond.call
    body.call
  end
end


my_while2 -> {a < 5}, -> {puts a; a += 1}