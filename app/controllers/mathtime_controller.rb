class MathtimeController < ApplicationController

  def home
    render({ :template => "layouts/square" })
  end

  def square
    render({ :template => "layouts/square" })
  end

  def square_results
    @number = params.fetch("number")
    @num_sq = (@number.to_f)**2
    render({ :template => "layouts/square_results" })
  end

  def square_root
    render({ :template => "layouts/square_root" })
  end

  def square_root_results
    @number = params.fetch("number")
    @num_sqrt = (@number.to_f)**0.5
    render({ :template => "layouts/square_root_results" })
  end

  def payment
    render({ :template => "layouts/payment" })
  end

  def payment_results
    @apr = ((params.fetch("apr")).to_f).round(4)
    @years = params.fetch("years")
    @months = (@years.to_i * 12)
    @aprmonthly = @apr/12
    @principal = (params.fetch("principal")).to_f
    @payment_num = ((@aprmonthly/100) * @principal)
    @payment_denom = (1 - ((1 + (@aprmonthly/100)))**(-@months))
    @payment = ((@payment_num.to_f)/(@payment_denom.to_f)).to_fs(:currency)
    render({ :template => "layouts/payment_results" })
  end

  def random
    render({ :template => "layouts/random" })
  end

  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @output = rand(@min..@max)
    render({ :template => "layouts/random_results" })
  end
end
