# Prerequisites

You will need to have a Ruby implementation of some kind already installed. If you are on Mac OS X or Linux, then [RVM](http://rvm.beginrescueend.com/) to the rescue:

    bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
    source "$HOME/.rvm/scripts/rvm"
    cat <<BASHRC >> "$HOME/.bash_profile"
     
    [[ -s "\$HOME/.rvm/scripts/rvm" ]] && . "\$HOME/.rvm/scripts/rvm"
    BASHRC
    rvm 1.9.2 install && rvm 1.9.2 --default

You will also need to have the Bundler gem installed. You can install this into your RVM Ruby's global gemset like so:

    rvm use default@global
    gem install bundler
    rvm use default
    
# How To Use

Clone this repo to your machine with:

    git clone git://github.com/fnichol/guard_boilerplate.git

Then change into that directory and run Bundler's `bundle` command to get all the gem dependencies:

    cd guard_boilerplate
    bundle

To start the Guard process, just type:

    ./script/guard
