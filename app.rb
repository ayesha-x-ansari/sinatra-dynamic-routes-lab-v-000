require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @reverse_name = @user_name.reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i  *  @number.to_i }"
  end

  get "/say/:number/:phrase" do
    @number  = params[:number]
    @num = @number.to_i
    @phrase = params[:phrase]
    @num.times do
     "#{@phrase}"
    #  "ddddddddd"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    case @operation
      when "add"
        "#{@number1.to_i + @number2.to_i}"
      when "substract"
        "#{@number1.to_i - @number2.to_i}"
      when "multiply"
        "#{@number1.to_i * @number2.to_i}"
      when "divide"
        "#{@number1.to_i / @number2.to_i}"
      else
        "Dont understand operation provided"
    end
  end

end
