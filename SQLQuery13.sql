SELECT TOP (1000) [ProductID]
      ,[ProductName]
      ,[SupplierID]
      ,[CategoryID]
      ,[QuantityPerUnit]
      ,[UnitPrice]
      ,[UnitsInStock]
      ,[QuantitySold]
      ,[StarRating]
      ,[Discontinued]
      ,[image]
      ,[describe]
      ,[releaseDate]
      ,[Discount]
      ,[status]
  FROM [Sonshop_Website].[dbo].[Products]

  delete from Products
  delete from Categories






select * from Users 
CREATE DATABASE Perfume_Website 

USE [Sonshop_Website]
-- Tạo bảng [dbo].[Users]
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1),
	[UserName] [nvarchar](50) PRIMARY KEY NOT NULL ,
	[FullName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Email] [nvarchar](50)  NULL,
	[BirthDay] date NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[status] bit NOT NULL
)

INSERT INTO [dbo].[Users] ([UserName], [FullName], [Password], [Address],[Image], [Email], [BirthDay], [Phone], [RoleID], [status])
VALUES 
    ('john_doe', 'John Doe', 'password123', N'123 Main St, CityA', 'images/users/user.png', 'aaaa@gmail.com', '2003-08-09', '12345678901', 1, 1),
	('john_doeee', N'John Doe', 'password123', N'123 Main St, CityA', 'images/users/user.png', 'aaaa@gmail.com', '2003-08-09', '12345678901', 2, 1),
	('user1', N'Khoái ăn sang', 'password123', N'456 Oak St, CityB', 'images/users/user1.png', 'phunghthanh203@gmail.com', '1995-02-15', '9876543210', 2, 1),
    ('user2', N'User Two', 'password456', N'789 Pine St, CityC', 'images/users/user2.png', 'user2@gmail.com', '1990-07-22', '1239874560', 2, 1),
    ('user3', N'User Three', 'password789', N'Chả sợ chi', 'images/users/user3.png', 'user3@gmail.com', '1988-11-30', '6543217890', 2, 1);



-- Tạo bảng [dbo].[Categories]
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
	[Description] [ntext] NULL,
	CONSTRAINT [PK_Categories] PRIMARY KEY([CategoryID])
)

INSERT INTO [dbo].[Categories] ([CategoryName], [Description])
VALUES 
    ('Valspar', N'Sơn Valspar là thương hiệu sơn đến từ Mỹ đã có hơn 200 năm kinh nghiệm trong ngành công nghiệp sơn và là một trong bảy tập đoàn sơn nổi tiếng trên thế giới.
		Sơn Valspar sẽ đáp ứng mọi nhu cầu của quý khách trong việc bảo vệ và làm đẹp cho ngôi nhà thân yêu của mình.'),
    ('Nippon', N'Mang thịnh vượng và hạnh phúc đến cho ngôi nhà của bạn với những màu sắc Phong Thủy may mắn năm 2022 của Sơn Nippon. Khám phá những lựa chọn màu sắc tốt lành và phù hợp nhất cho tuổi của bạn với lời khuyên của chuyên gia phong thủy: Tan Khoon Yong, Goh Guang Leong, Mark Tan.'),
    ('Dulux', N'Dulux Better Living Air Clean là sơn nội thất sinh học siêu cao cấp với các thành phần tự nhiên có trong công thức như than tre hoạt tính, giúp vô hiệu các khí độc hại, đem lại không khí trong lành hơn cho không gian trong nhà.'),
    ('TOA', N'Chuyên mục cập nhật các xu hướng màu sắc mới cùng những phong cách thiết kế trên toàn thế giới. Với các bài viết này, hy vọng TOA sẽ truyền cảm hứng cho bạn tạo ra câu chuyện riêng trong hành trình thiết kế tổ ấm thân yêu của mình.');

-- Tạo bảng [dbo].[Suppliers]
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [nvarchar](24) NULL,
	[HomePage] [ntext] NULL,
	CONSTRAINT [PK_Suppliers] PRIMARY KEY([SupplierID])
)



