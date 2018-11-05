class QuestionsController < ApplicationController
  def ask
  end

  ANSWERS = {
    1 => { answer: 'Great!' },
    2 => { answer: 'Silly question, get dressed and go to work!' },
    3 => { answer: 'I don\'t care, get dressed and go to work!' }
  }

  def answer
    @answers = ANSWERS
    @question = params[:talk_to_coach]
    if @question.downcase == 'i am going to work'
      @answer = @answers[1][:answer]
    elsif @question[-1] == '?'
      @answer = @answers[2][:answer]
    else
      @answer = @answers[3][:answer]
    end
    # raise
    # @response = ANSWERS.select { |id, r| r[:answer] == @question }
  end

  def index
  end
end
