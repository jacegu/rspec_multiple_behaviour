require_relative './module_a'

module SPEC_A

  include A

  describe MyClass do

    it "It loads A class if no module is specified" do
      MyClass.new.greet.should match /^Hi/
      MyClass.new.greet.should_not match /^F/
    end

  end

end
