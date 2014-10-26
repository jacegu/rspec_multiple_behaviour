require 'a/my_class'

include A

describe MyClass do

  it "It loads A class if no module is specified" do
    expect(MyClass.new.greet).to match /^Hi/
    expect(MyClass.new.greet).to_not match /^F/
  end

end
