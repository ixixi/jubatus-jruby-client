# This file is auto-generated from nearest_neighbor.idl(0.5.4-186-g163c6bd) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module NearestNeighbor

class IdWithScore
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TFloat.new)

  def initialize(id, score)
    @id = id
    @score = score
  end

  def to_msgpack(out = '')
    t = [@id, @score]
    return TYPE.to_msgpack(t)
  end

  def IdWithScore.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    IdWithScore.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("id_with_score")
    gen.add("id", @id)
    gen.add("score", @score)
    gen.close()
    return gen.to_s
  end

  attr_reader :id, :score

end

end  # NearestNeighbor
end  # Jubatus
