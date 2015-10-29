require_relative 'tester.rb'
require_relative 'data.rb'
require_relative 'my_enumerable'
require_relative 'answers.rb'
require_relative 'quiz.rb'

d = InputData.new
a = Answers.new
q = Quiz.new
t = Tester.new

t.run(q, d.get, a.get)
