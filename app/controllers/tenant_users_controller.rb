class TenantUsersController < ApplicationController
  # GET /tenant_users
  # GET /tenant_users.json
  def index
    @tenant_users = TenantUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tenant_users }
    end
  end

  # GET /tenant_users/1
  # GET /tenant_users/1.json
  def show
    @tenant_user = TenantUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tenant_user }
    end
  end

  # GET /tenant_users/new
  # GET /tenant_users/new.json
  def new
    @tenant_user = TenantUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tenant_user }
    end
  end

  # GET /tenant_users/1/edit
  def edit
    @tenant_user = TenantUser.find(params[:id])
  end

  # POST /tenant_users
  # POST /tenant_users.json
  def create
    @tenant_user = TenantUser.new(params[:tenant_user])

    respond_to do |format|
      if @tenant_user.save
        format.html { redirect_to @tenant_user, notice: 'Tenant user was successfully created.' }
        format.json { render json: @tenant_user, status: :created, location: @tenant_user }
      else
        format.html { render action: "new" }
        format.json { render json: @tenant_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tenant_users/1
  # PUT /tenant_users/1.json
  def update
    @tenant_user = TenantUser.find(params[:id])

    respond_to do |format|
      if @tenant_user.update_attributes(params[:tenant_user])
        format.html { redirect_to @tenant_user, notice: 'Tenant user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tenant_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenant_users/1
  # DELETE /tenant_users/1.json
  def destroy
    @tenant_user = TenantUser.find(params[:id])
    @tenant_user.destroy

    respond_to do |format|
      format.html { redirect_to tenant_users_url }
      format.json { head :no_content }
    end
  end
end
