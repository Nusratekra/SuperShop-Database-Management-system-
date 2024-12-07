CREATE TABLE Branch (
    BranchID INTEGER PRIMARY KEY,
    Branch_name VARCHAR(50) NOT NULL,
    City VARCHAR(50),
    ZipCode VARCHAR(10),
    HouseNo VARCHAR(10),
    PhoneNo VARCHAR(15),
    NumberOfEmployees INTEGER,
    CreatedAt DATE,
    BranchEmail VARCHAR(50),
    BranchStatus VARCHAR(20) DEFAULT 'active',
    OpeningTime TIME,
    ClosingTime TIME
);


INSERT INTO Branch (BranchID, Branch_name, City, ZipCode, HouseNo, PhoneNo, NumberOfEmployees, CreatedAt, BranchEmail, BranchStatus, OpeningTime, ClosingTime)
VALUES
(1, 'Dhaka Branch', 'Dhaka', '1212', '123', '01710000001', 50, '2024-01-01', 'dhaka@gmail.com', 'active', '09:00:00', '18:00:00'),
(2, 'Chittagong Branch', 'Chittagong', '4000', '56', '01820000002', 40, '2024-02-01', 'chittagong@gmail.com', 'inactive', '09:00:00', '18:00:00'),
(3, 'Rajshahi Branch', 'Rajshahi', '6000', '89', '01930000003', 30, '2024-03-01', 'rajshahi@gmail.com', 'active', '09:00:00', '18:00:00'),
(4, 'Sylhet Branch', 'Sylhet', '3100', '101', '01740000004', 20, '2024-04-01', 'sylhet@gmail.com', 'active', '09:00:00', '18:00:00'),
(5, 'Khulna Branch', 'Khulna', '9000', '22', '01850000005', 25, '2024-05-01', 'khulna@gmail.com', 'active', '09:00:00', '18:00:00'),
(6, 'Barisal Branch', 'Barisal', '8200', '33', '01760000006', 15, '2024-06-01', 'barisal@gmail.com', 'inactive', '09:00:00', '18:00:00'),
(7, 'Rajbari Branch', 'Rajbari', '7700', '44', '01970000007', 12, '2024-07-01', 'rajbari@gmail.com', 'active', '09:00:00', '18:00:00'),
(8, 'Mymensingh Branch', 'Mymensingh', '2200', '55', '01880000008', 18, '2024-08-01', 'mymensingh@gmail.com', 'active', '09:00:00', '18:00:00'),
(9, 'Narsingdi Branch', 'Narsingdi', '1600', '66', '01790000009', 22, '2024-09-01', 'narsingdi@gmail.com', 'active', '09:00:00', '18:00:00'),
(10, 'Comilla Branch', 'Comilla', '3500', '77', '01980000010', 35, '2024-10-01', 'comilla@gmail.com', 'active', '09:00:00', '18:00:00');


