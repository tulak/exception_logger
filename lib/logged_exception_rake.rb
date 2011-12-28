# Copyright (c) 2008-2009 Zhurbiy Oleg aka Ol.keene
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

class LoggedExceptionRake
  module RakeExt
    def create_from_rake_exception(exception, rake_task, environment)
      message = exception.message.inspect
      max = environment.keys.max { |a,b| a.length <=> b.length }

      env = environment.keys.sort.inject [] do |env, key|
        env << '* ' + ("%-*s: %s" % [max.length, key, environment[key].to_s.strip])
      end

      e = create! :exception_class => exception.class.name,
              :controller_name => 'RakeTask',
              :action_name     => rake_task.name,
              :message         => message,
              :backtrace       => exception.backtrace,
              :environment     => (env << "* Process: #{$$}") * "\n",
              :request         => ''

      deliver_exception(e)
    end
  end
  
  class << self
    def save_exception(e, rake_task, env)
#     TODO envoronment not saving fully..wtf?
      LoggedException.create_from_rake_exception(e, rake_task, env)
    end
  end
end

LoggedException.extend LoggedExceptionRake::RakeExt