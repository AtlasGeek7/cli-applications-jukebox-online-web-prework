

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(arr)
  i = 0
  len = arr.length
  while i < len
    puts "#{i+1}. #{arr[i]}"
  end
  
  end
  
  
def play(arr)
  idx = [1,2,3,4,5,6,7,8,9]
  puts "Please enter a song name or number:"
  input = gets.strip
  if arr.include?(input) || idx.include?(input.to_i)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  loop do
    puts "Please enter a command:"
    cmd = gets.strip
    case cmd
      when "exit"
        exit_jukebox
        break
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
      else
        "Invalid command!"
    end
  end
end
  
  
  
  
  