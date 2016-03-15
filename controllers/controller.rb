class Controller

  def initialize(view=nil, model=nil)
    @view = view
    @model = model
  end

  def setView(view)
    @view=view
  end

  def getView
    @view
  end

  def setModel(model)
    @model=model
  end

  def getModel
    @model
  end
end