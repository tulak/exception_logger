Factory.define :logged_exception do |le|
  le.exception_class "FunnyError"
 le.controller_name "main"
  le.action_name "index"
  le.message "Bender: Ahhh, what an awful dream. Ones and zeroes everywhere... and I thought I saw a two.
Fry: Don't worry, Bender: there's no such thing as two."
  le.backtrace "[RAILS_ROOT]/app/controllers/main_controller.rb:8:in `initialize'
[RAILS_ROOT]/app/controllers/main_controller.rb:8:in `initialize'
[RAILS_ROOT]/app/controllers/main_controller.rb:8:in `exception'
[RAILS_ROOT]/app/controllers/main_controller.rb:8:in `raise'
[RAILS_ROOT]/app/controllers/main_controller.rb:8:in `index'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/implicit_render.rb:4:in `send_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/implicit_render.rb:4:in `send_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/abstract_controller/base.rb:136:in `process_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/rendering.rb:11:in `process_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/abstract_controller/callbacks.rb:18:in `process_action'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:449:in `_run__557109792__process_action__199225275__callbacks'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:404:in `send'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:404:in `_run_process_action_callbacks'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:93:in `send'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:93:in `run_callbacks'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/abstract_controller/callbacks.rb:17:in `process_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/instrumentation.rb:30:in `process_action'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/notifications.rb:52:in `instrument'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/notifications.rb:52:in `instrument'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/instrumentation.rb:29:in `process_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/rescue.rb:17:in `process_action'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/abstract_controller/base.rb:105:in `process'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/abstract_controller/rendering.rb:40:in `process'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal.rb:133:in `dispatch'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal/rack_delegation.rb:14:in `dispatch'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_controller/metal.rb:173
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/routing/route_set.rb:62:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/routing/route_set.rb:62:in `dispatch'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/routing/route_set.rb:27:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-mount-0.6.9/lib/rack/mount/route_set.rb:148:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-mount-0.6.9/lib/rack/mount/code_generation.rb:89:in `recognize'
/usr/lib/ruby/gems/1.8/gems/rack-mount-0.6.9/lib/rack/mount/code_generation.rb:66:in `optimized_each'
/usr/lib/ruby/gems/1.8/gems/rack-mount-0.6.9/lib/rack/mount/code_generation.rb:88:in `recognize'
/usr/lib/ruby/gems/1.8/gems/rack-mount-0.6.9/lib/rack/mount/route_set.rb:139:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/routing/route_set.rb:489:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/static.rb:30:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/head.rb:14:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/methodoverride.rb:24:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/params_parser.rb:21:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/flash.rb:177:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/session/abstract_store.rb:149:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/cookies.rb:268:in `call'
/usr/lib/ruby/gems/1.8/gems/activerecord-3.0.0.rc/lib/active_record/query_cache.rb:32:in `call'
/usr/lib/ruby/gems/1.8/gems/activerecord-3.0.0.rc/lib/active_record/connection_adapters/abstract/query_cache.rb:28:in `cache'
/usr/lib/ruby/gems/1.8/gems/activerecord-3.0.0.rc/lib/active_record/query_cache.rb:12:in `cache'
/usr/lib/ruby/gems/1.8/gems/activerecord-3.0.0.rc/lib/active_record/query_cache.rb:31:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/callbacks.rb:46:in `call'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/callbacks.rb:410:in `_run_call_callbacks'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/callbacks.rb:44:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/sendfile.rb:107:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/remote_ip.rb:48:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/show_exceptions.rb:48:in `call'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/rack/logger.rb:13:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/runtime.rb:17:in `call'
/usr/lib/ruby/gems/1.8/gems/activesupport-3.0.0.rc/lib/active_support/cache/strategy/local_cache.rb:72:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/lock.rb:11:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/lock.rb:11:in `synchronize'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/lock.rb:11:in `call'
/usr/lib/ruby/gems/1.8/gems/actionpack-3.0.0.rc/lib/action_dispatch/middleware/static.rb:30:in `call'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/application.rb:168:in `call'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/application.rb:77:in `send'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/application.rb:77:in `method_missing'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/rack/log_tailer.rb:15:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/content_length.rb:13:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/chunked.rb:15:in `call'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/handler/mongrel.rb:67:in `process'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:159:in `process_client'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:158:in `each'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:158:in `process_client'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:285:in `run'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:285:in `initialize'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:285:in `new'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:285:in `run'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:268:in `initialize'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:268:in `new'
/usr/lib/ruby/gems/1.8/gems/mongrel-1.1.5/lib/mongrel.rb:268:in `run'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/handler/mongrel.rb:38:in `run'
/usr/lib/ruby/gems/1.8/gems/rack-1.2.1/lib/rack/server.rb:213:in `start'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/commands/server.rb:65:in `start'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/commands.rb:30
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/commands.rb:27:in `tap'
/usr/lib/ruby/gems/1.8/gems/railties-3.0.0.rc/lib/rails/commands.rb:27
script/rails:6:in `require'
script/rails:6"
  le.environment "* GATEWAY_INTERFACE                              : CGI/1.2
* HTTP_ACCEPT                                    : text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
* HTTP_ACCEPT_CHARSET                            : ISO-8859-1,utf-8;q=0.7,*;q=0.7
* HTTP_ACCEPT_ENCODING                           : gzip,deflate
* HTTP_ACCEPT_LANGUAGE                           : de-de,de;q=0.8,en-us;q=0.5,en;q=0.3
* HTTP_CACHE_CONTROL                             : max-age=0
* HTTP_CONNECTION                                : keep-alive
* HTTP_HOST                                      : bender:3000
* HTTP_KEEP_ALIVE                                : 115
* HTTP_USER_AGENT                                : YourPreferedBrowser
* HTTP_VERSION                                   : HTTP/1.1
* PATH_INFO                                      : /
* QUERY_STRING                                   :
* REMOTE_ADDR                                    : localhost
* REQUEST_METHOD                                 : GET
* REQUEST_PATH                                   : /
* REQUEST_URI                                    : /
* SCRIPT_NAME                                    :
* SERVER_NAME                                    : bender
* SERVER_PORT                                    : 3000
* SERVER_PROTOCOL                                : HTTP/1.1
* SERVER_SOFTWARE                                : Mongrel 1.1.5
* action_controller.instance                     : #<MainController:0xb6bb49f8>
* action_dispatch.cookies                        : langen
* action_dispatch.parameter_filter               : passwordpassword_confirmation
* action_dispatch.remote_ip                      : localhost
* action_dispatch.request.content_type           :
* action_dispatch.request.formats                : text/html
* action_dispatch.request.parameters             : actionindexcontrollermain
* action_dispatch.request.path_parameters        : controllermainactionindex
* action_dispatch.request.query_parameters       :
* action_dispatch.request.request_parameters     :
* action_dispatch.request.unsigned_session_cookie:
* rack.errors                                    : #<IO:0xb78b7560>
* rack.input                                     : #<StringIO:0xb6d352f0>
* rack.multiprocess                              : false
* rack.multithread                               : false
* rack.request.query_hash                        :
* rack.request.query_string                      :
* rack.run_once                                  : false
* rack.session                                   :
* rack.session.options                           : securefalsehttponlytrueexpire_afterdomainidpath/
* rack.url_scheme                                : http
* rack.version                                   : 11
* Process: 911
* Server : somewhere"
  le.request "* URL: http://bender:3000/
* Format: text/html
* Parameters: {'action'=>'index', 'controller'=>'main'}
* Rails Root: /path_to_your_application/YourApplication"
end
