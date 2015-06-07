module RubyVor
  class Point
    attr_reader :x, :y

    def self.generate_random_points(number_of_vertices, x_limit=600, y_limit=400, x_offset=10, y_offset=10)
      x_factor = (x_limit-2.0*x_offset)/number_of_vertices;
      y_factor = y_limit-2*y_offset
      (0...number_of_vertices).map { |i| Point.new(i*x_factor+x_offset, (y_factor * rand).to_i + y_offset) }
    end

    def initialize(x=0.0,y=0.0)
      raise TypeError, 'Must be able to convert point values into floats' unless x.respond_to?(:to_f) && y.respond_to?(:to_f)
      @x = x.to_f
      @y = y.to_f
    end

    def <=>(p)
      (@x != p.x) ? @x <=> p.x : @y <=> p.y
    end

    def <(p)
      (self <=> p) == -1
    end

    def >(p)
      (self <=> p) == 1
    end
    
    def ==(p)
      @x == p.x && @y == p.y
    end
    alias :eql? :==

    def to_s
      "(#{@x},#{@y})"
    end    

  end
end
