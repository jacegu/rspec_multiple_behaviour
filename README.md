This sample code check an unexpected (for me) RSpec behaviour: running multiple specs at once leads to shared namespace, so specs aren't independent and side effects may occur.

In this example, there's a `MyClass` class defined both in `A` and `A::B`. Two specs test both declarations through including the modules. I'd expect them to pass both individually and in the same execution. Nevertheless, running both will make the first fail, since the latter include overrides first (it looks like so).

Run `run.sh` to check.

My guess:

* Since I'm importing modules in the top level of the spec, all class names (as well as anything else defined in the module) are made available at the same scope, thus overriding first definition. That would explain the behaviour if rspec loads every definition before actually running the tests.

Conclusion:

* Never include anything at the top level of an spec.
