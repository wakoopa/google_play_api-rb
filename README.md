# Google Play Store API for Ruby

API for Google Play in Ruby

*Work in progress*

## Installation

Install the gem:

    gem install google_play_api-rb

## Usage

Always start by creating a new market session:

    session = GooglePlayApi::MarketSession.new('test@example.com', 'password123')
    session.login

### Searching for apps

For example, search for WhatsApp:

    query = GooglePlayApi::SearchApp.new(query: 'Whats App')
    session.execute(query)

You now, should see the results:


## Development requirements

First install protoc:

    wget http://protobuf.googlecode.com/files/protobuf-2.5.0rc1.tar.gz
    tar -xzf protobuf-2.5.0rc1.tar.gz
    ./configure
    make
    sudo make install



