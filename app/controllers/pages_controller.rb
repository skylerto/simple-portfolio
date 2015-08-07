class PagesController < ApplicationController

  def portfolios
    @portfolios = Portfolio.all
    @pieces = Piece.all
  end

  def pieces
    @portfolios = Portfolio.all
    @pieces = Piece.all
  end

  def artists
    @portfolios = Portfolio.all
    @pieces = Piece.all
  end

end
