class PatientsController < ApplicationController

    def index 
        @patients = Patient.all
    end
    
    def new
        @patient = Patient.new
        @patient.user_id = generate_user_id
    end

    def create
        @patient = Patient.new(patient_params)
        @patient.user_id = generate_user_id

        # Debugging output to check if the patient is being saved
        puts "Patient Params: #{@patient.inspect}"

        if @patient.save
            puts "Patient saved successfully: #{@patient.inspect}"
            redirect_to patient_path(@patient), notice: "Patient Information was successfully saved!"
        else
            # Output error details if the save fails
            puts "Patient Save Failed: #{@patient.errors.full_messages.join(", ")}"
            render :new
        end
    end

    def show
        @patient = Patient.find(params[:id])
    end

    private

    def generate_user_id
        (0...8).map { (65 + rand(26)).chr }.join
    end
    
    def patient_params
        params.require(:patient).permit(:name, :email, :age, :gender, :amount, :position, :user_id, :response)
    end
end