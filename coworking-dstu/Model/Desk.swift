struct Desk {
    var id: Int?
    var roomId: Int
    var reservationId: Int?
    var status = "Неактивный"
    
    init(roomId: Int) {
        self.roomId = roomId
    }
}
