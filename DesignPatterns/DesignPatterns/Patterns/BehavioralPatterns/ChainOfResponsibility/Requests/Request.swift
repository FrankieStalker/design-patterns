protocol Request {
    var firstName: String? { get }
    var lastName: String? { get }
    
    var email: String? { get }
    var password: String? { get }
    var repeatedPassword: String? { get }
}

extension Request {
    var firstName: String? { return nil }
    var lastName: String? { return nil }

    var email: String? { return nil }
    var password: String? { return nil }
    var repeatedPassword: String? { return nil }
}
