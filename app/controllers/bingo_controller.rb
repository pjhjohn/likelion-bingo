class BingoController < ApplicationController
  before_filter :session_required

  def index
    @boardRecord = Board.where(user_id: session[:id]).take
    @board = (0...7).to_a.map{ |row| (0...7).to_a.map{ |col| {:name => "cell_#{row}#{col}", :checked => false }}}
    @animalCount = 0
    unless @boardRecord.nil?
      (0...7).each do |row|
        (0...7).each do |col|
          animal = Animal.find_by_id(@boardRecord.send("cell_#{row}#{col}"))
          unless animal.nil?
            @animalCount += 1
            @board[row][col] = {:name => animal.name, :checked => animal.checked}
          end
        end
      end
    end
  end

  def new
    @boardRecord = Board.where(user_id: session[:id]).take
    @board = (0...7).to_a.map{ |row| (0...7).to_a.map{ |col| {:name => "cell_#{row}#{col}", :checked => false }}}
    @animalCount = 0
    unless @boardRecord.nil?
      (0...7).each do |row|
        (0...7).each do |col|
          animal = Animal.find_by_id(@boardRecord.send("cell_#{row}#{col}"))
          unless animal.nil?
          @animalCount += 1
            @board[row][col] = {:name => animal.name, :checked => animal.checked}
          end
        end
      end
    else
      @boardRecord = Board.new
      @boardRecord.user_id = session[:id]
      @boardRecord.save
    end
  end

  def add
    if params[:cell].present?
      @boardRecord = Board.where(user_id: session[:id]).take
      unless @boardRecord.nil?
        animal = Animal.where(name: params[:animal]).first
        unless animal.nil?
          @boardRecord.send("#{params[:cell]}=", animal.id)
          animal.count = animal.count + 1
          animal.save
          @boardRecord.save
        else
          animal2create = Animal.new
          animal2create.count = 1
          animal2create.name = params[:animal]
          animal2create.save
          @boardRecord.send("#{params[:cell]}=", animal2create.id)
        end
        @boardRecord.save
      end
    end
    redirect_to "/bingo/new"
  end

  def confirm
=begin
    board = Board.find_by_id(params[:id])
    if board.nil?
      redirect_to :back
    else
      board.confirm = true;
      board.save
    end
=end
    redirect_to "/bingo/index"
  end
end
