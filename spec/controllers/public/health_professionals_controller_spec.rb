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

RSpec.describe Public::HealthProfessionalsController, :type => :controller do

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HealthProfessionalsController. Be sure to keep this updated too.
  before(:each) do
   allow_any_instance_of(HealthProfessional).to receive(:geocode).and_return([1,1])
  end

  let(:medical_speciality){ create :medical_speciality }
  let(:valid_attributes) {
    {firstname: 'Jean', lastname: 'Dupont', address: '5 rue de Menilmontant, 75011 PARIS', 
      medical_speciality_ids: [medical_speciality.id]
    }
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


end
