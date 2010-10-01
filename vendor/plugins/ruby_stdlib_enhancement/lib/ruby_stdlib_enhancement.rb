class Array
  def / len
    a = []
    each_with_index do |x,i|
      a << [] if i % len == 0
      a.last << x
    end
    a
  end
end