INSERT INTO [dbo].[Suppliers] ([CompanyName], [ContactName], [Country], [Phone], [HomePage])
VALUES 
    ('Sherwin-Williams', 'Supplier Contact Sherwin-Williams', 'USA', '+1 800 474 3794', 'https://www.sherwin-williams.com'),
    ('Behr', 'Supplier Contact Behr', 'USA', '+1 714 545 7101', 'https://www.behr.com'),
    ('Benjamin Moore', 'Supplier Contact Benjamin Moore', 'USA', '+1 855 724 6802', 'https://www.benjaminmoore.com'),
    ('Dulux', 'Supplier Contact Dulux', 'United Kingdom', '+44 800 844 944', 'https://www.dulux.co.uk'),
    ('Valspar', 'Supplier Contact Valspar', 'USA', '+1 612 332 7371', 'https://www.valspar.com'),
    ('PPG Paints', 'Supplier Contact PPG Paints', 'USA', '+1 800 441 9695', 'https://www.ppgpaints.com'),
    ('Farrow & Ball', 'Supplier Contact Farrow & Ball', 'United Kingdom', '+44 1202 876141', 'https://www.farrow-ball.com'),
    ('CIL', 'Supplier Contact CIL', 'Canada', '+1 866 232 6527', 'https://www.cil.ca'),
    ('Glidden', 'Supplier Contact Glidden', 'USA', '+1 800 454 3336', 'https://www.glidden.com'),
    ('PPG Timeless', 'Supplier Contact PPG Timeless', 'USA', '+1 800 441 9695', 'https://www.ppgpaints.com'),
    ('Clark+Kensington', 'Supplier Contact Clark+Kensington', 'USA', '+1 800 800 7616', 'https://www.acehardware.com'),
    ('Dunn-Edwards', 'Supplier Contact Dunn-Edwards', 'USA', '+1 888 337 2468', 'https://www.dunnedwards.com'),
    ('Olympic', 'Supplier Contact Olympic', 'USA', '+1 800 441 9695', 'https://www.olympic.com'),
    ('KILZ', 'Supplier Contact KILZ', 'USA', '+1 866 977 3711', 'https://www.kilz.com'),
    ('Rust-Oleum', 'Supplier Contact Rust-Oleum', 'USA', '+1 847 367 7700', 'https://www.rustoleum.com');




-- Tạo bảng [dbo].[Products]
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[QuantityPerUnit] [nvarchar](100) NULL,
	[UnitPrice] [money] NULL,
	[UnitsInStock] [smallint] NULL,
	[QuantitySold] [int] NULL,
	[Discontinued] [bit] NULL,
	[image] [nvarchar](max) NULL,
	[describe] [nvarchar](max) NULL,
	[releaseDate] [date] NULL,
	[Discount] [float] NULL,
	[status] bit Not null,
	CONSTRAINT [PK_Products] PRIMARY KEY([ProductID]),
	CONSTRAINT [FK_Products_Supplier]
    FOREIGN KEY ([SupplierID])
    REFERENCES [dbo].[Suppliers] ([SupplierID]) ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT [FK_Products_Category] 
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories] ([CategoryID]) 
)

INSERT INTO [dbo].[Products] (
    [ProductName], 
    [SupplierID], 
    [CategoryID], 
    [QuantityPerUnit], 
    [UnitPrice], 
    [UnitsInStock], 
    [QuantitySold], 
    [Discontinued],
	[image],
	[describe],
	[releaseDate],
	[Discount],
	[status]
	)
