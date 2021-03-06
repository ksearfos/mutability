# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mutability/version'

Gem::Specification.new do |s|
  s.name        = 'mutability'
  s.version     = Mutability::VERSION
  s.licenses    = ['MIT']
  s.summary     = "Arrays and Hashes that retain their original identities, \
even after modification"
  s.description = <<EOS
Mutability is a module that provides the very simple ability to designate an \
"original" version of an object that is frozen, and will not change even if \
the working copy of the object does. The best example is a Hash or Array \
-- collections like those exist partly so they can be mutated in some way, \
either by adding or removing elements or changing their order.  Now, rather \
than having to establish a separate "original" version of the object (not to \
mention dealing with the whole ivars-act-like-pointers-and-can-get-magically-\
changed-oops problem), you can use a MutableHash or MutableArray, and then \
change it to your heart's content.

The MutableHash/Array are built from the Mutability mix-in, so downloading \
this gem also provides a library for you to add the same capabilities to any \
other Class you might want.

Also included is the ability to revert to the original form with a single \
method call.
EOS
  s.authors     = ['Kelli Searfos']
  s.email       = 'ksearfos@covermymeds.com'
  s.files        = `git ls-files lib`.split("\n")
  s.require_path = 'lib'
  s.rubygems_version = '>= 2.0.0'
  s.homepage    = 'https://github.com/ksearfos/mutability'

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'gem-release'
end
