# Start with a Ruby install of 2.0.0
# https://index.docker.io/u/paintedfox/ruby/
FROM paintedfox/ruby

MAINTAINER Koala <info@koala.im>

RUN apt-get update && \
    apt-get install -y ca-certificates

RUN gem install riemann-dash -v '0.2.12' --no-doc

WORKDIR /dash

ADD . /dash

RUN ln -s /usr/local/lib/ruby/gems/2.0.0/gems/riemann-dash-0.2.12/config/ /dashconfig
VOLUME /dashconfig

EXPOSE 4567

ENTRYPOINT ["riemann-dash"]
