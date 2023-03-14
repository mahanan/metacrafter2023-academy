import Continent from 0x01

pub fun main(presentPopulation: UInt64): Continent.mostPopulatedCountry {
  return Continent.mostPopulated[presentPopulation]!
}