CREATE TABLE Designation (
    DesignationID INT PRIMARY KEY,
    DesignationName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Designation (DesignationID, DesignationName, Salary)
VALUES
(1, 'Manager', 50000.00),
(2, 'Assistant', 40000.00),
(3, 'Staff', 25000.00),
(4, 'Technician', 35000.00),
(5, 'Clerk', 20000.00),
(6, 'Supervisor', 45000.00),
(7, 'Consultant', 60000.00),
(8, 'Intern', 15000.00);


CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    Employee_First_Name VARCHAR(20) NOT NULL,
    Employee_Middle_Name VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Mobile VARCHAR(15) NOT NULL,
    DesignationID INT,
    BranchID INTEGER,  
    FOREIGN KEY (DesignationID) REFERENCES Designation (DesignationID),
    FOREIGN KEY (BranchID) REFERENCES Branch (BranchID)
);
INSERT INTO Employees (EmployeeID, Employee_First_Name, Employee_Middle_Name, Email, Mobile, DesignationID, BranchID)
VALUES
(201, 'Asif', 'Mahmud', 'asif@gmail.com', '015**43', 1, 1),
(202, 'Nusrat', 'Jahan', 'nusratkakon@gmail.com', '019**48', 2, 1),
(203, 'Kashfiya', 'Chowdhury', 'kashfiya@gmail.com', '016**33', 3, 2),
(204, 'Rafid', 'Hasan', 'rafidhasan@gmail.com', '018**56', 4, 1),
(205, 'Farhana', 'Rahman', 'farhana.rahman@gmail.com', '017**98', 5, 2),
(206, 'Tanim', 'Ahmed', 'tanim@gmail.com', '015**21', 6, 3),
(207, 'Rumana', 'Akhter', 'rumana@gmail.com', '016**67', 7, 1),
(208, 'Shahriar', 'Kabir', 'shahriar.kabir@gmail.com', '019**89', 8, 2),
(209, 'Tasnim', 'Ara', 'tasnimara@gmail.com', '018**44', 2, 3),
(210, 'Jahid', 'Hossain', 'jahid.hossain@gmail.com', '017**23', 3, 1),
(211, 'Afzal', 'Khan', 'afzal.khan@gmail.com', '015**62', 4, 2),
(212, 'Nabila', 'Sultana', 'nabila.sultana@gmail.com', '016**78', 5, 3),
(213, 'Shahriar', 'Ahmed', 'shahriar.ahmed@gmail.com', '019**34', 6, 1),
(214, 'Ayesha', 'Begum', 'ayesha.begum@gmail.com', '018**19', 7, 3),
(215, 'Fahim', 'Islam', 'fahim.islam@gmail.com', '017**77', 8, 1),
(216, 'Tamim', 'Rashid', 'tamim.rashid@gmail.com', '015**39', 1, 2),
(217, 'Rima', 'Akter', 'rima.akter@gmail.com', '016**88', 2, 1),
(218, 'Anik', 'Chowdhury', 'anik.chowdhury@gmail.com', '019**27', 3, 3),
(219, 'Naeem', 'Hassan', 'naeem.hassan@gmail.com', '018**53', 4, 1),
(220, 'Sadia', 'Noor', 'sadia.noor@gmail.com', '017**91', 5, 2),
(221, 'Tanzina' , 'Tabassum', 'tanzina@gmail.com', '017**45', 3, 7),
(222, 'Ahil' , 'Adnan' , 'ahil@gmail.com', '016**67' , 3 , 7),
(223, 'Mehedi','Hasan','mehedi@gmail.com' , '015**87' ,3, 7),
(224, 'Tanvir','Mahmud','mahmud@gmail.com', '017**76', 8, 7),
(225, 'Tanvira','Mahmuda','tanvira@gmail.com' ,'018**54', 8, 7),
(226,'Janvica','Afrose','janvica@gmail.com','017**21', 1,7),
(227, 'Tanvir','Mehedi','tanvir@gmail.com', '018**54',2,7),
(228, 'Sanjida','Islam','sanjida@gmail.com' ,'018**87', 6, 7),
(229, 'Nahid','Ishtiyaq','nahid@gmail.com' , '017**83', 5,7),
(230, 'Muntaha','Meherin','meherin@gmail.com' , '013**54', 4,7),
(231, 'Tamima','Sultana','tamima@gmail.com', '014**65', 1, 4),
(232,'Farzana','Islam','farzana@gmail.com', '017**09' ,2, 4),
(233, 'Tahmida' , 'Akter' ,'tahmida@gmail.com', '016**54' , 3,4),
(234, 'Farin' ,' Tasnim' , 'farin@gamail.com' , '017*43' , 4 ,4),
(235, 'Tasnia', 'Tabassum', 'tasnia@gmail.com' , '019**87' ,4,4),
(236, 'Alif', 'Mahmud' , 'alif@gmail.com', '015**98', 4, 4),
(237, 'Tahmid', 'Hasan', 'tahmid@gmail.com', '019**78',5,4),
(238, 'Dipu' ,'Das', 'dipu@gmail.com', '016**65', 6,4),
(239,'Ishtiyaq', 'Ifty' , 'ifty@gmail.com', '019**98', 7,4),
(240, 'Nahid', 'Ahmed', 'nahid@gmail.com', '018**85',8,4),
(241, 'Nahida' ,'Akter', 'nahida@gmail.com', '018**65', 4,4),
(242, 'Taslima' ,'Begum' ,'taslima@gmail.com', '015**32', 1,5),
(243,'Shawon', 'Hossain', 'shawon@gmail.com','014**65', 2,5),
(244,'Ekra', 'Mahmud', 'ekra@gmail.com', '019**65', 3, 5),
(245, 'Abdullah', 'Jubayer', 'jubayer@gmail.com', '013**00' ,4,5),
(246,'Sumaiya', 'Mitu', 'mitu@gmail.com' , '018**11', 4,5),
(247, 'Mita' ,'Akter', 'mita@gmail.com', '015**33', 4,5),
(248,'Hasan', 'Mehedi', 'hasan@gmail.com', '018**99',4,5),
(249, 'Shammi','Akter', 'shammi@gmail.com', '016**77', 1,8),
(250,'Rafi' , 'Hasan', 'hasan@gmail.com', '015**66',2,8),
(251,'Rafia','Mahmud','rafia@gmail.com', '018**66',5,8),
(252,'Rubayta', 'Akter' , 'rubayta@gmail.com','018**66',8,8),
(253, 'Abdur' , 'Rahim', 'rahim@gmail.com', '018**55',7,8),
(254,'Abdur', 'Rahman', 'rahman@gmail.com','018**44',4,8),
(255,'Juui','Akter','juui@gmail.com','019**66',4,8),
(256,'Farzana', 'Sultana', 'sultana@gmail.com', '017**55',4,8),
(257, 'Tamanna' ,'Tabassumm','tamanna@gmail.com','018**44',1,9),
(258,'Akifa','Sultana', 'akifa@gmail.com', '016**55',2,9),
(259,'Jesmin','Akter', 'jesmin@gmail.com', '016**88',6,9),
(260,'Nasima','Jahan','nasima@gmail.com','015**66',7,9),
(261, 'Najim','Ahmed','najim@gmail.com','019**22',4,9),
(262,'Nazid','Khan', 'nazid@gmail.com','016**44',4,9),
(263,'Tamzid','Ahmed','tamzid@gmail.com','019**33',4,9),
(264,'Kanta','Das','kanta@gmail.com','013**54',1,10),
(265,'Salman','Jeesan','salman@gmail.com','014**66',2,10),
(266,'Jisan','Hasan','jisan@gmail.com','016**55',3,10),
(267,'Tandra','Chakrabarti', 'tandra@gmail.com','017**44',6,10),
(268,'Tania','Tabassum','tania@gmail.com','015**33',4,10),
(269,'Ahsan','Khan','ahsan@gmail.com','013**66',4,10),
(270,'Sumitra','Halder','sumitra@gmail.com','015**44',4,10);
 
