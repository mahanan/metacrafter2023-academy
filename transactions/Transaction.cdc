import Continent from 0x01

transaction(countryName: String, geoLocation: String, presentPopulation: UInt64) {

  prepare(acct: AuthAccount) {}

  execute {
    Continent.addCountry(countryName: countryName, geoLocation: geoLocation, presentPopulation: presentPopulation)
    log("Congratulations so far!")
  }
}
