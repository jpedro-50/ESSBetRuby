require_relative "../models/bookie"
require_relative "../modules/APICollection"
include APICollection



class BookieTests

  @bookies={}

  def initialize
    @bookies = Hash.new
  end

  def addBookie(name, password)
    bookie = Bookie.new(name, password)
    return APICollection.put(@bookies, bookie.name, bookie)
  end

end