CREATE TABLE Membership (
    MmberID INT PRIMARY KEY,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(100),
    EarnPoints INT DEFAULT 0
);


INSERT INTO Membership (MmberID, Username, Password, PhoneNumber, Email, Address, EarnPoints)
VALUES
(1, 'sohail.rana', 'sr1', '01710000001', 'sohail.rana@gmail.com', 'Dhaka', 100),
(2, 'ayesha.akter', 'aa2', '01820000002', 'ayesha.akter@gmail.com', 'Chittagong', 150),
(3, 'kamal.hossain', 'kh3', '01930000003', 'kamal.hossain@gmail.com', 'Rajshahi', 200),
(4, 'nafisa.khan', 'nk4', '01740000004', 'nafisa.khan@gmail.com', 'Sylhet', 250),
(5, 'rafiqul.islam', 'ri5', '01850000005', 'rafiqul.islam@gmail.com', 'Khulna', 180),
(6, 'sadia.begum', 'sb6', '01960000006', 'sadia.begum@gmail.com', 'Barisal', 220),
(7, 'tamim.ahmed', 'ta7', '01770000007', 'tamim.ahmed@gmail.com', 'Dhaka', 300),
(8, 'sharmin.akhtar', 'sa8', '01880000008', 'sharmin.akhtar@gmail.com', 'Mymensingh', 130),
(9, 'farid.rahman', 'fr9', '01990000009', 'farid.rahman@gmail.com', 'Rangpur', 170),
(10, 'mahfuzul.haq', 'mh10', '01710000010', 'mahfuzul.haq@gmail.com', 'Comilla', 260);


CREATE TABLE Customers (
    CustID INT PRIMARY KEY,
    BranchID INT,
    MmberID INT NULL,
    Name VARCHAR(100),
    FName VARCHAR(50),
    LName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Invoice INT,
    EarnPoints INT,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID),
    FOREIGN KEY (MmberID) REFERENCES Membership(MmberID)
);


INSERT INTO Customers (CustID, BranchID, MmberID, Name, FName, LName, Email, Phone, Invoice, EarnPoints)
VALUES(1, 1, 1, 'Sohail Rana', 'Sohail', 'Rana', 'sohail.rana@gmail.com', '01710000001', 1000, 100),
(2, 2, 2, 'Ayesha Akter', 'Ayesha', 'Akter', 'ayesha.akter@gmail.com', '01820000002', 1500, 150),
(3, 3, 3, 'Kamal Hossain', 'Kamal', 'Hossain', 'kamal.hossain@gmail.com', '01930000003', 2000, 200),
(4, 4, 4, 'Nafisa Khan', 'Nafisa', 'Khan', 'nafisa.khan@gmail.com', '01740000004', 2500, 250),
(5, 5, 5, 'Rafiqul Islam', 'Rafiqul', 'Islam', 'rafiqul.islam@gmail.com', '01850000005', 1800, 180),
(6, 6, 6, 'Sadia Begum', 'Sadia', 'Begum', 'sadia.begum@gmail.com', '01960000006', 2200, 220),
(7, 7, 7, 'Tamim Ahmed', 'Tamim', 'Ahmed', 'tamim.ahmed@gmail.com', '01770000007', 3000, 300),
(8, 8, 8, 'Sharmin Akhtar', 'Sharmin', 'Akhtar', 'sharmin.akhtar@gmail.com', '01880000008', 1300, 130),
(9, 9, 9, 'Farid Rahman', 'Farid', 'Rahman', 'farid.rahman@gmail.com', '01990000009', 1700, 170),
(10, 10, 10, 'Mahfuzul Haq', 'Mahfuzul', 'Haq', 'mahfuzul.haq@gmail.com', '01710000010', 2600, 260),
(11, 5, NULL, 'Nashid Hasan', 'Nashid', 'Hasan', 'nashid.hasan@gmail.com', '01820123460', 800, 80),
(12, 3, NULL, 'Asma Khatun', 'Asma', 'Khatun', 'asma.khatun@gmail.com', '01930123461', 1500, 120),
(13, 6, NULL, 'Riaz Uddin', 'Riaz', 'Uddin', 'riaz.uddin@gmail.com', '01740123462', 2000, 180),
(14, 8, NULL, 'Shakib Alam', 'Shakib', 'Alam', 'shakib.alam@gmail.com', '01850123463', 900, 90),
(15, 7, NULL, 'Tahmina Sultana', 'Tahmina', 'Sultana', 'tahmina.sultana@gmail.com', '01960123464', 1200, 150),
(16, 9, NULL, 'Rakib Hasan', 'Rakib', 'Hasan', 'rakib.hasan@gmail.com', '01770123465', 1000, 110),
(17, 10, NULL, 'Lubna Rahman', 'Lubna', 'Rahman', 'lubna.rahman@gmail.com', '01880123466', 1400, 140),
(18, 4, NULL, 'Mahbub Alam', 'Mahbub', 'Alam', 'mahbub.alam@gmail.com', '01990123467', 1700, 190),
(19, 2, NULL, 'Jahidul Islam', 'Jahidul', 'Islam', 'jahidul.islam@gmail.com', '01710123468', 2000, 200),
(20, 3, NULL, 'Hasina Akter', 'Hasina', 'Akter', 'hasina.akter@gmail.com', '01820123469', 1800, 170),
(21, 6, NULL, 'Imran Hossain', 'Imran', 'Hossain', 'imran.hossain@gmail.com', '01930123470', 2100, 210),
(22, 3, NULL, 'Shahana Rani', 'Shahana', 'Rani', 'shahana.rani@gmail.com', '01740123471', 2300, 230),
(23, 1, NULL, 'Tareq Anwar', 'Tareq', 'Anwar', 'tareq.anwar@gmail.com', '01850123472', 1900, 180),
(24, 7, NULL, 'Nilufa Begum', 'Nilufa', 'Begum', 'nilufa.begum@gmail.com', '01960123473', 1500, 160),
(25, 4, NULL, 'Sumon Islam', 'Sumon', 'Islam', 'sumon.islam@gmail.com', '01770123474', 1800, 190);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    Description VARCHAR(150)
);


