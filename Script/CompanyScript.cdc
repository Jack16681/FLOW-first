import Employer from 0x05

pub fun main(registrationNumber: Int): Employer.Details? {
    return Employer.details[registrationNumber]
}
