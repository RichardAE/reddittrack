require 'faraday'
require 'redditkit/error'

module RedditKit

  # Methods for handling responses from reddit.
  module Response

    # Middleware for detecting errors from response codes and bodies.
    class RaiseError < Faraday::Response::Middleware
      def on_complete(env)
        status_code = env[:status]
        body = env[:body]
        logger = Logger.new(STDOUT)
        logger.info("test")
        logger.info("test")
        logger.info("test")
        logger.info("test")
        logger.info(status_code)
        logger.info(status_code)
        logger.info(status_code)
        logger.info("test")
        logger.info("test")
        logger.info("test")
        logger.info("test")

        error = RedditKit::Error.from_status_code_and_body(status_code, body)
        fail error if error
      end
    end
  end
end