INSERT INTO Category (CategoryID, CategoryName, Description)
VALUES
(1, 'Electronics', 'Electronic gadgets and accessories'),
(2, 'Mobile', 'Mobile phones and accessories'),
(3, 'Audio', 'Audio devices like headphones and speakers'),
(4, 'Groceries', 'Daily essentials including food and beverages'),
(5, 'Clothing', 'Apparel for men, women, and children'),
(6, 'Home Appliances', 'Kitchen and household appliances'),
(7, 'Stationery', 'Office and school supplies'),
(8, 'Beauty & Personal Care', 'Cosmetics, skincare, and grooming products'),
(9, 'Medical Supplies' , 'Products  for the prevention, treatment, and management of diseases and health conditions.');

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(150),
    Country VARCHAR(50),
    ContactPerson VARCHAR(100),
    ContactPhone VARCHAR(15),
    Status VARCHAR(20) DEFAULT 'active',
    CategoryID INT,  
    BranchID INT,    
    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID),
    FOREIGN KEY (BranchID) REFERENCES Branch (BranchID)
);

INSERT INTO Supplier (SupplierID, Name, Phone, Email, Address, Country, ContactPerson, ContactPhone, Status, CategoryID, BranchID)
VALUES
(1, 'Global Supplies', '01770000001', 'global.supplies@gmail.com', '123 Street, Dhaka', 'Bangladesh', 'Ahmed Khan', '01711111111', 'active', 1, 1),
(2, 'Chittagong Distributors', '01870000002', 'chittagong.dist@gmail.com', '456 Road, Chittagong', 'Bangladesh', 'Salma Begum', '01822222222', 'active', 2, 2),
(3, 'Mobile World', '01970000003', 'mobile.world@gmail.com', '789 Avenue, Rajshahi', 'Bangladesh', 'Rafiqur Rahman', '01933333333', 'active', 2, 3),
(4, 'AudioTech', '01780000004', 'audiotech@gmail.com', '101 Park, Sylhet', 'Bangladesh', 'Khalid Mahmud', '01744444444', 'active', 3, 4),
(5, 'Home Essentials', '01790000005', 'home.essentials@gmail.com', '52 Crescent, Khulna', 'Bangladesh', 'Sharmin Akter', '01755555555', 'active', 4, 1),
(6, 'Grocery Mart', '01880000006', 'grocery.mart@gmail.com', '67 Boulevard, Barisal', 'Bangladesh', 'Faisal Hossain', '01866666666', 'active', 4, 2),
(7, 'Style Outfitters', '01980000007', 'style.outfitters@gmail.com', '89 Plaza, Comilla', 'Bangladesh', 'Nasrin Jahan', '01977777777', 'active', 5, 3),
(8, 'Stationery Hub', '01760000008', 'stationery.hub@gmail.com', '12 Circle, Dhaka', 'Bangladesh', 'Tariq Islam', '01788888888', 'active', 6, 4),
(9, 'Beauty Bliss', '01890000009', 'beauty.bliss@gmail.com', '34 Market, Mymensingh', 'Bangladesh', 'Jahanara Alam', '01899999999', 'active', 7, 1),
(10, 'TechZone Electronics', '01960000010', 'techzone@gmail.com', '19 Broadway, Sylhet', 'Bangladesh', 'Tanvir Ahmed', '01910101010', 'active', 1, 2),
(11, 'Fashion Fiesta', '01790000011', 'fashion.fiesta@gmail.com', '11 Star Lane, Chittagong', 'Bangladesh', 'Mim Rahman', '01720202020', 'active', 5, 3),
(12, 'Mobile Galaxy', '01860000012', 'mobile.galaxy@gmail.com', '22 Sunset, Rajshahi', 'Bangladesh', 'Sadiq Rahim', '01830303030', 'active', 2, 4),
(13, 'Audio Experts', '01950000013', 'audio.experts@gmail.com', '44 Skyline, Khulna', 'Bangladesh', 'Arif Chowdhury', '01940404040', 'active', 3, 1),
(14, 'Fresh Mart', '01780000014', 'fresh.mart@gmail.com', '55 Spring, Barisal', 'Bangladesh', 'Lima Akter', '01750505050', 'active', 4, 2),
(15, 'Smart Electronics', '01850000015', 'smart.electronics@gmail.com', '66 Blue, Comilla', 'Bangladesh', 'Rahim Uddin', '01860606060', 'active', 1, 3),
(16, 'Green Supplies', '01940000016', 'green.supplies@gmail.com', '77 Greenway, Mymensingh', 'Bangladesh', 'Hasan Ali', '01970707070', 'active', 7, 4),
(17, 'HouseTech Appliances', '01770000017', 'housetech@gmail.com', '88 Meadow, Dhaka', 'Bangladesh', 'Rashed Karim', '01780808080', 'active', 4, 1),
(18, 'Mobile Universe', '01840000018', 'mobile.universe@gmail.com', '99 Zenith, Rajshahi', 'Bangladesh', 'Rumana Parvez', '01890909090', 'active', 2, 2),
(19, 'Super Audio', '01930000019', 'super.audio@gmail.com', '10 Center, Sylhet', 'Bangladesh', 'Nadim Khan', '01910111212', 'active', 3, 3),
(20, 'Elegant Fashion', '01760000020', 'elegant.fashion@gmail.com', '20 Sunset Blvd, Chittagong', 'Bangladesh', 'Mehnaz Jahan', '01720222333', 'active', 5, 4);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT,          
    SupplierID INT,          
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier (SupplierID)
);



