require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    str = ""
    number = params[:number]
    phrase = params[:phrase]
    (number.to_i).times do
      str += "#{phrase}\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1]
    number2 = params[:number2]
    case operation
    when "add"
      "#{number1.to_i + number2.to_i}"
    when "subtract"
      "#{number1.to_i - number2.to_i}"
    when "multiply"
      "#{number1.to_i * number2.to_i}"
    when "divide"
      "#{number1.to_i / number2.to_i}"
    end
  end

end