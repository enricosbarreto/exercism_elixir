defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * (discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    valor = daily_rate(hourly_rate) * 22
    ceil(apply_discount(valor, discount)) 
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    diaria = daily_rate(hourly_rate)
    diaria_desconto = apply_discount(diaria, discount)
    Float.floor(budget / diaria_desconto, 1)
  end
end

FreelancerRates.daily_rate(60)
FreelancerRates.apply_discount(150, 10)
FreelancerRates.monthly_rate(77, 10.5)
FreelancerRates.days_in_budget(20000, 80, 11.0)