INSERT INTO Product (ProductID, ProductName, CategoryID, SupplierID, Price, StockQuantity)
VALUES
(1, 'Smartphone', 2, 3, 25000.00, 100),
(2, 'Laptop', 1, 15, 50000.00, 50),
(3, 'Bluetooth Speaker', 3, 4, 3000.00, 200),
(4, 'Headphones', 3, 4, 1500.00, 300),
(5, 'Washing Machine', 6, 5, 35000.00, 30),
(6, 'Refrigerator', 6, 5, 60000.00, 20),
(7, 'Notebook', 7, 8, 50.00, 1000),
(8, 'Ballpoint Pen', 7, 8, 10.00, 2000),
(9, 'Shampoo', 8, 9, 200.00, 500),
(10, 'Face Wash', 8, 9, 150.00, 400),
(11, 'T-Shirt', 5, 7, 500.00, 300),
(12, 'Jeans', 5, 7, 1200.00, 200),
(13, 'Tablet', 9, 3, 20000.00, 100),
(14, 'Power Bank', 2, 12, 1500.00, 250),
(15, 'Microwave Oven', 6, 17, 20000.00, 40),
(16, 'LED TV', 1, 10, 40000.00, 60),
(17, 'Smart Watch', 1, 12, 8000.00, 150),
(18, 'Hair Dryer', 1, 9, 1200.00, 300),
(19, 'Audio Amplifier', 3, 13, 7000.00, 100),
(20, 'Cooking Oil', 4, 14, 180.00, 500),
(21, 'Rice Cooker', 4, 5, 3000.00, 50),
(22, 'Water Bottle', 6, 8, 100.00, 600),
(23, 'Foundation', 8, 9, 800.00, 400),
(24, 'Perfume', 8, 9, 600.00, 400),
(25, 'Freedom', 9, 8, 200.00, 500),
(26, 'Selain', 9, 5, 10.00, 1000),
(27, 'Chilli Powder', 4, 6, 50.00, 600),
(28, 'Ipad', 2, 3, 35000.00, 200),
(29,  'Kurti', 5, 7, 1000.00, 400),
(30, 'Nue Care Wipe Tissue', 9, 8, 300.00, 300),
(31, 'Pencil', 7, 8, 10.00, 600),
(32, 'Basmoti Rice', 4, 6, 200.00, 250),
(33, 'Savlon', 9, 5, 100.00, 400),
(34, 'Bandage', 9, 5, 10.00, 600),
(35, 'Miniket Rice', 4, 6, 70.00, 300),
(36, 'Water Purifier', 6, 17, 3000.00, 200),
(37, 'Noodles', 4, 6, 200.00, 500),
(38, 'Senitizer', 9, 8, 100.00, 400),
(39, 'Hand Tissue', 4, 5, 100.00, 500),
(40, 'Hair Tonic', 8, 9, 500.00, 300),
(41, 'Serum', 8, 9, 600.00, 300),
(42, 'Ointment', 9, 8, 50.00, 200),
(43, 'Cotton', 9, 8, 200.00, 400),
(44, 'Coriander Powder', 4, 6, 50.00, 400),
(45, 'EyeLiner', 8, 9, 400.00, 200),
(46, 'Gas Stove', 6, 5, 2000.00, 200),
(47, 'Induction Cooker', 6, 17, 3000.00, 300),
(48, 'Almirah', 6, 5, 10000.00, 250),
(49, 'Marker', 7, 8, 40.00, 650),
(50, 'Eraser', 7, 8, 20.00, 500);




CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,            
    CustID INT,                          
    OrderDate DATE NOT NULL,            
    OrderStatus VARCHAR(20) DEFAULT 'Pending',  
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustID) REFERENCES Customers(CustID)
);
INSERT INTO Orders (OrderID, CustID, OrderDate, OrderStatus, TotalAmount)
VALUES
(1, 1, '2024-11-01', 'Pending', 53000.00),
(2, 2, '2024-11-02', 'Shipped', 25000.00),
(3, 3, '2024-11-03', 'Delivered', 30000.00),
(4, 4, '2024-11-04', 'Cancelled', 35000.00),
(5, 5, '2024-11-05', 'Pending', 25000.00),
(6, 6, '2024-11-06', 'Shipped', 18000.00),
(7, 7, '2024-11-07', 'Delivered', 22000.00),
(8, 8, '2024-11-08', 'Pending', 12000.00),
(9, 9, '2024-11-09', 'Shipped', 17000.00),
(10, 10, '2024-11-10', 'Delivered', 30000.00),
(11, 11, '2024-11-11', 'Cancelled', 10000.00),
(12, 12, '2024-11-12', 'Pending', 8000.00),
(13, 13, '2024-11-13', 'Shipped', 15000.00),
(14, 14, '2024-11-14', 'Delivered', 25000.00),
(15, 15, '2024-11-15', 'Pending', 9000.00),
(16, 16, '2024-11-16', 'Shipped', 20000.00),
(17, 17, '2024-11-17', 'Delivered', 14000.00),
(18, 18, '2024-11-18', 'Pending', 16000.00),
(19, 19, '2024-11-18', 'Cancelled', 15000.00),
(20, 20, '2024-11-19', 'Cancelled', 20000.00),
(21, 12, '2024-11-19', 'Shipped', 25000.00),
(22, 21, '2024-11-20', 'Cancelled', 30000.00),
(23, 24, '2024-11-20', 'Cancelled', 10000.00),
(24, 13, '2024-11-20', 'Delivered', 13000.00),
(25, 23, '2024-11-21', 'Cancelled', 12000.00),
(26, 9, '2024-11-21', 'Delivered', 16000.00),
(27, 2, '2024-11-21', 'Cancelled', 15000.00),
(28, 25, '2024-11-24', 'Pending', 2000.00),
(29, 23, '2024-11-23', 'Delivered', 15000.00),
(30, 1, '2024-11-24', 'Shipped', 34000.00),
(31, 20, '2024-11-24', 'Cancelled', 9000.00),
(32, 21, '2024-11-21', 'Pending', 15000.00),
(33, 12, '2024-11-19', 'Delivered', 23000.00),
(34, 14, '2024-11-20', 'Cancelled', 8000.00),
(35, 16, '2024-11-23', 'Pending', 32000.00),
(36, 5, '2024-11-12', 'Shipped', 15000.00),
(37, 4, '2024-11-18', 'Cancelled', 7000.00),
(38, 18, '2024-11-25', 'Pending', 9000.00),
(39, 20, '2024-11-15', 'Delivered', 15500.00),
(40, 7, '2024-11-26', 'Cancelled', 15000.00);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,        
    OrderID INT,                          
    ProductID INT,                        
    Quantity INT NOT NULL,                
    Price DECIMAL(10, 2) NOT NULL,        
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity, Price)
VALUES
(1, 1, 2, 1, 50000.00),
(2, 1, 3, 1, 3000.00),
(3, 2, 1, 1, 25000.00),
(4, 3, 3, 2, 3000.00),
(5, 4, 5, 1, 35000.00),
(6, 5, 6, 2, 60000.00),
(7, 6, 7, 5, 50.00),
(8, 7, 8, 10, 10.00),
(9, 8, 11, 3, 500.00),
(10, 9, 13, 1, 20000.00),
(11, 21, 23, 4, 800.00),
(12, 12, 34, 20, 10.00),
(13, 10, 15, 1, 20000.00),
(14, 17, 20, 3, 180.00),
(15, 11, 14, 1, 1500.00),
(16, 13, 12, 2, 1200.00),
(17, 14, 11, 2, 500.00),
(18, 25, 16, 1, 40000.00),
(19, 15, 26, 5, 10.00),
(20, 16, 27, 3, 50.00),
(21, 18, 18, 1, 1200.00),
(22, 19, 29, 2, 1000.00),
(23, 20, 30, 1, 300.00),
(24, 21, 31, 2, 10.00),
(25,22, 32, 1, 200.00),
(26, 23, 35, 1, 70.00),
(27, 27, 37, 2, 200.00),
(28, 28, 38, 2, 100.00),
(29, 30, 43, 1, 200.00),
(30, 34, 45, 1, 400.00);
SET SQL_SAFE_UPDATES = 0;

UPDATE Orders 
SET TotalAmount = (     
    SELECT COALESCE(SUM(Quantity * Price), 0)     
    FROM OrderDetails     
    WHERE OrderDetails.OrderID = Orders.OrderID
);


