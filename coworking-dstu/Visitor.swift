enum Gender: String {
    case male = "Мужской"
    case female = "Женский"
}

enum VisitorStatus: String {
    case active = "Активный"
    case inactive = "Неактивный"
}

struct Visitor {
    var fullName: String
    var email: String
    var phone: String
    var password: String
    var gender: Gender
    var dateOfBirth: String
    var reservationId: Int?
    var status: VisitorStatus = .inactive
}
