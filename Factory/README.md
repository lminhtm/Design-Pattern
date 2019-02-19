#  Factory Method
***

##  Khái niệm
Factory Pattern định nghĩa một lớp (interface, abstract, class) đóng vai trò như một “nhà xưởng” có nhiệm vụ khởi tạo đối tượng “cụ thể” khi ứng dụng chạy. Tại thời điểm thiết kế đối tượng này được định nghĩa trừu tượng.

Tần suất sử dụng: Cao
***

## UML class diagram
![alt text](https://www.dofactory.com/images/diagrams/net/factory.gif "Text 1")
***

## Cấu trúc
The classes and objects participating in this pattern are:

- Product 
- defines the interface of objects the factory method creates
- ConcreteProduct  
- implements the Product interface
- Creator 
- declares the factory method, which returns an object of type Product. Creator may also define a default implementation of the factory method that returns a default ConcreteProduct object.
- may call the factory method to create a Product object.
- ConcreteCreator 
- overrides the factory method to return an instance of a ConcreteProduct.
***
