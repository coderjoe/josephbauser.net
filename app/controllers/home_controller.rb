class HomeController < ApplicationController
  def index
    birthday = Date.strptime('08/07/1983', '%m/%d/%Y')
    @years_old = (Date.today - birthday).to_int / 365
  end
end
