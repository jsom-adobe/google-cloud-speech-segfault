FROM ruby:2.7.1-alpine

RUN apk add gcompat
RUN gem install google-cloud-speech

COPY ./google-creds.json .

CMD ruby -e "require 'google/cloud/speech'; Google::Cloud::Speech.speech"
