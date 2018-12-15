# 大和魂

rubyに大和魂を注入するgem!!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yamatodamashii'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yamatodamashii

## Usage

使いたいクラスに大和魂を注入!!

```ruby
class Hoge
  include Yamatodamashii

end
```

### if

```ruby
# before
if xxx
  'if'
elsif yyy
  'elsif1'
elsif zzz
  'elsif2'
else
  'else'
end

# after
もし(xxx).だったら{'if'}
.または(yyy).だったら{'elsif1'}
.または(zzz).だったら{'elsif2'}
.それ以外だったら{'elsif2'}
.。
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ham0215/yamatodamashii. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Yamatodamashii project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ham0215/yamatodamashii/blob/master/CODE_OF_CONDUCT.md).
