module Subject
  @observers = []

  def initialize
    @observers = Array.new
  end

  def addObserver(observer)
   @observers.push(observer)
  end

  def removeObserver(observer)
    @observers.delete(observer)
  end

  def notifyObservers

    @observers.each do |observer|
      observer.update(observer.notification)
    end
  end
end