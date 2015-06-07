class StaticPagesController < ApplicationController
  def contact
  end

  def help
  	points = RubyVor::Point.generate_random_points(100, 1000, 800)
  	comp = RubyVor::VDDT::Computation.from_points(points)
  	@vertices = points.map{|p| [p.x, p.y]}
  	@triangles = comp.delaunay_triangulation_raw
  	#mst = comp.minimum_spanning_tree
    #@mst_edges = mst.keys
  end
end