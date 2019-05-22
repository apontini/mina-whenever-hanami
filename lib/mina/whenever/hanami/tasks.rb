set :whenever_name, -> { "#{fetch(:domain)}_#{fetch(:hanami_env)}" }
set :environment_variable, "HANAMI_ENV"
set :bundle_command, "#{fetch(:environment_variable)}='#{fetch(:hanami_env)}' bundle exec"

namespace :whenever do
  desc 'Clear crontab'
  task clear: :remote_environment do
    comment "Clear contrab for #{fetch(:whenever_name)}"
    in_path fetch(:current_path) do
      command "#{fetch(:bundle_bin)} exec whenever --clear-crontab #{fetch(:whenever_name)} --set 'environment=#{fetch(:hanami_env)}&path=#{fetch(:current_path)}'"
    end
  end

  desc 'Update crontab'
  task update: :remote_environment do
    comment "Update crontab for #{fetch(:whenever_name)}"
    in_path fetch(:current_path) do
      command "#{fetch(:bundle_bin)} exec whenever --update-crontab #{fetch(:whenever_name)} --set 'environment=#{fetch(:hanami_env)}&path=#{fetch(:current_path)}'"
    end
  end

  desc 'Write crontab'
  task write: :remote_environment do
    comment "Write crontab for #{fetch(:whenever_name)}"
    in_path fetch(:current_path) do
      command "#{fetch(:bundle_bin)} exec whenever --write-crontab #{fetch(:whenever_name)} --set 'environment=#{fetch(:hanami_env)}&path=#{fetch(:current_path)}'"
    end
  end
end