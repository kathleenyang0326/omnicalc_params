class CalculationsController < ApplicationController
def home_page
end

  def flexible_square
    @the_number=params["zebra"].to_f
    @output=@the_number**2
    render("calculations/flexible_square.html.erb")
end
def flexible_square_root
  @the_number=params["zebra"].to_f
  @output=@the_number**0.5
  render("calculations/flexible_square_root.html.erb")
end
def flexible_payment
  @monthly_rate=params["a"].to_f/10000/12
  @periods=params["b"].to_f*12
  @present_value=params["c"].to_f
  @screen_display_monthly_rate=params["a"].to_f/100
  @screen_display_period=params["b"].to_f
  @output=@monthly_rate*@present_value/(1-(1+@monthly_rate)**(-@periods))
  render("calculations/flexible_payment.html.erb")
end
def flexible_random_number
  @starting_number=params["c"].to_f
  @ending_number=params["d"].to_f
  @output=rand (@starting_number...@ending_number)
    render("calculations/flexible_random_number.html.erb")
end
def square_form
end
def square_root_form
end
def payment_form
end
def random_form
end
def word_count_form
end
def descriptive_statistics_form
end
def square_results
   @number=params[:user_number].to_f
   render("calculations/square_results.html.erb")
end
def square_root_results
   @number=params[:user_number].to_f
   render("calculations/square_root_results.html.erb")
end
def payment_results
   @monthly_rate=params[:apr].to_f/100/12
   @periods=params[:number_of_years].to_f*12
   @present_value=params[:principal].to_f
   @screen_display_rate=params[:apr].to_f
   @output=@monthly_rate*@present_value/(1-(1+@monthly_rate)**(-@periods))
   render("calculations/payment_results.html.erb")
end
def random_results
  @starting_number=params[:starting_number].to_f
  @ending_number=params[:ending_number].to_f
  @output=rand (@starting_number...@ending_number)
    render("calculations/random_results.html.erb")
end
def word_count_results
  @text= params[:text_input]
  @special_word = params[:special_word_input]
  @word_count= @text.split.count
  @character_count_with_spaces = @text.length
  @character_count_without_spaces = @text.strip.gsub(/[^a-z0-9\s]/i, "").gsub(" ","").length
  @occurrences = @text.gsub(/[^a-z0-9\s]/i, "").downcase.split.count(@special_word.downcase)
end
def descriptive_statistics_results
    @numbers = params[:list_of_numbers].gsub(',', '').split.map(&:to_f)
    @sorted_numbers = @numbers.sort

    @count = @numbers.count

    @minimum = @numbers.sort.first

    @maximum =  @numbers.sort.last

    @range = @maximum-@minimum

    if @count%2==0
      number1=@count/2-1
      number2=@count/2
      @median=(@sorted_numbers[number1]+@sorted_numbers[number2])/2
    end

    if @count%2==1
      number1=(@count+1)/2-1
      @median=@sorted_numbers[number1]
    end

    @sum = @numbers.sum

    @mean = @sum/@count

    addingvariance=[]
    @numbers.each do |num|
      variancenumber=(num-@mean)**2
      addingvariance.push(variancenumber)
    end

    @variance = (addingvariance.sum)/@count

    @standard_deviation = @variance**0.5

    freq = @numbers.inject(Hash.new(0)) { |h,v| h[v] += 1; h }

    @mode = @numbers.max_by { |v| freq[v] }
end
end
