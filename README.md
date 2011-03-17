# What Is This?

In the vein of the [html5boilerplate](http://html5boilerplate.com) project, this is a project skeleton that allows you to run [Guard](http://github.com/guard/guard) to refresh your web browser and recompile [Sass](http://sass-lang.com/) files to CSS. You'll probably want to take these files, drop them into your boilerplate-like project and customize to your tastes.

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

# Customize

The file that controls what happens when is your `Guardfile` which is pretty straight forward. The `'livereload'` block has a bundle of `watch` listeners that are file patterns. Whenever any of these files change, any attached web browsers will be reloaded with LiveReload.

If your images directory was actually `images/` and could contain gifs, then you could modify the `Guardfile` line from:

    watch(%r{img/.+\.(png|jpeg|jpg)})

to:

    watch(%r{images/.+\.(gif|png|jpeg|jpg)})

# References

* [Guard](https://github.com/guard/guard)
* [Guard-LiveReload plugin](https://github.com/guard/guard-livereload)
* [Guard-Sass plugin](https://github.com/guard/guard-sass)
* [LiveReload](https://github.com/mockko/livereload)
* [Sass](http://sass-lang.com/)
* [RVM](http://rvm.beginrescueend.com/)
* [Bundler gem](http://gembundler.com/)
