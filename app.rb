require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get '/say/:number/:phrase' do 
    @n = params[:number].to_i
    @s = params[:phrase]
    "#{@s * @n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2=params[:word2]
    @w3=params[:word3]
    @w4=params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    result = ""
    if params[:operation]=="add"
      result = (@num1 + @num2)
    elsif params[:operation]=="subtract"
      
        result = (@num1 - @num2)
      
    elsif params[:operation]=="multiply"
      result = (@num1 * @num2)
    elsif params[:operation]=="divide"
      
        result = (@num1 / @num2)
    else
        answer = "Unable to perform this operation"
    end
    result.to_s
  end

end