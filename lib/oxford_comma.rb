def oxford_comma(array)
    oxford_comma = ""
    oxford_last = ""

    if (array.size == 1)
        oxford_comma = array.join
    elsif (array.size == 2)
        oxford_last = array[-1]
        array.pop
        oxford_comma = array.join()
        oxford_comma << " and " << oxford_last
    else 
        oxford_last = array[-1]
        array.pop
        oxford_comma = array.join(", ")
        oxford_comma << ", and " << oxford_last
    end
    
    oxford_comma
end

puts oxford_comma([
    'antifungal',
    'antifungals',
    'bifunctional',
    'cofunction',
    'cofunctions'])

