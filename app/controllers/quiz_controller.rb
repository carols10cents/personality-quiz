class QuizController < ApplicationController
  def show
  end

  def score
    results = Hash.new { 0 }
    params.each do |key, value|
      if answers = QUIZ_DATA[key]
        if similar_results = answers[value]
          similar_results.each do |result|
            results[result] += 1
          end
        end
      end
    end

    @top_result = results.max_by { |k, v| v }.first
    render :result
  end
end
