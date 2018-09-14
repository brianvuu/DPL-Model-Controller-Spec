require 'rails_helper'

RSpec.describe StudentsController, type: :controller do
  let(:valid_attributes) {

    { 
      name: 'Bob', 
      student_number: '123456', 
      gpa: 4.0,
    }
  }

  let(:invalid_attributes) {
    { 
      name: 'Bob', 
      student_number: '123456', 
      gpa: 4.0,
    }
  }

  describe "GET #index" do
    before(:each) do 
      @school = School.create(name: 'DevPoint', address: '123 S. SLC', principal: 'Nhi lol', capacity: 100, private_school: false)
    end
    it "returns http success" do
      get :index, params: {school_id: @school.id},
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to be_successful
    end
  end

end
