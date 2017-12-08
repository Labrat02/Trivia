FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails bundler
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install
COPY . .
CMD bundle exec rails s -p 3000 -b '0.0.0.0'