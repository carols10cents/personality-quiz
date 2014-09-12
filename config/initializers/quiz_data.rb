require 'csv'

QUIZ_DATA_RAW = CSV.read(Rails.root.join('config', 'quiz-data.csv'))

QUIZ_DATA_QUESTIONS = QUIZ_DATA_RAW.first[1..-1]

QUIZ_DATA = Hash[QUIZ_DATA_QUESTIONS.map { |q| [q, Hash.new { Array.new }] }]

QUIZ_DATA_RAW[1..-1].each do |row|
  result  = row.first
  answers = QUIZ_DATA_QUESTIONS.zip row[1..-1]
  answers.each do |question, answer|
    QUIZ_DATA[question][answer] = QUIZ_DATA[question][answer] + [result]
  end
end
