class RegistrationsController < Devise::RegistrationsController

  before_action :authenticate_user!, only: [:update, :destroy]

  def create
    build_resource(sign_up_params)
    resource.save
    sign_up(resource_name, resource) if resource.persisted?

    render_jsonapi_response(resource)
  end

  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    update_resource(resource, account_update_params) if resource.persisted?

    render_jsonapi_response(resource)
  end

  def destroy
    resource.destroy
    render_jsonapi_response(resource)
  end

  private 

  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
  end
end