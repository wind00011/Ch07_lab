建立學生資料表 (Student)
學號 (StudentID) - 主鍵
姓名 (Name)
年級 (Grade)
科系代碼 (DepartmentCode) - 外鍵參考到科系資料表

建立科系資料表 (Department)
科系代碼 (DepartmentCode) - 主鍵
科系名稱 (DepartmentName)
系主任 (DepartmentChair)

建立老師資料表 (Teacher)
老師編號 (TeacherID) - 主鍵
老師姓名 (TeacherName)

建立課程資料表 (Course)
課程代號 (CourseID) - 主鍵
課程名稱 (CourseName)
學分數 (Credits)
老師編號 (TeacherID) - 外鍵參考到老師資料表

建立選課資料表 (Enrollment)
學號 (StudentID) - 複合主鍵之一，外鍵參考到學生資料表
課程代號 (CourseID) - 複合主鍵之一，外鍵參考到課程資料表
成績 (Grade)