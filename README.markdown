To reproduce the bug
=============

In binary_requiring_gem folder
-------------

<pre>
$ cd binary_requiring_gem
$ rake build
$ rake install
</pre>

* this installs the binary_requiring_gem 
* all this gem does is require the 'json' gem

In the bundler_project
-------------

<pre>
$ cd bundler_project
$ ruby demo_problem_backtick.rb
$ ruby demo_problem_exec.rb
$ ruby demo_problem_system.rb
</pre>

This error comes up
-------------

<pre>
$ ruby demo_problem_backticks.rb 
/Users/tung/.rvm/gems/ruby-1.9.2-p180/gems/bundler-1.0.21/lib/bundler/rubygems_integration.rb:143:in `block in replace_gem': binary_requiring_gem is not part of the bundle. Add it to Gemfile. (Gem::LoadError)
  from /Users/tung/.rvm/gems/ruby-1.9.2-p180/bin/binary_requiring_gem:18:in `<main>'
$ ruby demo_problem_exec.rb 
/Users/tung/.rvm/gems/ruby-1.9.2-p180/gems/bundler-1.0.21/lib/bundler/rubygems_integration.rb:143:in `block in replace_gem': binary_requiring_gem is not part of the bundle. Add it to Gemfile. (Gem::LoadError)
  from /Users/tung/.rvm/gems/ruby-1.9.2-p180/bin/binary_requiring_gem:18:in `<main>'
$ ruby demo_problem_system.rb 
/Users/tung/.rvm/gems/ruby-1.9.2-p180/gems/bundler-1.0.21/lib/bundler/rubygems_integration.rb:143:in `block in replace_gem': binary_requiring_gem is not part of the bundle. Add it to Gemfile. (Gem::LoadError)
  from /Users/tung/.rvm/gems/ruby-1.9.2-p180/bin/binary_requiring_gem:18:in `<main>'
$ 
</pre>

I've tired using system, backticks and exec and they all reproduce the same problem.  So, you can't call a system call for any binary that depends on any gem.  
