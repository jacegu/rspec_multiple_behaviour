module A
  
  class MyClass
    
    def greet
      'Hi, I am A::MyClass'
    end

  end

  module B
    
    class MyClass
      
      def greet
        'F*ck you, I am A::B::MyClass'
      end

    end

  end

end

include A

describe MyClass do

  it "RSpec loads A::MyClass class if you include A" do
    MyClass.new.greet.should match /^Hi/
    MyClass.new.greet.should_not match /^F/
  end

end