DELETE FROM Orders
   WHERE TotalAmount= 0.00;

-- 1.0Display all Branch information
SELECT * FROM Branch;

-- 1.1Display all Designation information
SELECT * FROM Designation;

-- 1.2Display all Employees information
SELECT * FROM Employees;

-- 1.3Display all Membership information
SELECT * FROM Membership;

-- 1.4Display all Customers information
SELECT * FROM Customers;

-- 1.5Display all Category information
SELECT * FROM Category;

-- 1.6Display all Supplier information
SELECT * FROM Supplier;

-- 1.7Display all Product information
SELECT * FROM Product;

-- 1.8Display all Orders information
SELECT * FROM Orders;

-- 1.9Display all OrderDetails information
SELECT * FROM OrderDetails;

-- 2.Employee details in Dhaka branch with designation
SELECT E.Employee_First_Name, E.Employee_Middle_Name, D.DesignationName 
  FROM Employees E JOIN Designation D 
    ON E.DesignationID = D.DesignationID
      WHERE E.BranchID = 1;  -- Dhaka Branch

-- 3.Display customers who have Membership
SELECT c.CustID, c.Name, m.MmberID, m.MmberID
  FROM Customers c JOIN Membership m 
      ON c.MmberID = m.MmberID;

-- 4.Display eligible customers with EarnPoints > 200
SELECT c.CustID, c.Name, c.Email, m.Username, m.EarnPoints
    FROM Customers c JOIN Membership m 
        ON c.MmberID = m.MmberID
          WHERE m.EarnPoints > 200;

-- 5.Apply 5% discount to orders of eligible customers
UPDATE Orders
SET TotalAmount = TotalAmount * 0.95
  WHERE CustID IN 
    ( SELECT c.CustID FROM Customers c JOIN Membership m 
      ON c.MmberID = m.MmberID
       WHERE m.EarnPoints > 200);

-- 5.Retrieve orders with the 5% discount applied
SELECT o.OrderID, o.CustID, o.TotalAmount, o.OrderDate
  FROM Orders o
    WHERE o.CustID IN 
      (SELECT c.CustID FROM Customers c
        JOIN Membership m
          ON c.MmberID = m.MmberID
              WHERE m.EarnPoints > 200);

-- 6.List suppliers providing home appliances
SELECT S.SupplierID, S.Name AS SupplierName, S.ContactPerson, S.Phone, C.CategoryName
  FROM Supplier S JOIN Product P 
    ON S.SupplierID = P.SupplierID
      JOIN Category C ON P.CategoryID = C.CategoryID
          WHERE C.CategoryName LIKE '%Home Appliance%';

-- 7.Display inactive branches
SELECT BranchID, Branch_Name, City, PhoneNo          
  FROM Branch
    WHERE BranchStatus = 'Inactive';

-- 8.Display total quantity of products sold in Dhaka
SELECT p.ProductName, SUM(od.Quantity) AS TotalQuantity
  FROM OrderDetails od JOIN
    Orders o ON od.OrderID = o.OrderID
      JOIN Product p 
          ON od.ProductID = p.ProductID
            JOIN Branch b 
              ON o.CustID = b.BranchID
                WHERE b.City = 'Dhaka'
                  GROUP BY p.ProductName;

-- 9.Display the total number of employees in each branch
SELECT B.Branch_name, COUNT(E.EmployeeID) AS TotalEmployees
  FROM Branch B JOIN Employees E 
    ON B.BranchID = E.BranchID
      GROUP BY B.Branch_name;

-- 10.Display products supplied by "Mobile World"
SELECT P.ProductName, P.Price, P.StockQuantity
FROM Product P
JOIN Supplier S ON P.SupplierID = S.SupplierID
WHERE S.Name = 'Mobile World';

-- 11.Display cancelled orders
SELECT O.OrderID, O.CustID, O.OrderStatus
  FROM Orders O
    WHERE O.OrderStatus LIKE '%Cancelled';

-- 12.Display products in category 'Groceries'
SELECT P.ProductID, P.ProductName, C.CategoryName
  FROM Product P JOIN Category C
    WHERE C.CategoryID = 4 AND C.CategoryID = P.CategoryID;

-- 13.Display products in 'Medical Supplies' category
SELECT p.ProductID, p.ProductName FROM Product p 
  WHERE p.CategoryID IN
    (SELECT c.CategoryID FROM Category c
    WHERE c.CategoryName = 'Medical Supplies');

-- 14.Display total products in each category
SELECT C.CategoryName, COUNT(P.ProductID) AS TotalProduct
  FROM Category C JOIN Product P 
    WHERE P.CategoryID = C.CategoryID
    GROUP BY C.CategoryName;

-- 15.Display highest priced product and its supplier
SELECT p.ProductID, p.ProductName, p.Price, s.Name AS SupplierName
  FROM Product p JOIN Supplier s ON p.SupplierID = s.SupplierID
    WHERE p.Price = 
    (SELECT MAX(Price) FROM Product);

