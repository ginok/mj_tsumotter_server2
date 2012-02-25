require 'mlfielib/geom/point'
require 'mlfielib/fitting/line_fitting'
require 'mlfielib/fitting/least_median_squares_line_fitting'

module Mlfielib
  module CV
    class Filter
      attr_reader :origin, :vector
      def filter(pailist)
        error_ratio = 10.0 / pailist.size > 0.5 ? 0.5 : 10.0 / pailist.size
        fitting = Mlfielib::Fitting::LeastMedianSquaresParamSearch.new(Mlfielib::Fitting::LMSLineFittingModel.new(pailist.select{|pai| pai.direction == :top}), error_ratio)
        intercept, slope = fitting.search
        @origin = create_origin(intercept)
        @vector = create_vector(slope)
        pailist.select do |pai|
          nearby_line?(pai, @origin, @vector)
        end
      end
  
      def nearby_line?(pai, ori, vec)
        pai.distance_from_line(ori, vec) < pai.height * 0.5
        #TODO fix it!
        #pai.distance_from_line(ori, vec) < 28
      end
  
      def create_origin(intercept)
        Mlfielib::Geom::Point.new(0, intercept)
      end
      def create_vector(slope)
        Mlfielib::Geom::Point.new(1, slope)
      end
    end
  end
end
