class StaticPagesController < ApplicationController
  before_filter :set_online_users_info

  def home
  	points = RubyVor::Point.generate_random_points(50, 800, 600, 50, 50)
  	comp = RubyVor::VDDT::Computation.from_points(points)
  	@vertices = points.map{|p| [p.x, p.y]}
  	@triangles = comp.delaunay_triangulation_raw
  	#mst = comp.minimum_spanning_tree
    #@mst_edges = mst.keys
  end
end