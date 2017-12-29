struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
    case someError
}

func friend(from dict: [String : String]) throws -> Friend? {
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invalid name value")
    }
    
    guard let age = dict["age"] else {
         throw FriendError.invalidData(description: "Invalid age value")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

func send(message: String, to friend: Friend) {}

let response = ["name": "Karthik", "age": "17", "address": "someAddress"]

do {
    let myFriend = try friend(from: response)
    send(message: "test", to: myFriend)
} catch Friend.invalidData(let description) {
    // Inform the user that they passed in invalidData
    print(description)
} catch FriendError.someError {
    
}

func process(file name: String) throws {
    guard isValidFile(withName: name) else {
        throw ReadError.invalidFile
    }
}

let file = open(fileName: name)

defer {
    close(fileName: name)
}

guard let line = try file.readLine() else {
    ReadError.unableToReadLine
}

defer {
    close(fileName: file2)
}

}







































































































































































