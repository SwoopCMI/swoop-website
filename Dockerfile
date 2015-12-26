FROM nginx
MAINTAINER Ruel <ragaballe@gmail.com>

RUN apt-get update

# required to build certain native gem extensions depended on by
# jekyll
RUN apt-get install -y make

# required to build 'therubyracer' native gem extension
RUN apt-get install -y g++

# required to clone the site and keep it up to date
RUN apt-get install -y git

# required to listen on $HOOKPORT for update notifications requests
# from GitHub
RUN apt-get install -y netcat

# The -dev version of Ruby 1.9.1 is necessary to avoid
# "cannot load such file -- mkmf (LoadError)" error when installing
# Jekyll.
# See http://askubuntu.com/questions/305884/how-to-install-jekyll
RUN apt-get install ruby-full -y

# Python 3 is installed by default, but this creates a conflict with
# the Pygments highlighting library. The solution is to install
# Python 2.7 and ensure it is available on the $PATH as `python2`.
RUN apt-get install -y python2.7
RUN ln -s /usr/bin/python2.7 /usr/bin/python2

# install the latest jekyll version (2.3.0 at time of writing)
RUN gem install jekyll

# install bundler
RUN gem install bundler

# required to avoid ExecJS::RuntimeUnavailable errors when running
# jekyll. See https://github.com/jekyll/jekyll/issues/2327
RUN gem install execjs therubyracer

# clone the site itself
RUN git clone git@github.com:longhairedmedia/swoop-website.git