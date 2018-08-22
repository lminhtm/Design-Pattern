#  Singleton
***

##  Definition
Ensure a class has only one instance and provide a global point of access to it.

Frequency of use: Medium high
***

## UML class diagram
![alt text](https://www.dofactory.com/images/diagrams/net/singleton.gif "Text 1")
***

## Participants
- Static member : This contains the instance of the singleton class.
- Private constructor : This will prevent anybody else to instantiate the Singleton class.
- Static public method : This provides the global point of access to the Singleton object and returns the instance to the client calling class.
***

## Example:
```Swift
// Shared URL Session
let sharedURLSession = URLSession.shared

// Default File Manager
let defaultFileManager = FileManager.default

// Standard User Defaults
let standardUserDefaults = UserDefaults.standard

// Default Payment Queue
let defaultPaymentQueue = SKPaymentQueue.default()
```

