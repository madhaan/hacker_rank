class GeometricSeries
  def sum_terms(n)
    # your code here
      collection = generate_collection(n)
      puts "#{collection}"
      collection.reduce(0, :+) 
  end
  def generate_collection(n)
    (0..n).map{|x| (x*x) + 1}
  end
end
output = GeometricSeries.new.sum_terms(25)
puts "#{output}"

