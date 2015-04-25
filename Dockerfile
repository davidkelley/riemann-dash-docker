# Start with a Ruby install of 2.0.0
# https://index.docker.io/u/paintedfox/ruby/
FROM paintedfox/ruby

MAINTAINER Koala <info@koala.im>

# Ensure latest packages installed
RUN apt-get update

# Install the dashboard gem
RUN gem install riemann-dash --no-doc

WORKDIR /dash

ADD . /dash

RUN ln -s /usr/local/lib/ruby/gems/2.0.0/gems/riemann-dash-0.2.8/config/ /dashconfig
VOLUME /dashconfig

# Default Riemann Dashboard Port Binding
EXPOSE 4567

# Expose the riemann dash gem command
ENTRYPOINT ["riemann-dash"]
