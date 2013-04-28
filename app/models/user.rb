class User

  def self.authenticate password
    return new if password == "supersecret"
  end
end