-- 16.Display total sales from the order with highest total amount
SELECT od.OrderID, SUM(od.Quantity * od.Price) AS TotalSales
  FROM OrderDetails od
    WHERE od.OrderID = 
    (SELECT OrderID FROM Orders
      WHERE TotalAmount = 
      (SELECT MAX(TotalAmount) FROM Orders)
        )
          GROUP BY od.OrderID;

-- 17.Display products with the highest price
SELECT p.ProductID, p.ProductName, p.Price
FROM Product p
WHERE p.Price > ALL (
    SELECT Price
    FROM Product p2
    WHERE p2.ProductID != p.ProductID
);

-- 18.0.Branch Sales Performance Report for each branch, including orders with 'Pending' status. 
SELECT b.Branch_name,COUNT(o.OrderID) AS TotalOrders,SUM(o.TotalAmount) AS TotalSales,AVG(o.TotalAmount) AS AvgOrderValue
  FROM  Branch b NATURAL JOIN Customers c NATURAL JOIN Orders o
    WHERE o.OrderStatus = 'Pending' -- include pending orders
      GROUP BY b.BranchID, b.Branch_name, b.City
        ORDER BY TotalSales DESC;


-- 18.1.Total Sales for Orders 
SELECT 
    b.Branch_name,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Branch b
JOIN Customers c ON b.BranchID = c.BranchID
JOIN Orders o ON c.CustID = o.CustID
GROUP BY 
    b.BranchID, b.Branch_name, b.City
ORDER BY 
    TotalSales DESC;

-- 18.2.Total Sales for Orders Excluding 'Cancelled' Orders
SELECT 
    b.Branch_name,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalAmount) AS TotalSales
FROM 
    Branch b
JOIN Customers c ON b.BranchID = c.BranchID
JOIN Orders o ON c.CustID = o.CustID
WHERE 
    o.OrderStatus != 'Cancelled' 
GROUP BY 
    b.BranchID, b.Branch_name, b.City
ORDER BY 
    TotalSales DESC;

-- 18.3.Total Sales for Only 'Cancelled' Orders
SELECT 
    b.Branch_name,
    COUNT(o.OrderID) AS TotalCancelledOrders,
    SUM(o.TotalAmount) AS TotalCancelledSales
FROM 
    Branch b
JOIN Customers c ON b.BranchID = c.BranchID
JOIN Orders o ON c.CustID = o.CustID
WHERE 
    o.OrderStatus = 'Cancelled'  
GROUP BY 
    b.BranchID, b.Branch_name, b.City
ORDER BY 
    TotalCancelledSales DESC;

-- 19.Display products with a price higher than some average price within the same category
SELECT p.ProductName, p.Price, c.CategoryName
FROM Product p
NATURAL JOIN Category c
WHERE p.Price > SOME (
    SELECT AVG(p2.Price)
    FROM Product p2
    WHERE p2.CategoryID = p.CategoryID
);
-- 20.avarage salary of emp in each branch
SELECT b.Branch_name, AVG(d.Salary) AS AverageSalary
  FROM Employees e NATURAL JOIN Designation d NATURAL JOIN Branch b
    GROUP BY b.Branch_name
      ORDER BY AverageSalary DESC;

-- 21. distinct Branch name that have order
SELECT DISTINCT b.Branch_name
FROM Orders o
NATURAL JOIN Customers c
NATURAL JOIN Branch b;

-- 22.order count for each branch
SELECT b.Branch_name, COUNT(o.OrderID) AS OrderCount
FROM Branch b
LEFT JOIN Customers c ON b.BranchID = c.BranchID
LEFT JOIN Orders o ON c.CustID = o.CustID
GROUP BY b.Branch_name;

-- 23.Avg salary amount per branch
SELECT b.Branch_name, AVG(o.TotalAmount) AS AverageSale
FROM Orders o
NATURAL JOIN Customers c
NATURAL JOIN Branch b
GROUP BY b.Branch_name;

-- 24.Product Count by Category and Supplier
SELECT C.CategoryName, COUNT(P.ProductID) AS ProductCount, S.Name AS SupplierName
FROM Product P
NATURAL JOIN Category C
NATURAL JOIN Supplier S
GROUP BY C.CategoryName, S.Name
HAVING COUNT(P.ProductID) <= 5;

-- 25.Update the salary for the 'Staff' designation in the Designation table
UPDATE Designation
SET Salary = Salary + 1000
WHERE DesignationName = 'Staff';

-- 25.Retrieve employee details who have the 'Staff' designation
SELECT e.EmployeeID,e.BranchID,d.Salary                   
  FROM Employees e JOIN Designation d 
    ON e.DesignationID = d.DesignationID  
      WHERE d.DesignationName = 'Staff';

-- 26.get Customers without MmberID
SELECT c.Name, c.Invoice, b.Branch_name
FROM Customers C
JOIN Branch B ON C.BranchID = B.BranchID
WHERE C.MmberID IS NULL;

-- 27.get Employee details for 'Mymensingh Branch'
SELECT E.Employee_First_Name, E.Employee_Middle_Name, D.DesignationName ,b.Branch_name
  FROM Employees E JOIN Designation D
    ON E.DesignationID = D.DesignationID
    join Branch b 
    on E.BranchID = b.BranchID
      WHERE b.Branch_name='Mymensingh Branch';  
