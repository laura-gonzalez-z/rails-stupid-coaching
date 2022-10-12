class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    question = params[:question]

    @answers = if question.downcase == 'i am going to work'
                 @answers[0]
               elsif question.end_with?('?')
                 @answers[1]
               else
                 @answers[2]
               end
  end
end
