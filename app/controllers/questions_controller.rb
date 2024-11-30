class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == "I am going to work"
      @coach_response = "Great!"
    elsif @question&.end_with?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end

end
