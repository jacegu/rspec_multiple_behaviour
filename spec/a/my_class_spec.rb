require 'a/my_class'

describe A::MyClass do

  it "It loads A class if no module is specified" do
    expect(subject.greet).to match /^Hi/
    expect(subject.greet).to_not match /^F/
  end

end
