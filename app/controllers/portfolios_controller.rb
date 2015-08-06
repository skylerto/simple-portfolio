class PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @portfolios = Portfolio.all
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio, notice: "create successfully!"
    else
      render 'new'
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to root_path
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :created, :description, :image)
    end

    def find_portfolio
      @portfolio = Portfolio.find(params[:id])
      @pieces = @portfolio.pieces
    end

end
