class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    return false if @password.length < 6 || @password.length > 24
    return false unless @password.match(/[A-Z]/)
    return false unless @password.match(/[a-z]/)
    return false unless @password.match(/[0-9]/)
    return false unless @password.match(/[!@#\$%\^&\*\(\)_\+\-=\[\]{};':"\\|,.<>\/\?]/)
    return false if @password.scan(/(\w)\1{2,}/).any?
    true
  end
end
