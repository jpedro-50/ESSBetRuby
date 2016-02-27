module SystemUsers

  def find(collection)
    key = gets()
    key.strip!
    if (collection.has_key?(key))
      return collection[key]
    end
  end

  def put(collection, key, value)
    return collection[key] = value
  end

  def rem(collection, key)
    collection.delete[key]
  end

end