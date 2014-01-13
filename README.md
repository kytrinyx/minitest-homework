# Minitest::Homework

This is a very, very dirty hack to make it easier to teach
fundamental ruby concepts using test suites.

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-homework'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-homework

## Usage

```ruby
require minitest/autorun
require minitest/pride
require minitest/homework

class SomethingTest < Minitest::Homework
  def test_something
    assert_equal __, "testing"
  end

  def test_boolean
    maybe "abc" < "ABC"
    maybe "abc" > "ABC"
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
