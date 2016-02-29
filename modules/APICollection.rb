module APICollection

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

  def get(collection,key)
    if (collection.has_key?(key))
      return collection[key]
    end
  end

end