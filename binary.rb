def flip(bit)
  if bit == 0
    new_bit = 1
  elsif bit == 1
    new_bit = 0
  else
    raise(ArgumentError, 'Non-binary entered')
  end

  new_bit
end

def binary_add(binary)
  reversed = binary.reverse
  
  (0..reversed.length - 1).each do |i|
        if reversed[i] == 0
          reversed[i] = 1
          return reversed.reverse
        else
          reversed[i] = 0
        end
  end 
end

input = '0111'
input_array = []
input.each_char { |char| input_array.push(char.to_i) }

flipped_input = []
input_array.each {|bit| flipped_input.push(flip(bit))}
output = binary_add(flipped_input)

puts 'Input Binary:'
puts input_array

puts '\nFlipped:'
puts output