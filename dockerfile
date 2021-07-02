<<<<<<< HEAD
FROM ruby:2.5.5
RUN gem install sinatra -v 2.0.5
# We usually only need to run this once
RUN apt update
RUN adduser -D my-sinatra-user
USER my-sinatra-user
WORKDIR /home/my-sinatra-user
# We usually run this every time we add a new dependency
RUN gem install bundler
RUN bundle install
EXPOSE 3000
# Source code
CMD ["ruby", "http_server.rb"]

=======
FROM ruby:2.5.5
RUN gem install sinatra -v 2.0.5
# We usually only need to run this once
RUN apt update
RUN adduser -D my-sinatra-user
USER my-sinatra-user
WORKDIR /home/my-sinatra-user
# We usually run this every time we add a new dependency
RUN gem install bundler
RUN bundle install
EXPOSE 3000
# Source code
CMD ["ruby", "http_server.rb"]

>>>>>>> 47082b4a7550b7fb6c052be1d92f3bd72c1f9bb9
