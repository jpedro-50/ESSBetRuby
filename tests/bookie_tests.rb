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

  def remBookie(name)
    return APICollection.rem(@bookies, name)
  end

  def updateBookie(key,name, password)
    bookie=APICollection.get(@bookies, key)
    if (bookie)
      bookie.name=name
      bookie.password=password
      return true
    end
    return false
  end

end

