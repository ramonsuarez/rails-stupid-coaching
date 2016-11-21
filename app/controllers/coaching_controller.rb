class CoachingController < ApplicationController
  def answer
    # Copy paste of original stupid coach exercise

    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

private
  # Code by Thibault, I'm not sure mine was finished and it created an infinite loop
  def coach_answer(your_message)
     if your_message == "I am going to work right now!"
       return ""
     elsif your_message.include? "?"
       return "Silly question, get dressed and go to work!"
     else
       return "I don't care, get dressed and go to work!"
     end
   end

   def coach_answer_enhanced(your_message)
     if your_message.capitalize == "I am going to work right now!"
       return ""
     elsif your_message == your_message.upcase
       return "I can feel your motivation! #{coach_answer(your_message.capitalize)}"
     else
       return coach_answer(your_message)
     end
   end
end
