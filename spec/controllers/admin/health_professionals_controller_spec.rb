require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Admin::HealthProfessionalsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # HealthProfessional. As you add validations to HealthProfessional, be sure to
  # adjust the attributes here as well.
  let(:medical_speciality){ create :medical_speciality }
  let(:valid_attributes) {
    {firstname: 'Jean', lastname: 'Dupont', address: '5 rue de Menilmontant, 75011 PARIS', 
      medical_speciality_ids: [medical_speciality.id]
    }
  }

  let(:invalid_attributes) {
    {firstname: nil }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HealthProfessionalsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all health_professionals as @health_professionals" do
      health_professional = HealthProfessional.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:health_professionals)).to eq([health_professional])
    end
  end

  describe "GET show" do
    it "assigns the requested health_professional as @health_professional" do
      health_professional = HealthProfessional.create! valid_attributes
      get :show, {:id => health_professional.to_param}, valid_session
      expect(assigns(:health_professional)).to eq(health_professional)
    end
  end

  describe "GET new" do
    it "assigns a new health_professional as @health_professional" do
      get :new, {}, valid_session
      expect(assigns(:health_professional)).to be_a_new(HealthProfessional)
    end
  end

  describe "GET edit" do
    it "assigns the requested health_professional as @health_professional" do
      health_professional = HealthProfessional.create! valid_attributes
      get :edit, {:id => health_professional.to_param}, valid_session
      expect(assigns(:health_professional)).to eq(health_professional)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HealthProfessional" do
        expect {
          post :create, {:health_professional => valid_attributes}, valid_session
        }.to change(HealthProfessional, :count).by(1)
      end

      it "assigns a newly created health_professional as @health_professional" do
        post :create, {:health_professional => valid_attributes}, valid_session
        expect(assigns(:health_professional)).to be_a(HealthProfessional)
        expect(assigns(:health_professional)).to be_persisted
      end

      it "redirects to the created health_professional" do
        post :create, {:health_professional => valid_attributes}, valid_session
        expect(response).to redirect_to(HealthProfessional.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved health_professional as @health_professional" do
        post :create, {:health_professional => invalid_attributes}, valid_session
        expect(assigns(:health_professional)).to be_a_new(HealthProfessional)
      end

      it "re-renders the 'new' template" do
        post :create, {:health_professional => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { lastname: 'Dupond' }
      }

      it "updates the requested health_professional" do
        health_professional = HealthProfessional.create! valid_attributes
        put :update, {:id => health_professional.to_param, :health_professional => new_attributes}, valid_session
        health_professional.reload
        expect(health_professional.lastname).to eq("Dupond")
      end

      it "assigns the requested health_professional as @health_professional" do
        health_professional = HealthProfessional.create! valid_attributes
        put :update, {:id => health_professional.to_param, :health_professional => valid_attributes}, valid_session
        expect(assigns(:health_professional)).to eq(health_professional)
      end

      it "redirects to the health_professional" do
        health_professional = HealthProfessional.create! valid_attributes
        put :update, {:id => health_professional.to_param, :health_professional => valid_attributes}, valid_session
        expect(response).to redirect_to(health_professional)
      end
    end

    describe "with invalid params" do
      it "assigns the health_professional as @health_professional" do
        health_professional = HealthProfessional.create! valid_attributes
        put :update, {:id => health_professional.to_param, :health_professional => invalid_attributes}, valid_session
        expect(assigns(:health_professional)).to eq(health_professional)
      end

      it "re-renders the 'edit' template" do
        health_professional = HealthProfessional.create! valid_attributes
        put :update, {:id => health_professional.to_param, :health_professional => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested health_professional" do
      health_professional = HealthProfessional.create! valid_attributes
      expect {
        delete :destroy, {:id => health_professional.to_param}, valid_session
      }.to change(HealthProfessional, :count).by(-1)
    end

    it "redirects to the health_professionals list" do
      health_professional = HealthProfessional.create! valid_attributes
      delete :destroy, {:id => health_professional.to_param}, valid_session
      expect(response).to redirect_to(health_professionals_url)
    end
  end

end
