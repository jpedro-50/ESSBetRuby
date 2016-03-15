
## Validações de INPUT

module Validation

  def validateString(string)
     return /^[A-Za-z]+/.match(string)
    end

    def validateEmail(email)
      return /^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+/.match(email)
    end

    def validatePassword(password)
      return /^[A-Za-z0-9]+/.match(password)
    end

  end