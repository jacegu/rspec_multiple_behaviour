require 'a/b/my_class'

include A::B

describe MyClass do

  it "It loads B class if includes A::B" do
    expect(MyClass.new.greet).not_to match /^Hi/
    expect(MyClass.new.greet).to match /^F/
  end

end
