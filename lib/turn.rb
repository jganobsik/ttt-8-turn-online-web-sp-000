

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  intInput = input.to_i
  intInput - 1
end


def move (board, index, player = "X")
  board[index] = player
  
end

def valid_move?(board, index)
  
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  end 
end

def position_taken?(board, index)
 
    
  if board[index] == "X" || board[index] == "O"
  
  true
  
  elsif board[index] == " " || nil || ""
  false
end
end

def turn(board)



puts "Where would you like to go?"
puts "Please enter 1-9:"

input = gets.strip

index  = input_to_index(input)



if valid_move?(board, index)
  move(board, index)
else 
  puts "Please enter 1-9:"
  input = gets.strip

  index  = input_to_index(input)
end
display_board(board)
end
