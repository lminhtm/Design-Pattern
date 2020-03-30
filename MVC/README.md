#  MVC
Nhìn chung mô hình MVC sẽ giúp cho sự liên lạc giữ Model và View phải thông qua Controller. Thông thường Controller sẽ đóng vai trò điều khiển như tên của nó, dựa vào Model cụ thể nó sẽ quyết định View sẽ cần show cái gì và thậm chí là thay đổi View nếu cần. Mô hình này cũng thường thấy trong cuộc sống như: Tivi, DVD Player và đĩa DVD.

Mô hình MVC dù đã hoàn thành nhiệm vụ phân tách được View - Model tuy nhiên cũng còn những điểm yếu như:

Logic của Controller dễ phình to (trở thành massive controller) do tương lai phải quản lý cả logic của View như: animation, show các popup nếu có, bặt tắt các control tương ứng, ... và logic để thao tác với data => khó bảo trì và mở rộng.
Vì các phương thức của controller phải làm việc với cả View và Model nên sẽ gây khó khăn khi tạo các lớp mock cho Unit Test => Khó test
