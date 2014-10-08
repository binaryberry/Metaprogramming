require 'symbol'

describe Symbol do

    it "parses a method name by removing has_ and ?" do

		symbol1 = :has_carrots?
		symbol2 = :has_powermeter?

    	expect(symbol1.chopup).to eq(:carrots)
    	expect(symbol2.chopup).to eq(:powermeter)
    end
end