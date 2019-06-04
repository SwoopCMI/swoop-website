# swoop-website

Welcome to your new Jekyll theme! In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

TODO: Delete this and the text above, and describe your gem


## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "swoop-website"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: swoop-website
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install swoop-website

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hello. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `swoop-website.gemspec` accordingly.

## Getting started
You will need at least Ruby version 2.2.5 – run `ruby -v` to check your version number. If you have a Ruby version lower than 2.2.5 the quickest way to get set up is using `rvm`. [Instructions here](https://rvm.io/rvm/install#1-download-and-run-the-rvm-installation-script).

You will also need to install Jekyll and Bundler. 

```
gem install jekyll
gem install bundler
```

Once this has been done you should also download any dependencies using `bundler` 
```
bundle install
```

Now you should be able to start the Jekyll server (if any further steps are required, feel free to update this document!)
```
jekyll serve
```

If all has gone to plan you should be able to view the site at [http://127.0.0.1:4000](http://127.0.0.1:4000).

## Setting up a preview URL using ngrok
If you need to publish your local Jekyll server for any reason this can be done using Ngrok. First, [download ngrok](https://ngrok.com/download).

Once the ngrok application has been downloaded, move it into your Applications directory (You may need to unzip it first). 
```
mv ~/Downloads/ngrok ~/Applications
```

Create a symlink to the Ngrok application so it's launchable from any directory on the command line. Cd into your local bin directory
```
cd /usr/local/bin
```

Create the symlink
```
ln -s /Applications/ngrok ngrok
```

To test everything is working, run
```
ngrok
```

To publish the local Jeykll server, make sure the Jekyll server is running. Start it using
```
jekyll serve
```

Now you can publish your local server using
```
ngrok http 127.0.0.1:4000
```

Happy testing!

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

