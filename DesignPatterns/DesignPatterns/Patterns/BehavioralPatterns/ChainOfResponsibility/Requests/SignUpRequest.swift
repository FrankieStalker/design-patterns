struct SignUpRequest: Request {
    var firstName: String?
    var lastName: String?

    var email: String?
    var password: String?
    var repeatedPassword: String?
}
