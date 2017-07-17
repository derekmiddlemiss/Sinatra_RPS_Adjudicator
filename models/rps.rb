class RPSGame

  def initialize( p1_move, p2_move )
    @p1_move = p1_move.downcase()
    @p2_move = p2_move.downcase()
  end

  def resolve()
    case @p1_move

      when "rock"

        case @p2_move
          when "rock"
            return "No one wins!"
          when "paper"
            return "Player 2 wins with paper!"
          when "scissors"
            return "Player 1 wins with rock!"
        end

      when "paper"

        case @p2_move
          when "rock"
            return "Player 1 wins with paper!"
          when "paper" 
            return "No one wins!"
          when "scissors"
            return "Player 2 wins with scissors!"
        end

      when "scissors"

        case @p2_move
          when "rock"
            return "Player 2 wins with rock!"
          when "paper" 
            return "Player 1 wins with scissors!"
          when "scissors"
            return "No one wins!"
        end

    end

  end

end