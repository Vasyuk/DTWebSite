class StaticPagesController < ApplicationController
  def pagedaccueile
  end

  def portfolio
    @potfolio = Portfolio.all
  end

  def contacts
    #UserMailer.email_from_portfolio(params).deliver_now
    flash.now[:notice] = 'Invalid email/password combination'
  end


end
