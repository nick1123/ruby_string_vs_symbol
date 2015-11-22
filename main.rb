iterations = 1_000_000

message = "How long does it take to create #{iterations} hashes, when keys are strings?"
puts message
time_begin = Time.now
iterations.times do
  {"first_name" => "Fred", "last_name" => "Smith"}
end

elapsed_time_1 = Time.now - time_begin
puts "Time: #{elapsed_time_1} seconds"
puts ""


message = "How long does it take to create #{iterations} hashes, when keys are symbols?"
puts message
time_begin = Time.now
iterations.times do
  {:first_name => "Fred", :last_name => "Smith"}
end

elapsed_time_2 = Time.now - time_begin
puts "Time: #{elapsed_time_2} seconds"
puts ""


puts "Using symbols is #{elapsed_time_1 / elapsed_time_2} times faster"
puts ""
