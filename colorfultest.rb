def colorful?(number)
  return false unless number.is_a? Integer

  int_array = number.digits.reverse

  return false if int_array.length > 3

  return true if int_array.length == 1

  final_array = []
  final_array << int_array

  case int_array.length
  when 3
    product_one = int_array[0] * int_array[1]
    final_array << product_one
    product_two = int_array[1] * int_array[2]
    final_array << product_two
    product_three = int_array[0] * int_array[1] * int_array[2]
    final_array << product_three
  when 2
    product_one = int_array[0] * int_array[1]
    final_array << product_one
  end

  if final_array.flatten.uniq == final_array.flatten
    return true
  else
    return false
  end
end
