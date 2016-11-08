class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def payment
  @apr = params[:interest_rate].to_f/100
  @years = params[:number_of_years].to_i
  @principal = params[:principal_value].to_f
  rate= @apr/100/12
  nper=@years*12
  @monthly_payment = (rate * @principal)/(1 - (1 + rate)**-nper)
render("payment.html.erb")
end

def square_root

  @number = params[:number].to_i
  @square_root=Math.sqrt(@number).to_i
  render("square_root.html.erb")
end


def square
@number = params[:number].to_i
@square=@number**2
render("square.html.erb")
end

def random_number
  @min = params[:min].to_i
  @max = params[:max].to_i

  @random_number = rand(@min..@max)
  render("random_number.html.erb")
end


end
