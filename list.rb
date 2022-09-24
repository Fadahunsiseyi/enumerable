require_relative 'myenumerable'

class List
  include MyEnumerable
  def initialize(*args)
    @lists = args
  end
