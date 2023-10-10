Ví dụ đoán giá nhà đất với Linear Regression
VD1: hàm tuyến tính ( như là đường thẳng ) diện tích của nhà tăng dần thì giá của nó sẽ không tăng theo tỉ lệ quá nhanh như đường thẳng ở đây cho nên khi diện tích nhà càng nằm dài ra bên phải biểu đồ thì thuật toán này có vẻ không khớp.
VD2: chúng có thể sử dụng hàm này cho dữ liệu của chúng ta và để thỏa một hàm đẳng thức bậc 2 thì nó sẽ đi theo đường cong này và nó hoạt động rất tốt. 
VD3: thêm vào nhiều đa thức hơn, có 5 biến theta, làm quá tốt, đi lên đi xuống, không phải biểu đồ chính xác dự đoán giá nhà.
Nó thực sự chính xác vừa đủ mức cần thiết. Nơi đa thức thứ 2 là một đa thức bậc 2 dường như vừa đủ để thỏa dữ liệu đã cho
Tóm tắt lại thì vấn đề về overfitting xảy ra khichúng ta có quá nhiều thuộc tính, vì thế giả thuyết có thể phù hợp với các phần huấn luyện rất tốt. Vậy nên cost function có thể gần như tiến về sát giá trị 0 hoặc có thể thậm chí bằng không, nhưng bạn sau đó có thể kết thúc với một đường cong như thế này, bạn biết là việc cố gắng quá để phù hợp với tập huấn luyện, khiến nó thậm chí không thể khái quát cho ví dụ mới và thất bại trong việc dự đoán giá trên các ví dụ mới và đây là thuật ngữ tổng quát đề cập đến một giả thuyết áp dụng ngay cả đối với các ví dụ mới tốt như thế nào. 
Bias: nghĩa là độ lệch, biểu thị sự chênh lệch giữa giá trị trung bình mà mô hình dự đoán và giá trị thực tế của dữ liệu. 
Variance: nghĩa là phương sai, biểu thị độ phân tán của các giá trị mà mô hình dự đoán so với giá trị thực tế. Giá trị thật dữ liệu (ground truth) ở giữa tâm các đường tròn.
