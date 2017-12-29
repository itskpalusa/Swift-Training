struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Karthik Palusa", email: "kp@kpcreative.co", age: 17)

var anotherUser = someUser

someUser.email = "karthik.palusa@kpcreative.co"

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "Tim.cook@apple.com", age: 54)
var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"
somePerson.email





























































