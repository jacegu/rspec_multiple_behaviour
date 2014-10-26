require 'a/b/my_class'

describe A::B::MyClass do

  it "It loads B class if includes A::B" do
    expect(subject.greet).not_to match /^Hi/
    expect(subject.greet).to match /^F/
  end

end
