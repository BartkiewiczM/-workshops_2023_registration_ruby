class CountElements
  def initialize(arr)
    @arr = arr
  end

  def perform
    result = Hash.new(0)
    @arr.each { |elem| result[elem] += 1 }
    result
  end
end
