require 'sinatra'

get '/bet/:stake/on/:number' do
	stake = params[:stake].to_i
	number = params[:number].to_i
	roll = rand(6)+1

	if number == roll
		"It landed on #{roll}. well done, you win #{6*stake} chips"
	else
		"It landed on #{roll}. You loose your stake of #{stake} chips"
	end
end