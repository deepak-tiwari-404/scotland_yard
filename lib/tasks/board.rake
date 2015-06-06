require 'csv'
CITY_FILE = "cities.csv"
ROUTE_FILE = "routes.csv"
DEFAULT_BOARD = {name: 'map.jpg', width: 1019, height: 809}
namespace :board do
  desc 'Setup the sample scotland network board'
  task :populate => :environment do
    board = Board.find_or_create_by(DEFAULT_BOARD)
    populate_cities(board) unless City.exists?
    populate_routes(board) unless Route.exists?
  end

  private

  def populate_cities(board)
    data = CSV.read(CITY_FILE)
    ActiveRecord::Base.transaction do
      data.each do |x|
        board.cities.create!(name: x[0], x_loc: x[1], y_loc: x[2])
      end
    end
  end

  def populate_routes(board)
    data = CSV.read(ROUTE_FILE)
    cities_map = {}
    cities_scope = board.cities.where(name: data.map{|x| x[0..1]}.flatten.uniq)
    cities_scope.find_each do |city|
      cities_map[city.name] = city.id
    end
    ActiveRecord::Base.transaction do
      data.each do |x|
        Route.create!(from_id: cities_map[x[0]], to_id: cities_map[x[1]], mode: x[2])
      end
    end
  end
end