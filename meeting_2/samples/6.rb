def hello_world(proc1, proc2)
  proc1.call(proc2)
end

proc1 = Proc.new { |proc2| puts "hello #{proc2.call('world')}" }
proc2 = ->(name) { name.to_s }
hello_world(proc1, proc2)
