# Initializes all page objects
class Pages

  attr_accessor :create_account

  def initialize
    @create_account = CreateAccountPage.new
  end

end