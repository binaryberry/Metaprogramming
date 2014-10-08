require 'student'

describe Student do
    let(:student){Student.new}
    
    it "does not have an award" do 
        expect(student.has_unixoid?).to eq false
    end

    it "can have badges awarded" do 
        student.award :unixoid
        expect(student.has_unixoid?).to eq true
    end

    it "can have badges awarded (non meta method)" do
    	student.award "unixoid"
    	expect(student.awards).to include("unixoid")
    end


end
