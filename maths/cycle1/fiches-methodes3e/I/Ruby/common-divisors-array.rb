module CommonDivisorsArray
  def common_divisors_array(array1, array2)
    j = k =  0
    array3 = Array.new
    if array1.size <= array2.size then
      for i in array1
        for j in array2
          if i == j then
            array3[k] = i
            k += 1
          end
          j += 1
        end
        j = 0
      end
    else
      for i in array2
        for j in array1
          if i == j then
            array3[k] = i
            k += 1
          end
        end
      end
    end
    return array3
  end
end

