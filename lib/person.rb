class Person
  def initialize(name, surname = nil)
    @name = name.capitalize
    @surname = surname&.capitalize
  end

  def say_hello
    [@name, @surname].compact.join(' ')
  end

  def peter?
    @name.eql?('Peter')
  end

  def double_surname?
    @surname.include?(' ') || @surname.include?('-')
  end
end
