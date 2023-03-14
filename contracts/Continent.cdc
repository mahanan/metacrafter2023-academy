pub contract Continent {
    pub var mostPopulated: {UInt64: mostPopulatedCountry}

    pub struct mostPopulatedCountry{
      pub let countryName: String
      pub let geoLocation: String 
      pub var presentPopulation: UInt64 

      init(_countryName: String, _geoLocation: String, _presentPopulation: UInt64 ){
        self.countryName = _countryName
        self.geoLocation = _geoLocation
        self.presentPopulation = _presentPopulation
      }
    }

    pub fun addCountry(countryName: String, geoLocation: String, presentPopulation: UInt64){
      let newCountry = mostPopulatedCountry(_countryName: countryName, _geoLocation: geoLocation, _presentPopulation: presentPopulation)
      self.mostPopulated[presentPopulation] = newCountry
    }

  init(){
    self.mostPopulated = {}
  }
}