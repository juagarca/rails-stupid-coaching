class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  def coach_answer_enhanced(your_message)
    if your_message == ''
      "Please ask me a question"
    elsif (your_message == 'I am going to work right now!') || (your_message == 'I AM GOING TO WORK RIGHT NOW!')
      'Well done!'
    elsif your_message.slice(-1, 1) == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
