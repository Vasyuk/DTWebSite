class StaticPagesController < ApplicationController
  def pagedaccueile
  end

  def portfolio
    @potfolio = Portfolio.all
  end

  def contacts
    @param = params
  end

end
