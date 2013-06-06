class Tenant < ActiveRecord::Base
  # attr_accessible :title, :body
  acts_as_universal_and_determines_tenant
  def self.create_new_tenant(params)

    tenant # Tenant.new(:cname => params[:user][:email], :company => params[:tenant][:company])

    if new_signups_not_permitted?(params)

      raise ::Milia::Control::MaxTenantExceeded, "Sorry, new accounts not permitted at this time"

    else
      tenant.save    # create the tenant
    end
    return tenant
  end
  # ------------------------------------------------------------------------
  # tenant_signup -- setup a new tenant in the system
  # CALLBACK from devise RegistrationsController (milia override)
  # AFTER user creation and current_tenant established
  # args:
  #   user  -- new user  obj
  #   tenant -- new tenant obj
  #   other  -- any other parameter string from initial request
  # ------------------------------------------------------------------------
  def self.tenant_signup(user, tenant, other = nil)
    StartupJob.queue_startup( tenant, user, other )
  end
end
