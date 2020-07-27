require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    i = ''
    params[:number].to_i.times do
      i += params[:phrase]
    end
    i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if params[:operation] == 'add'
      equals = (num1 + num2).to_s
    elsif params[:operation] == 'subtract'
      equals = (num1 - num2).to_s
    elsif params[:operation] == 'multiply'
      equals = (num1 * num2).to_s
    elsif params[:operation] == 'divide'
      equals = (num1 / num2).to_s
    else
      "Invalid operation."
    end
  end

end
