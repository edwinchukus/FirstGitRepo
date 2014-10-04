class Class_ordinary 
    
  def addition
    addition_result = $a + $b
    puts "The addition of #{$a} and #{$b} is #{addition_result}"
  end
  
  def multiplication
    multiplication_result = $a * $b
    puts "The multiplication of #{$a} and #{$b} is #{multiplication_result}"
  end
   
  def division 
    division_result = $a / $b
    puts "The division of #{$a} and #{$b} is #{division_result}"
  end
    
  def subtraction 
    subtraction_result = $a - $b
    puts "The subtraction of #{$a} and #{$b} is #{subtraction_result}"
  end  
    
end

class Class_scientific

 def square
    square_result = $a * $a
    puts "The square of #{$a} is #{square_result}"
  end  
    
  def square_root
    square_root_result = Math.sqrt($a) 
    puts "The square root of #{$a} is #{square_root_result}"
  end
  
  def sin
    sin_result = Math.sin($a) 
    puts "The Sin of #{$a} is #{sin_result}"
  end
  
  def cos
    cos_result = Math.cos($a) 
    puts "The cos of #{$a} is #{cos_result}"
  end
  
  def tan
    tan_result = Math.tan($a) 
    puts "The tan of #{$a} is #{tan_result}"
  end
  
  def log10
    log10_result = Math.log10($a) 
    puts "The log10 of #{$a} is #{log10_result}"
  end
  
  def log2
    log2_result = Math.log2($a) 
    puts "The log2 of #{$a} is #{log2_result}"
  end
  
  def sinh
    sinh_result = Math.sinh($a) 
    puts "The sinh of #{$a} is #{sinh_result}"
  end
  
  def cosh
    cosh_result = Math.tan($a) 
    puts "The cosh of #{$a} is #{cosh_result}"
  end
  
  def tanh
    tanh_result = Math.tanh($a) 
    puts "The tanh of #{$a} is #{tanh_result}"
  end
end


class Ordinary_value
  def check_ordinary_operator
   if $operator == "+" 
  calling = Class_ordinary.new 
  calling.addition
elsif $operator == "*"
  calling = Class_ordinary.new
  calling.multiplication
elsif $operator == "/"
  calling = Class_ordinary.new 
  calling.division
elsif $operator == "-"
  calling = Class_ordinary.new
  calling.subtraction  
else
  raise ArgumentError, 'Argument is not known by the application at the moment!' unless $b != 0..9999999999999999999999999999999
  raise ArgumentError, 'Argument is not known by the application at the moment again!' unless $a != 0..9999999999999999999999999999999 
end
end
end





class Input_another_value
  def another_value
   puts "Enter your second number here"
   $b = gets.chomp.to_f
   ordinary = Ordinary_value.new
   ordinary.check_ordinary_operator
 end
end


puts "Enter your first number here"
$a = gets.chomp.to_f

puts "Select one operator please!: (+); (-); (/); (*); (sqr); (srt); (sin); (cos); (tan); (log10); (log2); (sinh); (cosh); (tanh)"
$operator = gets.chomp.to_str
callclasstwo = Class_scientific.new
  if $operator == "sqr"
    callclasstwo.square
  elsif $operator == "srt"
    callclasstwo.square_root
  elsif $operator == "sin"
    callclasstwo.sin
  elsif $operator == "cos"
    callclasstwo.cos
  elsif $operator == "tan"
    callclasstwo.tan
  elsif $operator == "log10"
    callclasstwo.log10
  elsif $operator == "log2"
    callclasstwo.log2
  elsif $operator == "sinh"
    callclasstwo.sinh
  elsif $operator == "cosh"
    callclasstwo.cosh
  elsif $operator == "tanh"
    callclasstwo.tanh
  else
    call_Input_another_value = Input_another_value.new 
    call_Input_another_value.another_value
  end





