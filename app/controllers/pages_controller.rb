class PagesController < ApplicationController

  def portfolios
    @portfolios = Portfolio.all
    @pieces = Piece.all
  end

end
