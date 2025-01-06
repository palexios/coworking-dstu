struct Room {
    var id: Int
    var administratorId: Int?
    var numberOfDesks: Int
    
    var desks: [Desk]
    
//    init(numberOfDesks: Int) {
//        var arrayOfDesks: [Desk] = []
//        for _ in 0..<numberOfDesks {
//            // TODO: add query of last desk id in database to assign an id
//        }
//    }
}
