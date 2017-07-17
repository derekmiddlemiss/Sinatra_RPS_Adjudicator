require( 'minitest/autorun' )
require_relative( '../models/rps.rb' )

class TestRPS < MiniTest::Test

  def test_p1rock_p2scissors()
    rps = RPSGame.new("rock","scissors")
    result = rps.resolve()
    assert_equal( "Player 1 wins with rock!", result )
  end

  def test_p1rock_p2rock()
    rps = RPSGame.new("rock","rock")
    result = rps.resolve()
    assert_equal( "No one wins!", result )
  end

  def test_p1scissors_p2paper()
    rps = RPSGame.new("scissors","paper")
    result = rps.resolve()
    assert_equal( "Player 1 wins with scissors!", result )
  end    

  def test_p1SCISSORS_p2scissors()
    rps = RPSGame.new("SCISSORS","scissors")
    result = rps.resolve()
    assert_equal( "No one wins!", result )
  end

end