VALUES 

   -- 20 products for Valspar ()

    ('Valspar Signature Ultra White Satin Tintable Interior Paint (5-Gallon)', 1, 1, '5L', 139.99, 100, 20, 0, 'images/products/Valspar/1-1.png,images/products/Valspar/1-2.png', 
	'Valspar Signature Ultra White Satin Tintable Interior Paint is an innovative paint and primer in one that delivers maximum coverage and durability.', '2023-10-02',0.7, 1),

    ('Valspar Ultra White Eggshell Tintable Interior Paint (1-Gallon)', 2, 1, '1L', 29.99, 50, 10, 0, 'images/products/Valspar/2-1.png,images/products/Valspar/2-2.png', 
	'Valspar Ultra White Eggshell Tintable Interior Paint provides a smooth finish with excellent washability, ideal for use in high-traffic areas.', '2023-11-02',0.5, 1),

    ('Valspar Ultra White Semi-Gloss Tintable Interior Paint (1-Gallon)', 3, 1, '1L', 39.99, 75, 15, 0, 'images/products/Valspar/3-1.png,images/products/Valspar/3-2.png', 
	'Valspar Ultra White Semi-Gloss Tintable Interior Paint offers a durable and scrubbable finish, perfect for kitchens, bathrooms, and trim.', '2016-10-02',0.3, 1),

    ('Valspar Signature Ultra White Matte Tintable Interior Paint (1-Gallon)', 4, 1, '1L', 49.99, 120, 30, 0, 'images/products/Valspar/4-1.png,images/products/Valspar/4-2.png', 
	'Valspar Signature Ultra White Matte Tintable Interior Paint provides a smooth, elegant finish that hides minor imperfections and resists stains.', '2023-10-02',0.45, 1),

    ('Valspar Ultra White Gloss Tintable Interior Paint (1-Gallon)', 5, 1, '1L', 59.99, 80, 25, 0, 'images/products/Valspar/5-1.png,images/products/Valspar/5-2.png', 
	'Valspar Ultra White Gloss Tintable Interior Paint delivers a durable finish with exceptional flow and leveling for a professional result.', '2023-05-02',0.7, 1),
   
    ('Valspar Ultra White Satin Tintable Interior Paint (1-Gallon)', 6, 1, '1L', 69.99, 60, 12, 0, 'images/products/Valspar/6-1.png,images/products/Valspar/6-2.png', 
	'Valspar Ultra White Satin Tintable Interior Paint provides a subtle sheen that resists moisture, stains, and wear for long-lasting beauty.', '2009-07-02',0.3, 1),

    ('Valspar Ultra White Eggshell Tintable Interior Paint (5-Gallon)', 7, 1, '5L', 79.99, 90, 18, 0, 'images/products/Valspar/7-1.png,images/products/Valspar/7-2.png', 
	N'Valspar Ultra White Eggshell Tintable Interior Paint offers a soft, velvety finish that is easy to clean and maintain, perfect for walls and ceilings.', '2023-02-02',0.45, 1),

    ('Valspar Signature Ultra White Semi-Gloss Tintable Interior Paint (5-Gallon)', 8, 1, '5L', 89.99, 110, 22, 0, 'images/products/Valspar/8-1.png,images/products/Valspar/8-2.png',
	N'Valspar Signature Ultra White Semi-Gloss Tintable Interior Paint provides a durable, high-shine finish that is ideal for doors, trim, and cabinets.', '2022-02-02',0.5, 1),

    ('Valspar Ultra White Matte Tintable Interior Paint (5-Gallon)', 9, 1, '5L', 99.99, 150, 35, 0, 'images/products/Valspar/9-1.png,images/products/Valspar/9-2.png', 
	N'Valspar Ultra White Matte Tintable Interior Paint delivers a velvety finish that minimizes surface imperfections and provides excellent coverage.', '2023-09-01',0.7, 1),

    ('Valspar Ultra White Gloss Tintable Interior Paint (5-Gallon)', 10, 1, '5L', 109.99, 70, 14, 0, 'images/products/Valspar/10-1.png,images/products/Valspar/10-2.png', 
	N'Valspar Ultra White Gloss Tintable Interior Paint provides a durable finish with exceptional hardness and resistance to moisture and stains.', '2021-07-02',0.3, 1),

	('Valspar Signature Ultra White Satin Exterior Paint (5-Gallon)', 1, 1, '5L', 139.99, 100, 20, 0, 'images/products/Valspar/11-1.png,images/products/Valspar/11-2.png',
	N'Valspar Signature Ultra White Satin Exterior Paint offers maximum protection and beauty for your home exterior surfaces, including siding and doors.', '2023-11-12',0.3, 1),

    ('Valspar Ultra White Eggshell Exterior Paint (1-Gallon)', 2, 1, '1L', 29.99, 50, 10, 0, 'images/products/Valspar/12-1.png,images/products/Valspar/12-2.png',
	N'Valspar Ultra White Eggshell Exterior Paint provides long-lasting color and protection exterior surfaces, including wood, concrete, and metal.', '2023-11-04',0.3, 1),

    ('Valspar Ultra White Semi-Gloss Exterior Paint (1-Gallon)', 3, 1, '1L', 39.99, 75, 15, 0, 'images/products/Valspar/13-1.png,images/products/Valspar/13-2.png',
	N'Valspar Ultra White Semi-Gloss Exterior Paint offers a durable, weather-resistant finish that stands up harsh outdoor conditions  maintaining its shine.', '2016-10-02',0.3, 1),

    ('Valspar Signature Ultra White Matte Exterior Paint (1-Gallon)', 4, 1, '1L', 49.99, 120, 30, 0, 'images/products/Valspar/14-1.png,images/products/Valspar/14-2.png',
	N'Valspar Signature Ultra White Matte Exterior Paint provides exceptional adhesion and coverage, protecting your home exterior against peeling, cracking, and fading.', '2023-10-02',0.45, 1),

    ('Valspar Ultra White Gloss Exterior Paint (1-Gallon)', 5, 1, '1L', 59.99, 80, 25, 0, 'images/products/Valspar/15-1.png,images/products/Valspar/15-2.png',
	N'Valspar Ultra White Gloss Exterior Paint offers a high-gloss finish that resists fading, cracking, and peeling, ensuring long-lasting beauty and protection for your home.', '2023-05-02',0.7, 1),
   
    ('Valspar Ultra White Satin Exterior Paint (1-Gallon)', 6, 1, '1L', 69.99, 60, 12, 0, 'images/products/Valspar/16-1.png,images/products/Valspar/16-2.png',
	N'Valspar Ultra White Satin Exterior Paint provides excellent coverage and durability, protecting your home exterior against the elements while enhancing its appearance.', '2009-06-02',0.7, 1),

    ('Valspar Ultra White Eggshell Exterior Paint (5-Gallon)', 7, 1, '5L', 79.99, 90, 18, 0, 'images/products/Valspar/17-1.png,images/products/Valspar/17-2.png',
	N'Valspar Ultra White Eggshell Exterior Paint offers superior adhesion and flexibility, ensuring long-lasting protection and beauty for your home exterior surfaces.', '2023-02-02',0.45, 1),

    ('Valspar Signature Ultra White Semi-Gloss Exterior Paint (5-Gallon)', 8, 1, '5L', 89.99, 110, 22, 0, 'images/products/Valspar/18-1.png,images/products/Valspar/18-2.png',
	N'Valspar Signature Ultra White Semi-Gloss Exterior Paint provides a tough, durable finish that resists fading, cracking, and peeling, even in harsh outdoor conditions.', '2022-02-03',0.5, 1),

    ('Valspar Ultra White Matte Exterior Paint (5-Gallon)', 9, 1, '5L', 99.99, 150, 35, 0, 'images/products/Valspar/19-1.png,images/products/Valspar/19-2.png',
	N'Valspar Ultra White Matte Exterior Paint delivers outstanding weather resistance and color retention, protecting your home exterior against the elements for years to come.', '2023-11-01',0.7, 1),

    ('Valspar Ultra White Gloss Exterior Paint (5-Gallon)', 10, 1, '5L', 109.99, 70, 14, 0, 'images/products/Valspar/20-1.png,images/products/Valspar/20-2.png',
	N'Valspar Ultra White Gloss Exterior Paint provides a high-gloss finish that resists fading, cracking, and peeling, ensuring long-lasting beauty and protection for your home.', '2021-07-12',0.3, 1),

	-- 20 products for Nippon ()
	('Nippon Paint - Easy Wash', 1, 2, '5L', 19.99, 100, 20, 4, 'images/products/Nippon/1-1.png, images/products/Nippon/1-2.png', 
	N'Nippon Paint Easy Wash là loại sơn lót nước có khả năng dễ lau chùi, chống bám bẩn và chống thấm nước. Sản phẩm giúp bảo vệ bề mặt tường khỏi các tác nhân bên ngoài như nước mưa, bụi bẩn và ô nhiễm không khí. Sơn có thể sử dụng cho các công trình nội thất và ngoại thất.', '2023-05-01', 0.7, 1),

    ('Nippon Paint - Anti-Mould', 2, 2, '7L', 29.99, 50, 10, 5, 'images/products/Nippon/2-1.png, images/products/Nippon/2-2.png', 
	N'Nippon Paint Anti-Mould là loại sơn chống nấm mốc, chống rêu và chống mối mọt, giúp bảo vệ tường nhà khỏi sự phát triển của vi khuẩn và nấm mốc. Sản phẩm có khả năng chịu nước tốt và dễ dàng vệ sinh, phù hợp sử dụng cho các khu vực ẩm ướt như nhà tắm và nhà bếp.', '2023-05-11', 0.5, 1),

    ('Nippon Paint - Weather Guard', 3, 2, '10L', 39.99, 75, 15, 4, 'images/products/Nippon/3-1.png, images/products/Nippon/3-2.png',
	N'Nippon Paint Weather Guard là loại sơn chống thời tiết, giúp bảo vệ bề mặt tường khỏi sự ảnh hưởng của mưa, nắng, gió và bụi bẩn. Sản phẩm có độ bền cao và độ bám dính tốt, phù hợp sử dụng cho các khu vực ngoại thất như tường rào, cửa sổ và cánh cửa.', '2019-09-08', 0.45, 1),

    ('Nippon Paint - Easy Clean', 4, 2, '15L', 49.99, 120, 30, 4, 'images/products/Nippon/4-1.png, images/products/Nippon/4-2.png', 
	N'Nippon Paint Easy Clean là loại sơn nội thất có khả năng dễ lau chùi và chống bám bẩn, giúp giữ cho bề mặt tường luôn sạch sẽ và bóng bẩy. Sản phẩm có thể sử dụng cho các khu vực nội thất như phòng khách, phòng ngủ và phòng ăn.', '2023-08-09', 0.7, 1),

    ('Nippon Paint - Odourless', 5, 2, '20L', 59.99, 80, 25, 4, 'images/products/Nippon/5-1.png, images/products/Nippon/5-2.png', 
	N'Nippon Paint Odourless là loại sơn nội thất không mùi, giúp giảm thiểu mùi hương khó chịu trong quá trình sử dụng và làm việc. Sản phẩm an toàn cho sức khỏe và môi trường, phù hợp sử dụng cho các khu vực như phòng ngủ, phòng trẻ em và phòng làm việc.', '2020-08-11', 0.3, 1),

    ('Nippon Paint - Stainproof', 6, 2, '25L', 69.99, 60, 12, 5, 'images/products/Nippon/6-1.png, images/products/Nippon/6-2.png', 
	N'Nippon Paint Stainproof là loại sơn chống thấm và chống vết bẩn, giúp bảo vệ bề mặt tường khỏi sự xâm nhập của nước, dầu mỡ và các chất lỏng khác. Sản phẩm có khả năng tự làm sạch và dễ dàng vệ sinh, phù hợp sử dụng cho các khu vực như bếp và nhà vệ sinh.', '2023-01-11', 0.45, 1),

    ('Nippon Paint - Ultra Smooth', 7, 2, '30L', 79.99, 90, 18, 3, 'images/products/Nippon/7-1.png, images/products/Nippon/8-2.png', 
	N'Nippon Paint Ultra Smooth là loại sơn nội thất có độ bám dính cao và bề mặt mịn màng, giúp tạo ra lớp sơn hoàn thiện với độ đồng nhất và màu sắc sáng bóng. Sản phẩm có thể sử dụng cho các khu vực như phòng khách, phòng ngủ và văn phòng làm việc.', '2023-02-12', 0.5, 1),

    ('Nippon Paint - Washable', 8, 2, '35L', 89.99, 110, 22, 4, 'images/products/Nippon/8-1.png, images/products/Nippon/8-2.png', 
	N'Nippon Paint Washable là loại sơn nội thất có khả năng chống bám bẩn và dễ dàng vệ sinh, giúp bảo vệ bề mặt tường khỏi vết bẩn và dầu mỡ. Sản phẩm có thể sử dụng cho các khu vực như nhà bếp, nhà tắm và phòng trẻ em.', '2023-02-12', 0.7, 1),

    ('Nippon Paint - Waterproof', 9, 2, '40L', 99.99, 150, 35, 4, 'images/products/Nippon/9-1.png, images/products/Nippon/9-2.png', 
	N'Nippon Paint Waterproof là loại sơn chống thấm nước và chống ẩm, giúp bảo vệ bề mặt tường khỏi sự xâm nhập của nước mưa và nước ngầm. Sản phẩm có thể sử dụng cho các khu vực như nhà vệ sinh, nhà tắm và sân vườn.', '2010-12-08', 0.45, 1),

    ('Nippon Paint - Anti-Fungus', 10, 2, '45L', 109.99, 70, 14, 5, 'images/products/Nippon/10-1.png, images/products/Nippon/10-2.png', 
	N'Nippon Paint Anti-Fungus là loại sơn chống nấm mốc và vi khuẩn, giúp bảo vệ bề mặt tường khỏi sự phát triển của vi khuẩn và nấm mốc. Sản phẩm có thể sử dụng cho các khu vực như nhà tắm, nhà bếp và nhà kho.', '2020-07-12', 0.3, 1),

	('Nippon Paint - All-in-One', 10, 2, '50L 75L', 39.99, 100, 20, 4, 'images/products/Nippon/11-1.png, images/products/Nippon/11-2.png', 
	N'Nippon Paint All-in-One là loại sơn đa năng có khả năng lót, lót và chống thấm, giúp bảo vệ bề mặt tường khỏi sự ảnh hưởng của mưa, nắng và bụi bẩn. Sản phẩm có thể sử dụng cho các công trình ngoại thất như tường rào, cửa sổ và cánh cửa.', '2023-07-01', 0.7, 1),

    ('Nippon Paint - Quick Dry', 9, 2, '100L', 29.99, 50, 10, 4, 'images/products/Nippon/12-1.png, images/products/Nippon/12-2.png', 
	N'Nippon Paint Quick Dry là loại sơn nhanh khô, giúp tiết kiệm thời gian cho quá trình sơn và hoàn thiện công việc nhanh chóng. Sản phẩm có thể sử dụng cho các khu vực như phòng khách, phòng ngủ và phòng ăn.', '2023-05-10', 0.5, 1),

    ('Nippon Paint - Low Odour', 8, 2, '75L 100L', 39.99, 75, 15, 5, 'images/products/Nippon/13-1.png, images/products/Nippon/13-2.png',
	N'Nippon Paint Low Odour là loại sơn nội thất có mùi hương dịu nhẹ, giúp giảm thiểu mùi khó chịu trong quá trình sử dụng và làm việc. Sản phẩm an toàn cho sức khỏe và môi trường, phù hợp sử dụng cho các khu vực như phòng ngủ, phòng trẻ em và phòng làm việc.', '2019-09-08', 0.3, 1),

    ('Nippon Wall Paint White', 7, 2, '5L 70L 100L', 49.99, 120, 30, 4, 'images/products/Nippon/14-1.png, images/products/Nippon/14-2.png', 
    N'Dưới bàn tay ma thuật của nhà Gucci, Hoa mộc lan trong Gucci Flora Gorgeous Magnolia vẫn giữ được nét độc đáo như vậy, nhưng lần này lại nhu mì và hiền hơn đôi chút dưới cách tác hợp của Dừa ngọt béo và Hoa nhài quyến rũ. Chút Mâm xôi được thêm vào như một nét chấm phá, khiến tổng thể Gorgeous Magnolia có phần mọng nước và ranh mãnh hơn.', '2023-08-09', 0.3, 1),

    ('Nippon Wall Paint Beige', 6, 2, '90L', 39.99, 80, 25, 3, 'images/products/Nippon/15-1.png, images/products/Nippon/15-2.png', 
    N'Cuối cùng, Ocean di Gioia của Giorgio Armani thu mình lại, gói ghém những giá trị mùi hương vào vỏn vẹn 2 nốt hương xạ hương và gỗ đàn hương nhưng để lại trong lòng người mộ điệu những dư âm kéo dài miên man, lưu luyến.', '2020-08-11', 0.3, 1),

    ('Nippon Wall Paint Blue', 4, 2, '5L 100L', 49.99, 60, 12, 2, 'images/products/Nippon/16-1.png, images/products/Nippon/16-2.png', 
    N'VERSACE POUR FEMME DYLAN PURPLE là một mùi hương unisex, A Song For The Rose đem tới cho chúng ta một thức thơm trung tính. Nói đơn giản, nếu bạn yêu thích hương Hoa hồng gợi cảm, quyến rũ nhưng phi giới tính, muốn bản thân tỏa ra hương thơm như một bông hồng, thì Gucci A Song For The Rose là lựa chọn dành cho bạn.', '2023-01-11', 0.45, 1),

    ('Nippon Wall Paint Green', 5, 2, '100L', 79.99, 90, 18, 3, 'images/products/Nippon/17-1.png, images/products/Nippon/17-2.png', 
    N'VICTORIA’S SECRET TEASE FLOWER EDP là một hương thơm mới với sự bùng nổ của những bông hoa rạng rỡ, một vệt hương hoa vui tươi mang vẻ đẹp đa chiều. Ánh sáng chói lọi của nhà Cam Chanh (Cam Bergamot và Hoa Cam) ngon ngọt hòa quyện với ánh sáng rực rỡ đầy màu sắc của Hoa Hồng Grasse và hoa Nhài, được nâng cao bởi một âm hưởng gỗ bao bọc của Gỗ Đàn Hương và Xạ Hương đang nhuốm màu Vanilla.', '2019-02-11', 0.5, 1),

    ('Nippon Wall Paint Yellow', 3, 2, '80L', 89.99, 110, 22, 4, 'images/products/Nippon/18-1.png, images/products/Nippon/18-2.png', 
    N'Tầng hương giữa lại đem đến một cảm giác ngọt ngào nhưng kiêu kỳ, toả sáng bởi sự kết hợp của những loài hoa khác nhau. Hương kem beo béo của Huệ hoà quyện với Hoa nhài Sambac tươi tắn, tất thảy làm nên hương thơm nữ tính nhưng không hề ủy mị, dịu dàng mà vẫn toát lên vẻ thanh lịch củaGood Girl. Và rồi tầng hương cuối nào là Đậu Tonka, Vanilla hay kẹo Praline làm cho hương thơm béo ngậy, trầm ấm, có chút thoảng Hương Gỗ đầy lắng đọng, vấn vương.', '2023-02-12', 0.7, 1),

    ('Nippon Wall Paint Red', 2, 2, '30L 75L, 100L', 99.99, 150, 35, 5, 'images/products/Nippon/19-1.png, images/products/Nippon/19-2.png', 
    N'Dù có phần nhẹ nhàng và quyến rũ, nhưng dường như Calvin Klein Euphoria vẫn không thể phớt lờ cái tôi đầy kiêu kỳ, mãnh liệt. Bằng hơi thở đậm nét phương Đông; Hổ phách, xạ hương và gỗ gụ đã cuộn trào một luồng hương thơm cuồng nhiệt, tìm đến và chinh phục những tâm hồn vô tình chạm phải. Chính sự lan toả của note hương này đã tạo nên chiếc đòn bẫy khiến Calvin Klein Euphoria trở thành niềm kiêu hãnh của những bóng hồng.', '2010-12-10', 0.45, 1),

    ('Nippon Wall Paint Black', 1, 2, '100L', 109.99, 70, 14, 4, 'images/products/Nippon/20-1.png, images/products/Nippon/20-2.png', 
    N'BVLGARI SPLENDIDA PATCHOULI TENTATION EDPD có phần nhẹ nhàng và quyến rũ, nhưng dường như Calvin Klein Euphoria vẫn không thể phớt lờ cái tôi đầy kiêu kỳ, mãnh liệt. Bằng hơi thở đậm nét phương Đông; Hổ phách, xạ hương và gỗ gụ đã cuộn trào một luồng hương thơm cuồng nhiệt, tìm đến và chinh phục những tâm hồn vô tình chạm phải. Chính sự lan toả của note hương này đã tạo nên chiếc đòn bẫy khiến Calvin Klein Euphoria trở thành niềm kiêu hãnh của những bóng hồng.', '2005-07-12', 0.3, 1),
	
	
	-- 10 products Dulux (https://missi.com.vn/danh-muc/nuoc-hoa-niche/)
	('Dulux Wall Paint White', 1, 3, '50L', 19.99, 100, 20, 5, 'images/products/Dulux/1-1.png, images/products/Dulux/1-2.png', 
	N'Lôi cuốn và thu hút mọi người bằng sự tinh tế nhưng cũng không kém phần đơn giản, những nốt hương sang trọng từ Da thuộc và Trầm hương hiện lên như một điểm đánh đấu sự đặc trưng của toàn bộ tầng hương bên trong. Bay bổng hơn một chút cùng với hương Nhang, những nốt Nhũ hương và Xạ hương xuất hiện như đôi cánh giúp hương thơm của Dulux Nuit de Feu lan tỏa đi khắp mọi nơi xung quanh mà nó đi tới.', '2009-03-11', 0.7, 1),

    ('Dulux Wall Paint Beige', 2, 3, '50L', 29.99, 50, 10, 2,'images/products/Dulux/2-1.png, images/products/Dulux/2-2.png', 
	N'Tuy nói là mạnh mẽ, thế nhưng vẫn phải đính chính lại rằng The Matcha 26 vẫn giữ nguyên vẹn sự thanh thoát, pha chút ngon ngót đặc trưng của Matcha. Chỉ khác rằng xung quanh mùi hương ấy được bao bọc bởi Quả sung, Cam đắng, Cỏ hương bài và Tuyết tùng. Tất cả vừa cho thêm vào chút chua ngọt của quả mọng, vừa cho thêm chút khô ráp của Gỗ đê hoà quyện với hương thơm của Matcha.',  '2023-04-12', 0.3, 1),

    ('Dulux Wall Paint Blue', 3, 3, '20L', 39.99, 75, 15, 4, 'images/products/Dulux/3-1.png, images/products/Dulux/3-2.png', 
	N'Đây có lẽ là một mùi hương tốt của Dulux, dù cho có bị những cái tên nổi danh khác như Green Irish Tweed hay Aventus che mờ bớt chút, nhưng Silver Mountain Water vẫn sẽ mãi thỏa lòng được người dùng bất kể khi nào, một hương thơm vượt thời gian.', '2023-12-05', 0.45, 1),

    ('Dulux Wall Paint Green', 4, 3, '15L', 49.99, 120, 30, 4, 'images/products/Dulux/4-1.png, images/products/Dulux/4-2.png', 
	N' CK khiến khứu giác trở nên thư giãn và sạch tới bất ngờ. Midnote của CK one là một chợ hoa đêm, với Hoa tím, Hoa nhài hay Hoa linh lan thung lũng, một sự cuốn hút và táo bạo của nhà CK khi đặt trái cây và hương hoa vào cùng với nhau. Tạo nên cảm giác giải nhiệt nhưng đủ gây sự chú ý. Kết thúc bằng hương Gỗ tuyết tùng và Gỗ đàn hương, CK trọn vẹn mùi hương trên da, trên quần áo bạn và sẵn sàng giúp bạn tự tin cho một ngày mới, hãy là số 1, đừng là số 2 với CK one.' ,  '2023-11-12', 0.3, 1),

    ('Dulux Wall Paint Yellow', 5, 3, '15L', 59.99, 80, 25, 4, 'images/products/Dulux/5-1.png, images/products/Dulux/5-2.png',
	N'Marc Jacobs Daisy Dream là vậy, tuy vẫn là cô nàng trẻ trung và mộng mơ nhưng lại có thừa bản lĩnh của tuổi trưởng thành.', '2023-09-12', 0, 1),
	--
	('Dulux Wall Paint Red', 1, 3, '50L', 19.99, 100, 20, 4, 'images/products/Dulux/6-1.png, images/products/Dulux/6-2.png', 
	N'Nổi tiếng toàn thế giới với dòng áo Polo thể thao đặc trưng, nhà Lacoste đã tham gia một sân chơi lớn hơn khi cho ra mắt dòng nước hoa cho nam đầu tiên, và để tạo nên thành công ấy,không thể không kể đến Lacoste White.', '2023-05-01', 0.0, 1),

    ('Dulux Wall Paint Black', 2, 3, '50L', 29.99, 50, 10, 5,'images/products/Dulux/7-1.png, images/products/Dulux/7-2.png', 
	N'Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.' , '2023-05-12',0.5, 1),

    ('Dulux Wall Paint Pink', 3, 3, '75L', 39.99, 75, 15, 4,'images/products/Dulux/8-1.png, images/products/Dulux/8-2.png',
	N'Nếu ai đó đã từng là fan trung thành với mùi hương của CK one, hẳn sẽ rất vui mừng khi nhà CK ưu ái cho ra đời một phiên bản mới với cái tên CK one Gold. Hiện đại hơn, cá tính hơn, và phủ lên đó thứ cảm xúc bằng Vàng', '2019-09-08', 0.45, 1),

	 ('Dulux Wall Paint Purple', 9, 3, '100L', 59.99, 110, 22, 3,'images/products/Dulux/9-1.png, images/products/Dulux/9-2.png',
	N'Nốt hương đầu tiên là những hương thơm Thảo mộc mát mẻ, hương xanh trong Ngải cứu đem lại một cảm giác khoan khoái, nhẹ nhàng bất tận. Nhưng đó chưa hẳn là mùi hương cốt yếu, cái hay của CK Free là sự hoà quyện độc đáo giữa Da lộn và mùi của Gỗ.' , '2022-02-03',0.5, 1),

    ('Dulux Wall Paint Orange', 8, 3, '100L 125L', 79.99, 150, 35, 3,'images/products/Dulux/10-1.png, images/products/Dulux/10-2.png',
	N'LOUIS VUITTON PACIFIC CHILL EDP: Như một lựa chọn không thể thiếu với nam giới vào những ngày oi bức, Versace Pour Homme là mùi hương được rất được ưa chuộng cho các anh đang bắt đầu tìm cho mình một mùi hương dễ chịu, dễ gần và đa dụng.' , '2023-07-01',0.7, 1);

-- Tạo bảng Order
CREATE TABLE [dbo].[Orders]( 
 	[OrderID] [int] IDENTITY(1,1) NOT NULL, 
 	[Date] [date] NOT NULL, 
 	[UserName] [nvarchar](50) NOT NULL, 
 	[TotalMoney] [money] NULL, 
	[status] bit not null,
 CONSTRAINT [PK_Order] PRIMARY KEY ([OrderID]),
 CONSTRAINT [FK_Order_User] FOREIGN KEY ([UserName])
 REFERENCES [dbo].[Users] ([UserName]) ON DELETE NO ACTION
)

INSERT INTO [dbo].[Orders] ([Date], [UserName], [TotalMoney], [status]) VALUES 

	
 -- Tạo bảng OrderDetails
 CREATE TABLE [dbo].[OrderDetails]( 
 	[OrderID] [int] NOT NULL,  	
	[ProductID] [int] NOT NULL, 
 	[Quantity] [float] NOT NULL, 
 	[UnitPrice] [money] NULL,
	[Discount] [float] NULL,
	CONSTRAINT [PK_OrderDetail] PRIMARY KEY ([OrderID], [ProductID] ),
	CONSTRAINT [FK_ProductDetail] FOREIGN KEY ([ProductID])
	REFERENCES [dbo].[Products]([ProductID]) ON DELETE CASCADE,
	CONSTRAINT [FK_OrderDetail] FOREIGN KEY ([OrderID])
	REFERENCES [dbo].[Orders]([OrderID]) ON DELETE CASCADE
)

INSERT INTO [dbo].[OrderDetails] ([OrderID], [ProductID], [Quantity], [UnitPrice], [Discount]) VALUES 


	CREATE TABLE Wallets (
    WalletID INT IDENTITY(1,1),
	UserName [nvarchar](50),
    Balance DECIMAL(10, 2),
	CONSTRAINT [PK_Wallets] PRIMARY KEY ([WalletID]),
	CONSTRAINT [FK_Wallets_Users] FOREIGN KEY ([UserName])
	REFERENCES [dbo].[Users]([UserName])
)

INSERT INTO Wallets (UserName, Balance)
VALUES
('john_doe', 300),
('john_doeee', 0),
('user1', 200),
('user2', 0),
('user3', 0);



/*drop table Wallets
drop table OrderDetails
drop table Orders
drop table Users
drop table products
drop table [Categories]
drop table [Suppliers]*/

delete from Products
delete from Wallets
delete from OrderDetails
delete from Orders
delete from Users
delete from Categories
delete from Suppliers

ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Supplier];

-- Then, drop the Suppliers table
DROP TABLE [dbo].[Suppliers];

ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Supplier];
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Category];

