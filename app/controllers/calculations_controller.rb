class CalculationsController < ApplicationController
  def flexible_square
    @the_number=params["zebra"].to_f
    render ("calculations/flexible_square.html.erb")
end
def flexible_square_root
  @the_number=params["zebra"].to_f
  render ("calculations/flexible_square_root.html.erb")
end
def flexible_payment
  @monthly_rate=params["a"].to_f/10000/12
  @periods=params["b"].to_f*12
  @present_value=params["c"].to_f
  @the_number=
  render ("calculations/flexible_payment.html.erb")
end
def square_form

end
end
