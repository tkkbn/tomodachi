require 'tomodachi/version'
require 'tomodachi/auth'
require 'tomodachi/client'
require 'tomodachi/diff'

module Tomodachi
  # Twitter for iPhone consumer
  CONSUMER_KEY = 'IQKbtAYlXLripLGPWd0HUA'
  CONSUMER_SECRET = 'GgDYlkSvaPxGxC4X8liwpUoqKwwr3lCADbz8A7ADU'

  def self.setup
    case ARGV[0]
    when 'auth'
      auth = Tomodachi::Auth.new
      auth.create
    when 'accounts'
      Tomodachi::Auth.list
    # # pending
    # when 'start'
    #   if ARGV[1]
    #     Tomodachi::Client.start(ARGV[1])
    #   else
    #     puts 'Usage: tomodachi start [screen_name]'
    #   end
    when 'diff'
      if ARGV[1]
        Tomodachi::Diff.show(ARGV[1])
      else
        puts 'Usage: tomodachi diff [screen_name]'
      end
    else
      puts <<-EOS
tomodachi auth                # add account
tomodachi accounts            # authenticated account list
tomodachi diff [screen_name]  # show your diff between following and follower
      EOS
    end
  end
end
