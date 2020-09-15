require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number.to_s}"
  end

  get '/say/:number/:phrase' do
    @times_phrase = params[:phrase] * params[:number].to_i
    "#{@times_phrase.to_s}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = params[:word1]+ " " + params[:word2]+ " " + params[:word3]+ " " + params[:word4]+ " " + params[:word5]
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do

    if params[:operation] == 'add'
     @add = params[:number1].to_i + params[:number2].to_i
     "#{@add.to_s}"

    elsif params[:operation] == 'subtract'
     @subtract = params[:number1].to_i - params[:number2].to_i
     "#{@subtract.to_s}"

    elsif params[:operation] == 'multiply'
     @multiply = params[:number1].to_i * params[:number2].to_i
     "#{@multiply.to_s}"

    else
     @divide = params[:number1].to_i / params[:number2].to_i
     "#{@divide.to_s}"
    end

  end

end