class Game

  def start
    puts "Welcome to Fun Math Game!"
    @game_state = Game_State.new
    continue
  end

  def continue
    question = Question.new
    puts (@game_state.current_player_name) + ": " + question.make_question
    print "> "
    choice = $stdin.gets.chomp
    if (choice.to_i === question.check_question_answer)
      (puts "CORRECT")
    else
      (puts "WRONG")
      @game_state.current_player_wrong()
    end
    if (@game_state.current_player_lives === 0)
      @game_state.switch_turn
      (puts "#{@game_state.current_player_name} wins with a score of #{@game_state.current_player_lives}/3!")
      puts '-----GAME OVER-----'
      puts 'Thanks for Playing!'
    else
      @game_state.switch_turn
      puts @game_state.scores
      puts '-----NEXT TURN-----'
      continue
    end
  end

end