pub contract Employer {

    pub var details: {Int: Details}

    pub struct Details {
        pub let companyName: String
        pub let contactPerson: String
        pub let registrationNumber: Int
        pub let employeeCount: Int
        pub let revenue: Int

        init(_companyName: String, _contactPerson: String, _registrationNumber: Int, _employeeCount: Int, _revenue: Int) {
            self.companyName = _companyName
            self.contactPerson = _contactPerson
            self.registrationNumber = _registrationNumber
            self.employeeCount = _employeeCount
            self.revenue = _revenue
        }
    }

    pub fun addDetails(companyName: String, contactPerson: String, registrationNumber: Int, employeeCount: Int, revenue: Int) {
        let newDetails = Details(
            _companyName: companyName,
            _contactPerson: contactPerson,
            _registrationNumber: registrationNumber,
            _employeeCount: employeeCount,
            _revenue: revenue
        )
        self.details[registrationNumber] = newDetails
    }

    init() {
        self.details = {}
    }
}
