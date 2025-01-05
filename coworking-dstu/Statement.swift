// MARK: - SQLiteStatements
enum Statement: String {
    case createTableVisitor = """
    CREATE TABLE visitor (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        full_name TEXT NOT NULL CHECK (
            LENGTH(full_name) > 0 AND
            LENGTH(full_name) < 100
        ),
        email TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@%.%'),
        phone TEXT NOT NULL UNIQUE CHECK (LENGTH(phone) = 11),
        password TEXT NOT NULL CHECK (
            LENGTH(password) >= 8 AND
            LENGTH(password) <= 15 AND
            password GLOB '*[0-9]*' AND
            password GLOB '*[A-Za-z]*'
        ),
        gender TEXT NOT NULL CHECK (
            gender = 'Мужской' OR
            gender = 'Женский'
        ),
        date_of_birth TEXT NOT NULL CHECK (date_of_birth LIKE '____-__-__'),
        reservation_id INTEGER,
        status TEXT NOT NULL DEFAULT 'Неактивный' CHECK (
            status = 'Активный' OR
            status = 'Неактивный'
        ),
        FOREIGN KEY (reservation_id) REFERENCES reservation(id)
    );
    """
    
    case createTableRoom = """
        CREATE TABLE room (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            administrator_id INTEGER NOT NULL,
            number_of_desks INTEGER NOT NULL CHECK (
                number_of_desks > 0 AND
                number_of_desks <= 20
            ),
            FOREIGN KEY (administrator_id) REFERENCES administrator(id)
        );
        """
    
    case createTableDesk = """
        CREATE TABLE desk (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            room_id INTEGER NOT NULL,
            reservation_id INTEGER,
            status TEXT NOT NULL CHECK (
                status = 'active' OR
                status = 'inactive'
            ),
            FOREIGN KEY (room_id) REFERENCES room(id),
            FOREIGN KEY (reservation_id) REFERENCES reservation(id)
        );
        """
    
    case createTableReservation = """
        CREATE TABLE reservation (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            room_id INTEGER NOT NULL,
            desk_id INTEGER NOT NULL,
            visitor_id INTEGER NOT NULL,
            date_of_start TEXT NOT NULL CHECK (date_of_start LIKE '____-__-__'),
            date_of_end TEXT NOT NULL CHECK (date_of_end LIKE '____-__-__'),
            cost REAL NOT NULL CHECK (cost > 0),
            FOREIGN KEY (room_id) REFERENCES room(id),
            FOREIGN KEY (desk_id) REFERENCES desk(id),
            FOREIGN KEY (visitor_id) REFERENCES visitor(id)
        );
        """
    
    case createTableAdministrator = """
        CREATE TABLE administrator (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            full_name TEXT NOT NULL CHECK (
                LENGTH(full_name) > 0 AND
                LENGTH(full_name) < 100
            ),
            email TEXT NOT NULL UNIQUE CHECK (email LIKE '%_@%.%'),
            phone TEXT NOT NULL UNIQUE CHECK (LENGTH(phone) = 11),
            password TEXT NOT NULL CHECK (
                LENGTH(password) >= 8 AND
                LENGTH(password) <= 15 AND
                password GLOB '*[0-9]*' AND
                password GLOB '*[A-Za-z]*'
            ),
            gender TEXT NOT NULL CHECK (
                gender = 'male' OR
                gender = 'female'
            ),
            room_id INTEGER NOT NULL,
            FOREIGN KEY (room_id) REFERENCES room(id)
        );
        """
    case insertIntoVisitor = "INSERT INTO visitor (full_name, email, phone, password,gender, reservation_id) VALUES (?, ?, ?, ?, ?, ?)"
}
