class PiecesController < ApplicationController
  before_action :find_piece, only: [:show, :edit, :update, :destroy]

  def index
    @pieces = Piece.all
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)

    if @piece.save
      redirect_to@piece, notice: "create successfully!"
    else
      render 'new'
    end
  end

  private
    def piece_params
      params.require(:piece).permit(:title, :created, :description, :image)
    end

    def find_piece
      @piece = Piece.find(params[:id])
    end
end
