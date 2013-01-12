class User
 attr_accessor :name, :email

  def initialize(attributes = {})
 		@name  = attributes[:name]
  		@email = attributes[:email]
  end

  def formatted_email
 		"#{@name} <#{@email}"
   end

   def test1(pass)
    	"#{@name}  : #{pass}"
    end

    def self.method1
    	p "method"
    end
 end