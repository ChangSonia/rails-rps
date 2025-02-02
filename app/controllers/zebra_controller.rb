class ZebraController < ApplicationController # we want the zebracontroller to inherit from parent class alr defined by Ruby on Rail developers
  def tiger
    render({:template => "layouts/home"})
  end

  # Playing rock
  def giraffe
    @opponent = ["rock", "paper", "scissors"].sample
    if @opponent == "rock"
      @outcome = "tied"
    elsif @opponent == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template =>"game_templates/play_rock"})  # folder_name/template_name; we need to create subfolder under views to use erb file
  end

  # Playing paper
  def elephant 
    @opponent = ["rock", "paper", "scissors"].sample
    if @opponent == "paper"
      @outcome = "tied"
    elsif @opponent == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template =>"game_templates/play_paper"})
  end

  # Playing Scissors
  def lion
    @opponent = ["rock", "paper", "scissors"].sample
    if @opponent == "scissors"
      @outcome = "tied"
    elsif @opponent == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template =>"game_templates/play_scissors"})
  end

end
