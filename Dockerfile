# Start with a Ruby install of 2.0.0
# https://index.docker.io/u/paintedfox/ruby/
FROM paintedfox/ruby

MAINTAINER Koala <info@koala.im>

# Ensure latest packages installed
RUN apt-get update

# Install the dashboard gem
# RUN gem install thin -v 1.6.2 --no-doc
RUN gem install riemann-dash -v 0.2.4 --no-doc

WORKDIR /dash

ADD . /dash

# Default Riemann Dashboard Port Binding
EXPOSE 4567

# Expose the riemann dash gem command
ENTRYPOINT ["riemann-dash"]