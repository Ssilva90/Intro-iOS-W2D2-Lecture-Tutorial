//variables------------------------------

//var defines a variable that we can change anytime
var teacherName = "Sanjay"

//let defines a variable that we can never change
let studentName = "Vince"

//therefore, this will work:
teacherName = "Danny"

//but this won't work:
//studentName = "Danny"




//--------------------------------
//Type & Type inference

//these are 3 different ways of creating the same thing:
var person1: String
person1 = "Dennis"

var person2: String = "Dennis"
var person3 = "Dennis"

//its always better to explicitly state the Type like how person1 and person2 are defined.


//BONUS
//When this ran, we saw that doubles have more decimal points, therefore they are more precise
var float1: Float = 2.333333333333333333
var double1: Double = 2.8888888888888888




//------------------------------------
//Functions

//function with no parameter and no return value
func sayHelloToMyFriendPaul() {
    
    let greeting: String = "Hi Paul"
    
    //can do anything with the greeting , or nothing at all. E.g. print it
    print(greeting)
    
    // e.g. make it uppercased
    greeting.uppercased()
    
}

//function with 1 parameter and no return value
func sayHelloToFriend(friendName: String) {
    
    let greeting: String = "Hello " + friendName
    
    //we can do whatever we want with the greeting
    //e.g. make it all uppercased
    greeting.uppercased()
    
}

//function with 2 parameters and no return value
func makeUsername(firstName: String, lastName: String) {
    
    let username = firstName + " " + lastName

    //we can do whatever we want with the username
    //e.g. make it all lowercase
    
    username.lowercased()
    
}


//function with 2 parameters and 1 return value
func getUsername(firstName: String, lastName: String ) -> String {
    
    let username: String = firstName + " " + lastName
    
    return username
    
}

//REMEMBER: return statement is always needed for functions that specify a return type


//how to call the above functions

sayHelloToMyFriendPaul()

sayHelloToFriend(friendName: "Galia")

makeUsername(firstName: "Dennis", lastName: "Cruz")

//since the getUsername function returns a String, we want to be able to store that String somewhere
//so we can create a variable called myNewUsername, and store it there
var myNewUsername: String

myNewUsername = getUsername(firstName: "Paul", lastName: "Lehal")







//Classes -----------------------------
class Car {
    
    //properties of a Car
    var color: String
    var price: Int
    
    //initializer
    //this initializer states that every car must be made with a color, and a price
    init(colorInp: String, priceInp: Int) {
        
        color = colorInp
        price = priceInp
    }
    
    //method 1
    func inflatePrice() -> Int {
        return price * 100000000
    }
    
    //method 2
    func inflatePriceByUserDeterminedNumber(userNumber: Int) -> Int {
        return price * userNumber
    }
    
    //method 3
    func inflatePriceBasedOnColor() -> Int {
        
        var newPrice: Int
        
        if(color == "red"){
            newPrice = price * 100
        }
            
        else if (color == "blue") {
            newPrice = price * 50
        }
            
        else {
            newPrice =  price * 5
        }
        
        return newPrice
    }
}



//Now, that we've defined the class, its properties, and its functions, we can start creating cars and do stuff with them

//create some cars
var car1: Car = Car(colorInp: "red", priceInp: 30)
var car2: Car = Car(colorInp: "blue", priceInp: 100)


//call some methods on car1, and store the results in some new variables
var myNewDefaultPrice: Int = car1.inflatePrice()
var myNewCustomPrice: Int = car1.inflatePriceByUserDeterminedNumber(userNumber: 200)
var myNewPriceBecauseOfColor: Int = car1.inflatePriceBasedOnColor()


//call some methods on car2, and store the results in some new variables
var car2NewDefaultPrice: Int = car2.inflatePrice()
var thisVariableCanBeCalledAnything : Int = car2.inflatePriceBasedOnColor()





