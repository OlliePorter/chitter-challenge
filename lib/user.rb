class User

  attr_reader :name, :email, :password, :username

  def initialize(name,email,password,username)
    @name = name
    @email = email
    @password = password
    @username = username
  end

end
