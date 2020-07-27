require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Hello"
  end

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
      string = (params[:phrase]+ " ")*params[:number].to_i
      string.chop
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w = params[:word1]
    o = params[:word2]
    r = params[:word3]
    d = params[:word4]
    s = params[:word5]
    "#{w} #{o} #{r} #{d} #{s}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
      when "add"
        (params[:number1].to_i + params[:number2].to_i).to_s
      when "subtract"
        (params[:number1].to_i - params[:number2].to_i).to_s
      when "divide"
        (params[:number1].to_i / params[:number2].to_i).to_s
      when "multiply"
        (params[:number1].to_i * params[:number2].to_i).to_s
    end
  end

end
