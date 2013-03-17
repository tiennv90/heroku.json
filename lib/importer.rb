class Importer < Struct.new(:api, :app, :json)
  def import
    # create_app_if_not_exists
    add_addons
    add_config_vars
    # push_code
    # run_custom_commands
  end

  private

  def create_app_if_not_exists

  end

  def add_addons
    json['addons'].each do |addon|
      api.post_addon(app, addon)
    end
  end

  def add_config_vars
    api.put_config_vars(app, json['env'])
  end

  def push_code

  end

  def run_custom_commands

  end
end
