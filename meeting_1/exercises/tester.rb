class Tester
  def run(s, data, answers)
    results = []

    answers.length.times do |i|
      results[i] = s.send(:"solution#{i+1}", data)
    end

    results.each_with_index do |x, i|
      if x == answers[i]
        puts "Test ##{i+1}: PASS"
      else
        puts "Test ##{i+1}: FAIL"
      end
    end
  end
end
