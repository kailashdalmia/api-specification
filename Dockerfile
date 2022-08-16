FROM ruby:2.7.4

WORKDIR /app

COPY . .

# build steps are copied from github actions
RUN gem update --system 3.1.4 -N
RUN gem install --no-document bundler

RUN bundle config path vendor/bundle
RUN bundle install --jobs 4 --retry 3

EXPOSE 4567

CMD ["bundle", "exec", "nexmo-oas-renderer"]
