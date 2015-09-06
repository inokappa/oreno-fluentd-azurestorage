FROM ruby
MAINTAINER inokappa
RUN apt-get update
RUN gem install fluentd fluent-plugin-azurestorage fluent-mixin-config-placeholders --no-ri --no-rdoc
RUN gem uninstall azure --version '0.7.0' --ignore-dependencies
RUN gem install azure --version '0.6.4' --no-ri --no-rdoc
RUN mkdir /app
ADD test.conf.template /app/test.conf.template
ADD start.sh /app/start.sh
RUN chmod 755 /app/start.sh
CMD /app/start.sh
