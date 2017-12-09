# PatienceAndFortitude

Command line access to your NYPL account.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'patience_and_fortitude'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install patience_and_fortitude

## Usage

```
17:01:46-sschor~/work/patience_and_fortitude (show-fines)$ nypl-cli
+--------------------------------------------------+
|oooooooooooooooooooooooooooooooooooooooooooooooooo|  _   _                __   __         _      ____        _     _ _
|ooooooooooooooooooooooo++++ooooooooooooooooooooooo| | \ | | _____      __ \ \ / /__  _ __| | __ |  _ \ _   _| |__ | (_) ___
|ooooooooooooooooo+:~.  .:~~~~~~++ooooooooooooooooo| |  \| |/ _ \ \ /\ / /  \ V / _ \| '__| |/ / | |_) | | | | '_ \| | |/ __|
|oooooooooooooo+.  .+++~.:oooo++:..:ooooooooooooooo| | |\  |  __/\ V  V /    | | (_) | |  |   <  |  __/| |_| | |_) | | | (__
|oooooooooooo+..::++~.~+:  ++ooooo+: :ooooooooooooo| |_| \_|\___| \_/\_/     |_|\___/|_|  |_|\_\ |_|    \__,_|_.__/|_|_|\___|
|ooooooooooo+ .:::::. ~:++::..:+oooo+. oooooooooooo|
|oooooooooo+  .::~   oooo+:.++:::+++oo. ooooooooooo|
|oooooooooo .oo:  ++ ooooo+++oo+..  +oo :oooooooooo|  _     _ _
|ooooooooo+ oo .+ +o. :+oooooooo+: :~oo~ oooooooooo| | |   (_) |__  _ __ __ _ _ __ _   _
|ooooooooo+ o: +o  oo:   .+++.::::..+oo~ oooooooooo| | |   | | '_ \| '__/ _` | '__| | | |
|oooooooooo +~ +o+  +oo+:.    :o++. ~++ ~oooooooooo| | |___| | |_) | | | (_| | |  | |_| |
|oooooooooo+   +ooo:  :oooo++.   :+o+  .ooooooooooo| |_____|_|_.__/|_|  \__,_|_|   \__, |
|ooooooooooo+  ~ooooo~  .+ooooo: .ooo..oooooooooooo|                               |___/
|oooooooooooo+. :oooooo~  :oooooo~ . ~ooooooooooooo|
|oooooooooooooo+~.~+++oo+  .ooo+:~.:ooooooooooooooo|
|ooooooooooooooooo+:~~~~~   ...:++ooooooooooooooooo|
|oooooooooooooooooooooo++o+oooooooooooooooooooooooo|
|oooooooooooooooooooooooooooooooooooooooooooooooooo|
+--------------------------------------------------+

⢤
Enter your barcode:  *****************
Enter your pin:  ****

▒  connecting..

1. See My Holds
2. See My Fines
3. Exit

What would you like to do?
2
  +-------+----------------------------------------------------------------------------------+
  | FINE  | TITLE                                                                            |
  +-------+----------------------------------------------------------------------------------+
  | $0.20 | Zog and the flying doctors / by Julia Donaldson & illustrated by Axel Scheffler. |
  | $0.10 | Stick Man / by Julia Donaldson ; illustrated by Axel Scheffler.                  |
  +-------+----------------------------------------------------------------------------------+
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nodanaonlyzuul/patience_and_fortitude.
