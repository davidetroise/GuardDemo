func authorizationStatus(username: String, password: String, storedPassword: String, isAdmin: Bool) -> String {
    if username.count > 0 {
        if password == storedPassword {
            if isAdmin {
                return "IS AUTHORIZED"
            }
            return "NOT AUTHORIZED"
        }
        return "WRONG PASSWORD"
    }
    return "LOGIN REQUIRED"
}

func authorizationStatusWithGuard(username: String, password: String, storedPassword: String, isAdmin: Bool) -> String {
    guard username.count > 0 else { return "LOGIN REQUIRED" }
    guard password == storedPassword else { return "WRONG PASSWORD" }
    guard isAdmin else { return "NOT AUTHORIZED" }
    
    return "IS AUTHORIZED"
}

let status = authorizationStatusWithGuard(username: "dfhsjfhk", password: "uerioshfkj", storedPassword: "uerioshfkj", isAdmin: true)
