require_relative 'config/environment'

class App < Sinatra::Base
  
  get ('/reversename/:name') {params[:name].reverse}

  get '/square/:number' do 
    (params[:number].to_i * params[:number].to_i).to_s
  end 

  get '/say/:number/:phrase' do
    output = ''
    params[:number].to_i.times do
      output +=params[:phrase]
    end 
    output
  end 

  get ('/say/:word1/:word2/:word3/:word4/:word5') {"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."}
  
  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
     
    if params[:operation] == "add"
      result = (num1+num2).to_s
    elsif params[:operation] == "subtract"
      result = (num1-num2).to_s
    elsif params[:operation] == "multiply"
      result = (num1*num2).to_s 
    else params[:operation] == "divide"
      result = (num1/num2).to_s
    end 
    result
  end 

end