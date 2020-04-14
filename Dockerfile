FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /studentApp
WORKDIR /studentApp
COPY Gemfile* /studentApp/
RUN bundle install
COPY . /studentApp

RUN bundle install
 # Copy over our application code
ADD . /studentApp
# Run our app
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD RAILS_ENV=development bundle exec rails db:create db:migrate db:seed && bundle exec rails s -p ${PORT} -b '0.0.0.0'
