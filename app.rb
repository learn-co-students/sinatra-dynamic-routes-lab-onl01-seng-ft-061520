
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  # https://www.youtube.com/watch?v=jCeKuBil5G4
  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do

    phrase = ""
    params[:number].to_i.times do
      phrase << params[:phrase]
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    # result = (params[:number1] params[:operation] params[:number2]).to_s

# add, subtract, multiply or divide
    result = ""
    if params[:operation] == "add"
      result << (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      result << (params[:number2].to_i - params[:number1].to_i).to_s
    elsif params[:operation] == "multiply"
      result << (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      result << (params[:number1].to_i / params[:number2].to_i).to_s
    # else

    end

    result

  end







end