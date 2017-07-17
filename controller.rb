require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( './models/rps.rb' )

get '/:p1_move/:p2_move' do
  rps = RPSGame.new( params[:p1_move], params[:p2_move] )
  @result = rps.resolve()
  erb( :result )
end 

get '/welcome' do
  erb( :welcome )
end

