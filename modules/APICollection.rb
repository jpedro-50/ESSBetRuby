module APICollection

  def find(collection)
    key = gets()
    key.strip!
    if (collection.has_key?(key))
      return collection[key]
    end
  end

  def put(collection, key, value)
    if(collection.has_key?(key))
      return false
    end

    collection[key] = value
    return true
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