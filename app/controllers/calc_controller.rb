class CalcController < ApplicationController
  def user_home
    render({ :template => "calc_templates/home"})
  end

  def user_square
    @the_num = params.fetch("number").to_f
    @the_square = @the_num ** 2
    render({ :template => "calc_templates/square_results"})
  end

  def user_sqrn
    render({ :template => "calc_templates/sqrn"})
  end

  def user_sqrr
    @the_num = params.fetch("user_number").to_f
    @the_square_root = @the_num ** 0.5
    render({ :template => "calc_templates/sqr_results"})
  end

  def user_payn
    render({ :template => "calc_templates/payn"})
  end

  def user_payr
    @the_apr = params.fetch("user_apr").to_f.round(4)
    @the_r = @the_apr / 12 / 100
    @the_year = params.fetch("user_years").to_i
    @the_n = @the_year * 12
    @the_pv = params.fetch("user_pv").to_i
    @the_numerator = @the_r * @the_pv
    @the_denominator = 1 - (1 + @the_r) ** -@the_n
    @the_p = @the_numerator / @the_denominator
    render({ :template => "calc_templates/payr"})
  end

  def user_randn
    render({ :template => "calc_templates/randn"})
  end

  def user_randr
    @the_min = params.fetch("user_min").to_f
    @the_max = params.fetch("user_max").to_f
    @the_random = rand(@the_min..@the_max)
    render({ :template => "calc_templates/randr"})
  end

end
