require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end 

  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end 

  get '/say/:number/:phrase' do 
    str = ""
    @n = params[:number].to_i 
    @phrase = params[:phrase]
    @n.times { str += "#{@phrase}\n" } 
    str 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i 
    case @operation 
    when "subtract"
      (@num1 - @num2).to_s 
    when "add"
      (@num1 + @num2).to_s
      when "multiply"
        (@num1 * @num2).to_s
      when "divide"
        (@num1 / @num2).to_s
    end 
  end
end