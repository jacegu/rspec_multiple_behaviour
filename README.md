This sample code check an unexpected (for me) RSpec behaviour: running multiple specs at once leads to shared namespace, so specs aren't independent.

In this example, `MyClass` is defined both in `A` and `A::B`. Two specs check including the modules lead to expected behaviour. Nevertheless, running both will make the first fail, since the latter include overrides first.

Run `run.sh` to check.

My guess:

* Since I'm importing modules in the top level of the spec, all class names (as well as anything else defined in the module) are made available at the same scope, thus overriding first definition. That would only explain the behaviour with rspec loading all definitions before actually running the tests.

Conclusion:

* Never include anything at the top level of an spec.
* Wrap spec inside a module if you want to use include badly. Take a look at `top_level_fix` branch.
