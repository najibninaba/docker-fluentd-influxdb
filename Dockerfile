FROM fluent/fluentd:latest
MAINTAINER Najib Ninaba <najibninaba@gmail.com>
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH
RUN gem install fluent-plugin-mqtt fluent-plugin-influxdb fluent-plugin-reassemble
EXPOSE 24284
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
