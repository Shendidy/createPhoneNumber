class CreateNewPhone
  def joinNumbers(arr)
    arr.join.length < 10 ? 'Array must contain 10 digits' : arr.join() 
  end

  def createPhoneNumber(arr)
    number = joinNumbers(arr)
    number == 'Array must contain 10 digits' ? number : "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end
