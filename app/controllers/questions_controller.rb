class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # Récupérer la question answer?question=hello
    @question = params[:question]
    # générer une réponse
    if @question == "I am going to work"
      @answer = "Great !"
    # If the message is I am going to work, the coach will answer Great!
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else @answer = "I don't care, get dressed and go to work!"
    end
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise she/he will answer I don't care, get dressed and go to work!
    #donner la réponse à la vue
  end
end
