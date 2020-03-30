#  MVVM
MVVM có thể nói là mô hình kiến trúc được rất nhiều các cư dân trong cộng đồng ưa chuộng. Điểm tinh hoa của kiến trúc này là ở ViewModel, mặc dù rất giống với Presenter trong MVP tuy nhiên có 2 điều làm nên tên tuổi của kiến trúc này đó là:

- ViewModel không hề biết gì về View, một ViewModel có thể được sử dụng cho nhiều View (one-to-many).
- ViewModel sử dụng Observer design pattern để liên lạc với View (thường được gọi là binding data, có thể là 1 chiều hoặc 2 chiều tùy nhu cầu ứng dụng). Chính đặc điểm này MVVM thường được phối hợp với các thư viện hỗ trợ Reactive Programming hay Event/Data Stream, đây là triết lý lập trình hiện đại và hiệu quả phát triển rất mạnh trong những năm gần đây.

Binding Data trong MVVM là điều không bắt buộc, một số implement chỉ đơn giản làm ViewModel như một lớp trung gian giữa Model-View, lớp này giữ nhiệm vụ format data hoặc mapping trạng thái của View. Tuy nhiên cách này theo mình khiến cho ViewModel trở thành Presenter và đưa kiến trúc này về MVP.


# In the MVVM design pattern

## Model
Model is the same as in MVC pattern. It represents simple data.

## View
View is represented by the UIView or UIViewController objects, accompanied with their .xib and .storyboard files, which should only display prepared data.
(We don’t want to have NSDateFormatter code, for example, inside the View.). Only a simple, formatted string that comes from the ViewModel.

In the MVVM design pattern, View should not know anything about the Model. The only thing that View knows is how to work with a ViewModel.

## View Model
ViewModel hides all asynchronous networking code, data preparation code for visual presentation, and code listening for Model changes. 
All of these are hidden behind a well-defined API modeled to fit this particular View.
One of the benefits of using MVVM is testing. 
Since ViewModel is pure NSObject (or struct for example), and it’s not coupled with the UIKit code, you can test it more easily in your unit tests without it affecting the UI code.

Now, the View (UIViewController/UIView) has become much simpler while ViewModel acts as the glue between the Model and View.
