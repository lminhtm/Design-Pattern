#  MVP
Trong mô hình MVP sẽ có một số đặc điểm sau:

- Model: cũng giống như mô hình MVC.
- View: View cũng tương tự MVC tuy nhiên ta sẽ sử dụng trừu tượng để giảm lệ thuộc giữa View và Presenter. View do đặc điểm sẽ nhận kết quả từ Presenter một cách bị động, nên thường được gọi là Passive View hay Dumb View.
- Presenter: đây là lớp thay thế cho Controller, nhiệm vụ của nó là xử lý các thao tác của user trên view rồi làm việc với Model rồi gởi kết quả về View.
User sẽ thao thác trên View thay vì là Controller. Do class ViewController (View + Controller) khá đặc biệt nên ta không thấy rõ điều này. Nhưng nếu là trên lập trình Winform thì sẽ rõ ràng hơn.
Mối liên kết giữa View và Presenter là 1 - 1

Presenter sẽ giữ một kết nối yếu (weak) về View chể chống retain cycle, đây là protocol chứ không phải là instance cụ thể. Sau khi thao tác tăng giảm number trên Model, presenter sẽ gởi kết quả về View.

NumberVC đóng vai trò là View vì thế sẽ phải adopt protocol NumberView. Trong lifecycle method viewDidLoad ta cho attach View vào Presenter để View bắt đầu nhận kết quả khởi tạo từ Presenter (trên thực tế có thể là những Service lấy data từ các API).

Ưu điểm của mô hình MVP là View bây giờ chỉ còn là 1 phần nhỏ của ViewController. Presenter sẽ không cần biết View là class nào, miễn là có adopt protocol NumberView là được. Việc này giúp ta có thể dễ dàng test được Presenter.
