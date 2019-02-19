#  Singleton
***

##  Khái niệm
Singleton Pattern là một mẫu thiết kế được sử dụng để bảo đảm rằng mỗi một lớp (class) chỉ có được một thể hiện (instance) duy nhất và mọi tương tác đều thông qua thể hiện này.

Tần suất sử dụng: Trung bình cao
***

## UML class diagram
![alt text](https://www.dofactory.com/images/diagrams/net/singleton.gif "Text 1")
***

## Cấu trúc
- Static member : Thuộc tính static để tham chiếu đến một thể hiện của lớp Singleton.
- Private constructor : Phương thức khởi tạo private.
- Static public method : Phương thức static trả về thuộc tính static.
***

## Ví dụ
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


