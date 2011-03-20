# WTF?

In the vein of the [HTML5 Boilerplate](http://html5boilerplate.com) project, this is a simple script that allows you to run [Guard](http://github.com/guard/guard) to refresh your web browser and optionally recompile [Sass](http://sass-lang.com/) files to CSS and/or [Haml](http://haml-lang.com/) files to HTML. Just install it, run`gbp start` in your project directory root and you're off to the races. A Guardfile gets created which you can customize to your tastes.

# tl;dr

Impatient? Have Ruby installed and understand what a gem is? Use the Boilerplates? Rocking Sass and Haml? Great!

1. Install the [LiveReload](https://github.com/mockko/livereload#readme) extension in your browser
2. Install guard_boilerplate and start a new project:
        gem install guard_boilerplate
        mkdir my_site && cd my_site
        curl -L 'https://github.com/paulirish/html5-boilerplate/tarball/v1.0rc' | tar -xzf - --strip-components 1
        gbp hamlize && gbp sassify
        gbp start
3. Hit the LiveReload **LR** button in your browser
4. Edit!

Confused? Read on...

# Before!

## Ruby

You will need to have Ruby already installed on your system, but chances are you do already.

### Mac OS X And Linux (RVM)

If you are on Mac OS X or Linux, then [RVM](http://rvm.beginrescueend.com/) to the rescue:

    bash < <( curl http://rvm.beginrescueend.com/releases/rvm-install-head )
    source "$HOME/.rvm/scripts/rvm"
    cat <<BASHRC >> "$HOME/.bash_profile"
     
    [[ -s "\$HOME/.rvm/scripts/rvm" ]] && . "\$HOME/.rvm/scripts/rvm"
    BASHRC
    rvm 1.9.2 install && rvm 1.9.2 --default

### Windows (Rails Installer)

This is slighty more than you'll need, but do yourself a favor and use the [Rails Installer](http://railsinstaller.org/) for Windows. It's fast, painless and as a bonus you'll be ready to crank out a [Ruby on Rails](http://rubyonrails.org/) or [Sinatra](http://www.sinatrarb.com/) web application in 5 minutes flat. \[*pause...*\] See, wasn't that easy?

## LiveReload Browser Extension

Secondly, you will need to install the LiveReload browser extension into your browser-du-jour ([Chrome Chrome Chome!](http://google.com/chrome)). For more detailed instructions, see the LiveReload's [github README](https://github.com/mockko/livereload) and look for the extension installation section.

# Install!

Are you ready?

    gem install guard_boilerplate

Now give yourself a slap on the back.

# Use!

## Refresh Automatically

Change directory into your new web-wonder project directory, and start the listener:

    cd my_site
    gbp start

Using the bassass [HTML5 Boilerplate](http://html5boilerplate.com/) as your base? I thought
so. Try this one out, my Mac and Linux pals:

    mkdir my_site && cd my_site
    curl -L 'https://github.com/paulirish/html5-boilerplate/tarball/v1.0rc' | tar -xzf - --strip-components 1
    gbp start

LiveReload needs to refresh an `http://` URL (rather than a `file://`), so an embedded HTTP server will fire up by default on port 3000 thanks to the [WEBrick guard](https://github.com/fnichol/guard-webrick).

Finally, if you're sitting there with your browser page open, don't forget to activate the LiveReload extension. Otherwise, it's going to get pretty darn boring. Open your `my_site` project in your text editor, update `index.html`, save, and marvel ;)

## Sass Up Your Stylesheets

Would you rather author Sass stylesheets? Migrate your `*.css` files to `*.scss` files automatically:

    gbp sassify

Your CSS files will be generated back into `css/` on save. Sweet.

## Haml Your Markup

If Haml is your bag, then you can also convert your `*.html` files to `*.haml` with a quick round of:

    gbp hamlize

## Minify Your Haml And SASS Output

To compress your HTML and CSS output (suitable for production):

    gbp minify

## Prettify Your Haml And Sass Output

To generate all your HTML and CSS output (suitable for development):

    gbp prettify

# Customize!

The file that controls "what happens when" is your `Guardfile` which is pretty straight forward. The `'livereload'` block has a bundle of `watch` listeners that are file patterns. Whenever any of these files change, any attached web browsers will be reloaded with LiveReload.

If your images directory was actually `images/` and could contain gifs, then you could modify the `Guardfile` line from:

    watch(%r{img/.+\.(png|jpeg|jpg)})

to:

    watch(%r{images/.+\.(gif|png|jpeg|jpg)})

If you need the HTTP server to run on another port, update the `'webrick'` block to:

    guard 'webrick', :port => 8080 do
    end

Don't worry, your web browser will keep up.

# Profit!

Just fill in your [Step 2](http://www.youtube.com/watch?v=y-eak9Jz3_k) and you're on your way.

# Development

* Source hosted at [GitHub](http://github.com/fnichol/guard_boilerplate).
* Report Issues/Questions/Feature requests on [GitHub Issues](http://github.com/fnichol/guard_boilerplate/issues).

Pull requests are very welcome!

# Authors

* [Fletcher Nichol](http://github.com/fnichol) ([@fnichol](http://twitter.com/fnichol))

Special credit to [Natasha Nunn](http://github.com/nnunn) ([@nnunny](http://twitter.com/nnunny)) for giving me the lunch hour power project idea

# References

* [Guard](https://github.com/guard/guard)
* [Guard-LiveReload plugin](https://github.com/guard/guard-livereload)
* [Guard-Sass plugin](https://github.com/guard/guard-sass)
* [Guard-WEBrick plugin](https://github.com/fnichol/guard-webrick)
* [LiveReload](https://github.com/mockko/livereload)
* [Sass](http://sass-lang.com/)
* [RVM](http://rvm.beginrescueend.com/)
* [Rails Installer](http://railsinstaller.org)
