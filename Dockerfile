FROM madetech/ruby:2.2.3

RUN mkdir -p /app
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5
EXPOSE 5000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-p", "5000"]
