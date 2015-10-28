require '../tester.rb'
require './data.rb'
require './answers.rb'
require './quiz.rb'

d = InputData.new
a = Answers.new
q = Quiz.new
t = Tester.new

t.run(q, d.get, a.get)
