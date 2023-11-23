import Employer from 0x05

transaction(
    companyName: String,
    contactPerson: String,
    registrationNumber: Int,
    employeeCount: Int,
    revenue: Int
) {
    prepare(signer: AuthAccount) {}

    execute {
        Employer.addDetails(
            companyName: companyName,
            contactPerson: contactPerson,
            registrationNumber: registrationNumber,
            employeeCount: employeeCount,
            revenue: revenue
        )
    }
}
