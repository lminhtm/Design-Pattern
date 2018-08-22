#  Factory Method
***

##  Definition
Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses.

Frequency of use: High
***

## UML class diagram
![alt text](https://www.dofactory.com/images/diagrams/net/factory.gif "Text 1")
***

## Participants
The classes and objects participating in this pattern are:

- Product
  - defines the interface of objects the factory method creates
- ConcreteProduct  
- Creator  
  - declares the factory method, which returns an object of type Product. Creator may also define a default implementation of the factory method that returns a default ConcreteProduct object.
  - may call the factory method to create a Product object.
- ConcreteCreator 
  - overrides the factory method to return an instance of a ConcreteProduct.
