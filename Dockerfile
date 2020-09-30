FROM ruby:2.5

EXPOSE 3000
WORKDIR /usr/src/app

RUN apt-get update -qq && apt-get install -y nodejs npm
RUN npm install -g yarn

ENV RAILS_ENV production

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Copy gems files
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

# Intall gems
RUN bundle install
RUN yarn install

# Copy files from my local folder
COPY . .
CMD ["bundle","exec","rails","server","-b", "0.0.0.0"]
