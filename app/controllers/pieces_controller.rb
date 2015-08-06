class PiecesController < ApplicationController
  before_action :find_piece, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @pieces = Piece.all
  end

  def show
  end

  def new
    @piece = Piece.new
    @portfolios = Portfolio.order("title ASC")
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.user_id = current_user.id
    if @piece.save
      redirect_to@piece, notice: "create successfully!"
    else
      render 'new'
    end
  end

  def edit
  end
  def update
    if @piece.update(piece_params)
      redirect_to@piece, notice: "saved successfully!"
    else
      render 'new'
    end
  end

  def destroy
    @piece.destroy
    redirect_to root_path
  end

  private
    def piece_params
      params.require(:piece).permit(:title, :created, :description, :image, :portfolio_id)
    end

    def find_piece
      @piece = Piece.find(params[:id])
      @portfolios = Portfolio.order("title ASC")
    end
end
