FROM ruby:3.2

RUN mkdir /app
WORKDIR /app

COPY . /app/

RUN gem update --system && bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3030

CMD ["rails", "server", "-b", "0.0.0.0"]
