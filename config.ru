require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

#send PATCH and DELETE requests
use Rack::MethodOverride

run ApplicationController