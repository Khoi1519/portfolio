USE [Portfolio]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[PostId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[RoomId] [int] NOT NULL,
	[CreatorId] [int] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[New]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[New](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Images] [nvarchar](max) NULL,
	[Source] [nvarchar](max) NULL,
 CONSTRAINT [PK_New] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Like] [int] NOT NULL,
	[UrlImages] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatorId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[AboutMe] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Role] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 06/04/2022 12:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Information] [nvarchar](max) NULL,
	[Skill] [nvarchar](max) NULL,
	[PercentSkill] [float] NOT NULL,
	[Project] [nvarchar](max) NULL,
	[Time] [nvarchar](max) NULL,
	[TitleProject] [nvarchar](max) NULL,
	[ShortTitle] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220527175017_init', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Id], [Content], [Status], [UserId], [PostId], [CreatedAt]) VALUES (9, N'ở đâu ngon z :)))', 1, 14, 9, CAST(N'2022-05-29T23:59:23.0296221' AS DateTime2))
INSERT [dbo].[Comment] ([Id], [Content], [Status], [UserId], [PostId], [CreatedAt]) VALUES (10, N'quay gì z cha ', 1, 15, 10, CAST(N'2022-05-30T09:44:00.1070262' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [Content], [Status], [CreatedAt], [RoomId], [CreatorId]) VALUES (62, N'hi', 1, CAST(N'2022-05-29T23:35:45.1225210' AS DateTime2), 12, 15)
INSERT [dbo].[Message] ([Id], [Content], [Status], [CreatedAt], [RoomId], [CreatorId]) VALUES (63, N'ALO', 1, CAST(N'2022-05-29T23:35:53.9819522' AS DateTime2), 13, 15)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[New] ON 

INSERT [dbo].[New] ([Id], [Title], [Content], [Images], [Source]) VALUES (4, N'Facebook đang đánh mất mình vì sao chép TikTok', N'Mark Zuckerberg, CEO Meta, đang tìm mọi cách, kể cả sao chép đối thủ và phá vỡ nét đặc trưng của Facebook, Instagram nhằm cạnh tranh với TikTok.

Justina Sharp, 24 tuổi với 93.000 người theo dõi trên Instagram, hồi năm ngoái được đại diện mạng xã hội này đề nghị gặp để thảo luận những biện pháp giúp cô mở rộng số người xem. Sharp cảm thấy lạ lẫm khi được liên hệ trực tiếp như vậy, nhưng vẫn quyết định tham gia cuộc họp.

&#34;Người đó trao đổi với tôi trong đúng 30 phút, đưa ra những mẹo chung chung mà ai cũng biết như cách dùng hashtag và thời gian đăng bài&#34;, Sharp nhớ lại.

Cô sau đó nhận ra mục đích thật sự của buổi gặp. Người đại diện Instagram cho biết cô sẽ thật sự thành công nếu tất cả những gì cô đăng lên nền tảng này là nội dung nguyên bản, chưa xuất hiện ở nơi khác.

&#34;Ồ, hóa ra họ không muốn tôi đăng lại các video từ TikTok. Họ muốn tôi đăng đầu tiên ở Reels&#34;, cô nhớ lại.

Reels là tính năng video ngắn, được coi là bản sao chép của TikTok. Meta, công ty mẹ của Facebook và Instagram, cần người dùng đăng nội dung lên Reels để thu hút giới trẻ, nhất là khi số liệu tăng trưởng của hai nền tảng này đi ngang và khiến giá trị cổ phiếu của Meta giảm tới 47% kể từ đầu năm.

CEO Mark Zuckerberg muốn đảo chiều xu thế này, cũng như củng cố sự ủng hộ với canh bạc dài hạn như metaverse, bằng cách tập trung vào sao chép y nguyên TikTok.

Trong 14 năm qua, từ lúc ra mắt News Feed, Facebook đã phát triển thuật toán hỗ trợ người dùng thấy những gì họ muốn thấy, dựa trên hoạt động của họ trên mạng. Facebook xếp hạng bạn bè dựa trên mức độ tương tác và sắp xếp thứ tự hiển thị bài viết, cũng như hiển thị quảng cáo dựa trên danh mục tìm kiếm của người dùng.

Thuật toán này giúp Facebook đi đầu trong mảng quảng cáo với trị giá 116 tỷ USD, nhưng cũng khiến người dùng nhanh chóng nhàm chán.

Trong khi đó, TikTok áp dụng thuật toán tiên tiến hơn, gợi ý những thứ mà họ thậm chí chưa biết là mình sẽ thích, đồng thời thúc đẩy sự nổi tiếng cho những người vô danh, miễn là họ liên tục tạo ra nội dung thú vị.

Zuckerberg giờ đây cũng bắt đầu coi hiệu ứng này là ưu tiên của Facebook. &#34;Tôi coi loại AI đang được phát triển không chỉ là hệ thống gợi ý video dạng ngắn, mà còn là công cụ phát hiện và đem đến những nội dung thú vị nhất được người dùng chia sẻ&#34;, ông nói.

Công ty lớn như Meta, với 3,6 tỷ người dùng trên Facebook, Instagram và WhatsApp, có nhiều cách để thúc đẩy trải nghiệm những tính năng mới. Reels đang xuất hiện trên tường của mọi người dùng Instagram. Khi họ bấm vào một video, ứng dụng sẽ chuyển sang giao diện toàn màn hình, trong đó thao tác lướt lên hoặc xuống sẽ dẫn đến các video Reel khác.

Instagram cũng có kế hoạch thay đổi giao diện, trong đó người dùng được đưa vào chế độ video toàn màn hình như TikTok khi mở ứng dụng. Đây là sự thay đổi lớn, khi Instagram vốn là mạng xã hội nổi tiếng với phong cách xây dựng hình ảnh tạo ấn tượng. Giờ đây, Meta đang tìm cách xóa bỏ chính đặc trưng này của Instagram để cạnh tranh với TikTok, nhưng điều đó có thể không mang lại hiệu quả.

TikTok đang là ứng dụng được tải về nhiều nhất trên thế giới. Kể từ năm 2020, người Mỹ dành nhiều thời gian trên TikTok hơn Facebook hay Instagram. Ứng dụng này dự kiến vượt mặt YouTube trong năm nay.

Giới lãnh đạo Instagram nhận ra thành công của TikTok không chỉ đến từ định dạng video. Họ cũng muốn sao chép nền văn hóa của những nhà sáng tạo nội dung và đơn giản hóa quy trình trả tiền cho người làm video.

&#34;Một trong những điều quan trọng được áp dụng cho Reels là chương trình thưởng tiền. Bạn được mời tham gia chương trình này và sẽ được thưởng khi tạo video Reels có nhiều người xem&#34;, Asad Awan, người phụ trách kiếm tiền trên tính năng này, cho hay.

Sharp đã tham gia chương trình và thu được 150 USD cho một video Reels thu hút 700.000 lượt xem. Cô dùng số tiền này mua cà phê cho bạn bè, họ sẽ đánh giá những video cô đăng trên TikTok. Các video được yêu thích sẽ được Sharp đăng lên Reels nhưng không kèm logo TikTok, để thuật toán của Instagram coi đó là nội dung nguyên bản.

Sharp coi mình là người hoạt động chủ yếu trên TikTok. &#34;Tôi thu được nhiều tiền hơn, có lượng người xem đông hơn trên TikTok. Với tư cách là người sáng tạo nội dung, tôi cũng thích TikTok hơn, dù đã gắn bó với Instagram từ năm 13 tuổi. Sự xuất hiện của Reels giống như Instagram đang tìm cách giành giật thị phần của TikTok mà không tìm cách cải thiện ứng dụng của mình&#34;, Sharp nói.

Những người đứng đầu Instagram tin Reels có cơ hội trở thành cột mốc văn hóa mới, một phần vì họ từng thành công với chiến lược sao chép tính năng mới của đối thủ trước đây. Chẳng hạn, tính năng Stories trên Instagram và Facebook là bản sao của Snapchat, nó vừa hạn chế khả năng mở rộng của đối thủ vừa giúp Instagram vượt mốc một tỷ người dùng.

Dù vậy, không phải dự án nào của Meta cũng thành công. Reels có thể thất bại giống IGTV, ứng dụng cạnh tranh với YouTube được Instagram tung ra năm 2018, hay Facebook Gaming, chương trình ra mắt cùng năm đó để chạy đua với Twitch.

Zuckerberg không có nhiều thời gian để tìm ra phương án khả dĩ hơn. Meta hồi năm ngoái có giá trị thị trường khoảng 1.000 tỷ USD, nhưng giờ chỉ còn khoảng 500 tỷ USD. Sau khi công bố kết quả kinh doanh quý IV/2021 vào tháng 2, giá trị của Meta đã sụt 251 tỷ USD chỉ trong một ngày. Công ty đang phải cắt giảm ngân sách cho những canh bạc dài hạn, trong đó có metaverse và phần cứng thực tế ảo, trong khi chờ Reels giành được sự ủng hộ từ các hãng quảng cáo.

Các nhà sáng tạo nội dung cũng đang làm mọi cách để kiếm tiền. Sharp cho biết cô không có lựa chọn nào ngoài làm video định dạng ngắn nến thuật toán của Facebook và Instagram chuyển sang tối ưu cho Reels.

&#34;Instagram chứa nhiều tính năng thu hút giới trẻ, nhưng chỉ có Reels được ưu ái trên thuật toán. Người theo dõi tôi không thấy các nội dung trên News Feed hay Stories của tôi&#34;, cô nói.', N'ad704c17f19e4f948a2de154d9e2905f.jpg', N'https://vnexpress.net/facebook-dang-danh-mat-minh-vi-sao-chep-tiktok-4469141.html')
INSERT [dbo].[New] ([Id], [Title], [Content], [Images], [Source]) VALUES (5, N'Sony: Smartphone sắp chụp đẹp hơn máy ảnh mirrorless', N'Hãng điện tử Nhật Bản cho rằng chất lượng ảnh chụp bởi smartphone sẽ vượt máy ảnh ống kính rời không gương lật vào năm 2024.

&#34;Chúng tôi kỳ vọng với các công nghệ đang phát triển, smartphone sẽ vượt xa máy ảnh mirrorless trong vài năm tới về khả năng chụp&#34;, Terushi Shimizu, Giám đốc điều hành công ty giải pháp bán dẫn của Sony nói trong một buổi họp báo, theo Nikkei. Trong biểu đồ được ông giới thiệu, dòng cảm biến Sony G có thể cho chất lượng ảnh chụp tĩnh đẹp và chi tiết hơn một máy ảnh mirrorless tiêu chuẩn trong hai năm tới.

Theo đại diện Sony, ngoài việc tăng kích thước, cảm biến loại mới sẽ kết hợp hai bước gồm công nghệ pixel dùng bóng bán dẫn hai lớp và xử lý trí tuệ nhân tạo AI. Điều này giúp tăng gấp đôi hiệu quả khi chụp ảnh ở những điều kiện thiếu sáng. Ngoài ra, trong tương lai, smartphone cũng có thể quay video 8K với khả năng xóa mờ hậu cảnh như một máy ảnh ống kính rời chuyên nghiệp.

Phát ngôn của ông Terushi Shimizu tạo ra nhiều ý kiến trái chiều. Các trang thông tin về máy ảnh như Photorumors, Petapixel, SonyAddict cho rằng với tốc độ phát triển như hiện tại, thời gian hai năm nữa để smartphone vượt máy ảnh mirrorless là &#34;bất khả thi&#34;. &#34;Ngay cả khi những điều họ nói sẽ thành sự thật, tôi tự hỏi số phận các dòng máy ảnh mirrorless của Sony sẽ ra sao sau năm 2024&#34;, biên tập viên của Photorumors đặt câu hỏi.

Tuy phát triển nhiều trong 10 năm trở lại đây, camera trên smartphone vẫn được cho là khó vượt qua máy ảnh ống kính rời truyền thống do giới hạn về không gian cho cảm biến, ống kính. Đa số các hiệu ứng như làm mờ hậu cảnh, zoom xa đều được thực hiện với sự trợ giúp của phần mềm trên điện thoại. Trong đó, khả năng chụp ảnh xóa phông giả lập được phát triển nhiều năm nhưng vẫn còn khoảng cách lớn với máy DSLR hay mirrorless.', N'8305fd02f40e4c2f8244ad61e9f4cdbb.jpg', N'https://vnexpress.net/sony-smartphone-sap-chup-dep-hon-may-anh-mirrorless-4469358.html')
INSERT [dbo].[New] ([Id], [Title], [Content], [Images], [Source]) VALUES (6, N'Hãng smartphone Trung Quốc cài mã độc lên hơn 20 triệu smartphone, trục lợi 4.3 triệu USD từ người dùng', N'Gionee, một thương hiệu điện thoại từng có tiếng tại Trung Quốc mới đây đã vướng phải một vụ án nghiêm trọng khi một công ty con của thương hiệu này bị tòa án Trung Quốc kết tội trục lợi người dùng nhờ quảng cáo thông qua việc cài cắm sẵn trojan bên trong hơn 20 triệu chiếc smartphone do hãng này sản xuất.

Cụ thể, theo Gizmochina, phía cơ quan điều tra đã tìm thấy một loại trojan horse (một chương trình độc hại ngụy trang như một ứng dụng lành tính) bên trong hơn 20 triệu điện thoại Gionee. Các loại trojan này được cài cắm bởi Công ty TNHH Công nghệ Baice Bắc Kinh thông đồng cùng với Shenzhen Zhipu Technology, công ty con của Gionee, thông qua các bản cập nhật phần mềm bằng ứng dụng được gọi là Story Lock Screen. Ứng dụng này được tự động cập nhật mà người dùng không hề hay biết.

Theo thống kê, 20 triệu chiếc điện thoại bị nhiễm trojan được phân phối trong khoảng thời gian từ tháng 12/2018 cho tới tháng 10/2019. Ứng dụng độc hại được cấy vào các máy này chủ yếu kiếm lợi nhuận từ việc hiển thị các quảng cáo và các đoạn media trái phép lên điện thoại, trục lợi bất chính số tiền lên tới gần 28 triệu nhân dân tệ, tương đương khoảng 4.3 triệu USD.
Từ hoạt động kinh doanh trái phép kể trên, tòa án Trung Quốc tuyên án Shenzhen Zhipu Technology vi phạm tội điều khiển trái phép hệ thống thông tin máy tính. 4 kẻ đứng sau hoạt động này là Xu Li, Zhu Ying, Jia Zhengqiang và Pan Qi bị kết án từ 3 tới 3.5 năm tù cùng khoản tiền phạt 200,000 nhân dân tệ, tương đương số tiền 700 triệu đồng.

Mặc dù vụ việc khi bị phanh phui đã khiến nhiều người dùng cảm thấy lo ngại, thế nhưng đây thực chất lại là một điều phổ biến tại quốc gia tỷ dân này, khi mà nhiều smartphone được bán ra thị trường với giá cực kỳ rẻ và trục lời người dùng bằng các phương pháp bất chính khác nhau. Bên cạnh Gionee, Infinix và Tecno trước đó cũng đã bị kết tội về các hoạt động kinh doanh độc hại tương tự.

Shenzhen Zhipu Technology là một công ty con của Gionee (Công ty TNHH Thiết bị truyền thông Gionee Thâm Quyến). Các hồ sơ cho thấy Gionee nắm giữ tới 85% cổ phần của công ty Shenzhen Zhipu Technology. Hoạt động kinh doanh của công ty này bao gồm việc phát triển công nghệ phần mềm máy tính, kinh doanh quảng cáo và sử dụng mạng lưới thông tin để vận hành các sản phẩm thuộc mảng trò chơi điện tử. Vốn điều lệ của công ty này ban đầu là 10 triệu nhân dân tệ cùng với người đại diện là Xu Li.', N'1bc653e7715845f0bd148eeeac990e97.png', N'https://kenh14.vn/hang-smartphone-trung-quoc-cai-ma-doc-len-hon-20-trieu-smartphone-truc-loi-43-trieu-usd-tu-nguoi-dung-20201208190633043.chn')
INSERT [dbo].[New] ([Id], [Title], [Content], [Images], [Source]) VALUES (7, N'Hiệu trưởng trường quốc tế ở TP.HCM khẳng định luôn bảo vệ học sinh', N'Những ngày qua, mạng xã hội xôn xao việc bà T.H.T. tố con gái bị bạn học đánh xảy ra tại trường Quốc tế TP.HCM (ISHCMC-AA) ở An Phú, TP. Thủ Đức, TP.HCM. Ông Nathan Swenson, Hiệu trưởng nhà trường xác nhận vụ việc, cho biết tiếp tục tìm hiểu và tìm hướng xử lý.

Ngày 29/5, chúng tôi tiếp tục có cuộc trao đổi với ông Nathan Swenson. Vị này khẳng định, nhà trường làm việc vô cùng nghiêm túc để giúp đỡ và bảo vệ an toàn cho học sinh tại trường học.

&#34;Bảo vệ an toàn cho học sinh luôn luôn và sẽ là ưu tiên số một của chúng tôi&#34;, ông Nathan Swenson nhấn mạnh.

Một lần nữa, ông Nathan Swenson nói rằng vụ ẩu đả xảy ra bên ngoài khuôn viên trường học. 4 học sinh liên quan, đều đã được yêu cầu quay lại trường học để kiểm tra sức khoẻ. Dù các học sinh có vết cào, cấu trên cơ thể nhưng sức khoẻ đều ổn định, không gặp vấn đề gì nghiêm trọng. Sau đó, cả 4 học sinh được mời đến phòng Hiệu trưởng để làm rõ vụ việc và nguyên nhân.

Tuy nhiên, khi Hiệu trưởng và học sinh mới bắt đầu trao đổi, phụ huynh kéo đến và làm gián đoạn. Nhà trường buộc phải tập trung làm việc với phụ huynh, nên không thể tiếp tục nói chuyện với học sinh.

&#34;Sang tuần, chúng tôi sẽ gặp một số gia đình học sinh. Những gia đình không thể liên lạc qua điện thoại, chúng tôi đều đã gửi e-mail&#34;, vị này nói. 
Hiệu trưởng trường Quốc tế TP.HCM bày tỏ thất vọng khi những vấn đề kỷ luật của nhà trường bị đưa lên các phương tiện truyền thông theo cách gây tổn thương cho những học sinh liên quan. Đặc biệt, một số thông tin thất thiệt bị phát tán, không thực sự đại diện cho sự thật của vấn đề.

Những thông tin không chính xác, theo ông Nathan Swenson, bao gồm &#34;sự việc này bắt đầu như thế nào?&#34;, &#34;nhà trường đã xử lý ra sao?&#34; hay &#34;quy trình giải quyết&#34;. Những thông tin được phát tán không đồng nhất với giá trị của nhà trường và mong muốn của cộng đồng.
&#34;Chúng tôi là những chuyên gia trường học trong việc giải quyết các tình huống khó khăn giữa các học sinh, từ đó giúp các em nâng cao khả năng học tập và hiểu biết. Và chúng tôi sẽ tiếp tục làm điều này, một cách riêng tư, để bảo vệ học sinh&#34;, Hiệu trưởng khẳng định.

Trường Quốc tế TP.HCM kêu gọi &#34;những người đã chia sẻ hoặc tham gia phát tán những thông tin liên quan vụ ẩu đả, hãy dừng lại! Bởi, những thông tin này sẽ gây tổn thương học sinh -  những trẻ vị thành niên, đôi khi đưa ra những quyết định sai lầm trong cách hành xử&#34;.

&#34;Nhà trường tin tưởng và hi vọng các bên liên quan sẽ tham gia tích cực để giải quyết dứt điểm vụ việc này. Chúng tôi sẽ không đưa ra thêm bất kỳ ý kiến công khai nào về vấn đề này nữa, thay vào đó, tập trung xây dựng cộng đồng, bảo vệ sức khoẻ học sinh và giáo viên, nhân viên&#34;, ông Nathan Swenson nói.

Trước đó, bà T.H.T. tố con gái bị bạn học đánh, khi tuần trước, nhà trường tổ chức cho học sinh đi du lịch Hồ Tràm. Con gái bà trong khi giữ ghế cho một người bạn, thì một bạn nữ khác tiến đến hỏi: &#34;Ghế này ai ngồi chưa?&#34;, liền đáp &#34;ghế đã có người ngồi&#34;. Hôm sau, con gái bà T. bị nữ sinh kia đánh, đấm vào ngực, cào xát người ngay tại khuôn viên trường học. Một số học sinh khác chạy đến can ngăn cũng bị đánh.

&#34;Nhà trường chối bỏ trách nhiệm, đổ lỗi và nói rằng các bên gia đình tự giải quyết. Tôi bức xúc tột cùng, không thể giữ bình tĩnh&#34;, bà H. viết.

Trên trang Facebook cá nhân, bà T. liên tục chia sẻ nhiều thông tin xung quanh vụ việc, thậm chí livestream (phát trực tiếp) nhận được sự theo dõi &#34;khủng&#34;. Bà nói sẽ chuyển trường cho con. Ngày 27/5, không thấy học sinh đến lớp, nhà trường đã gửi tin nhắn thông báo vắng mặt.

&#34;Mâu thuẫn 2 bên chưa thể giải quyết, nhà trường cũng không cam kết đảm bảo an toàn cho học sinh. Hôm xảy ra vụ việc, con tôi cũng không hề được chăm sóc y tế như nhà trường đã nói!&#34;, bà T. bức xúc. Người mẹ khẳng định không đồng tình với cách giải quyết của nhà trường và sẽ xử lý vụ việc đến cùng.', N'd9f44e7f95514dd98106ee8c9e896d7d.png', N'https://kenh14.vn/hieu-truong-truong-quoc-te-o-tphcm-nhung-nguoi-da-chia-se-hoac-tham-gia-phat-tan-nhung-thong-tin-lien-quan-vu-au-da-hay-dung-lai-20220529102158586.chn')
SET IDENTITY_INSERT [dbo].[New] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [Note], [Title], [Like], [UrlImages], [Status], [CreatedAt], [UserId]) VALUES (9, NULL, NULL, 1, N'24346feb9ccf4c9eb9d7ddf2e600345d.jpg', 1, CAST(N'2022-05-29T23:35:28.0827304' AS DateTime2), 15)
INSERT [dbo].[Post] ([Id], [Note], [Title], [Like], [UrlImages], [Status], [CreatedAt], [UserId]) VALUES (10, NULL, NULL, 1, N'cb786397f72f43739f3c6d0585bac0f4.mp4', 1, CAST(N'2022-05-30T00:04:28.6561532' AS DateTime2), 16)
INSERT [dbo].[Post] ([Id], [Note], [Title], [Like], [UrlImages], [Status], [CreatedAt], [UserId]) VALUES (12, NULL, N'Phan Thiết nè', 0, N'00862af23dd34d17ad9cae74f16c219e.mp4', 1, CAST(N'2022-05-30T19:59:23.2101866' AS DateTime2), 16)
INSERT [dbo].[Post] ([Id], [Note], [Title], [Like], [UrlImages], [Status], [CreatedAt], [UserId]) VALUES (13, NULL, NULL, 0, N'', 1, CAST(N'2022-05-30T22:09:06.3889590' AS DateTime2), 16)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (12, 15, 16)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (13, 15, 1)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (14, 16, 1)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (15, 16, 14)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (16, 16, 18)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (17, 16, 17)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (18, 1, 14)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (19, 1, 17)
INSERT [dbo].[Room] ([Id], [CreatorId], [MemberId]) VALUES (20, 1, 18)
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (1, N'admin', N'AQAAAAEAACcQAAAAEGaJKPczfKh7ZrNzJF4sGzKycxvj7cZa9fATFhokpyZEo659I3HGmtFpNPYTKc/FMA==', N'', N'admin@yobmail.com', N'0982456789', N'No thing', N'Địa chỉ', 1, 1, CAST(N'2022-05-28T00:50:17.6205659' AS DateTime2))
INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (14, N'khoa', N'AQAAAAEAACcQAAAAEKH5Nz+fiFhBwBc8vwydSZDdmUiWhmtBC85gP/G1lxwQUntXC5ehP3yzUGRzcd8pVg==', N'cd495bb361324a468dd5ac5f45d21be8.jpg', N'khoa@vanlanguni.vn', N'0903087994', N'Khoa DEV', N'HCM', 1, 2, CAST(N'2022-05-29T23:19:26.1778197' AS DateTime2))
INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (15, N'giacatluong', N'AQAAAAEAACcQAAAAENw5530Oy/kjkI5fLndsiez8IwMZdsvl4kKGsF0JgX+rJPNJ1nR6tnsTqKxE0uY7Vw==', N'ff501d4a52504505bee6ca093c9330d1.jfif', N'gclIT@gmail.com', N'0778013320', N'Gia Cát Lượng, biểu tự Khổng Minh, hiệu Ngọa Long, là Thừa tướng, công thần khai quốc, nhà chính trị, nhà ngoại giao, chỉ huy quân sự, nhà giáo dục, và cũng là một nhà phát minh kỹ thuật nổi tiếng của nhà Quý Hán thời Tam Quốc.', N'HCM', 1, 2, CAST(N'2022-05-29T23:21:12.6820362' AS DateTime2))
INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (16, N'lubu', N'AQAAAAEAACcQAAAAEHOMvIZne/VP9P0ZUdN1LFU9JwBhFxMoVDy4BxPq09NMAR+s9qrQ/m1XbIiqmo4eGw==', N'50c5eeb3e88648709587808b56c17a9b.jfif', N'lubuIT@gmail.com', N'0903087994', N'Lã Bố hay Lữ Bố, tự Phụng Tiên, là một viên tướng nổi tiếng vào cuối thời Đông Hán trong lịch sử Trung Quốc. Do có công diệt trừ gian thần Đổng Trác, ông được Hán Hiến Đế phong tước Ôn hầu, nên còn được gọi là Lã Ôn hầu, ban giả tiết, nghi trượng ngang hàng Tam công.', N'CHINA', 1, 2, CAST(N'2022-05-29T23:24:28.0125880' AS DateTime2))
INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (17, N'taothao', N'AQAAAAEAACcQAAAAEKatlAdya+SRRYVu0ESh4bRC+9yZ2iqAiBGI2heJO4uck4pU22ma9FQF6+gM8MxByw==', N'e8280f75574642f5991c9eb47303ad38.jfif', N'taothaoIT@gmail.com', N'0903087994', N'Tào Tháo là nhà chính trị, nhà quân sự và còn là một nhà thơ nổi tiếng cuối thời Đông Hán trong lịch sử Trung Quốc. Ông là người đã đặt cơ sở cho thế lực quân sự cát cứ ở miền Bắc Trung Quốc, lập nên chính quyền Tào Ngụy thời Tam Quốc. Ông được con trai truy tôn là Thái Tổ Vũ Hoàng đế (太祖武皇帝).', N'CHINA', 1, 2, CAST(N'2022-05-29T23:25:18.7675991' AS DateTime2))
INSERT [dbo].[User] ([Id], [Username], [Password], [Avatar], [Email], [Phone], [AboutMe], [Address], [Status], [Role], [CreatedAt]) VALUES (18, N'truongphi', N'AQAAAAEAACcQAAAAELCMAq/nJVMDc8Cz4JbIP7ivEX45GcSZzDH6w0xThv8BviPKF0IcSTALaJt0xdd23Q==', N'f377a569ffe741e5b3ddf734f00613cd.jfif', N'truongphiIT@gmail.com', N'0903087996', N'Trương Phi, tự Ích Đức, Tam quốc diễn nghĩa ghi là Dực Đức, là danh tướng nhà Thục Hán thời Tam Quốc trong lịch sử Trung Quốc. Trong tiểu thuyết Tam quốc diễn nghĩa của La Quán Trung, nhân vật Trương Phi cùng Lưu Bị và Quan Vũ kết bái huynh đệ ở vườn đào. Ông là em út trong 3 người.', N'CHINA', 1, 2, CAST(N'2022-05-29T23:26:28.4509923' AS DateTime2))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserSkill] ON 

INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (5, NULL, N'Html', 98, N'c47dded5b65449a695731f6e4ce37147.jpg', N'2018-2020', N'CHATBOT', N'2018-2020', CAST(N'2022-05-29T23:32:18.2132634' AS DateTime2), 15)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (6, NULL, N'Css', 80, N'171f83f021184ff2a9d395acb10b7308.jpg', N'2020-2021', N'CLOUD STORAGE', N'2020-2021', CAST(N'2022-05-29T23:33:21.1533851' AS DateTime2), 15)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (7, NULL, N'PHP', 13, N'5c03460ff4224423a681d4bb8b3cf67c.jpg', N'2018-2020', N'APP DEVERLOPMENT', N'2018-2020', CAST(N'2022-05-29T23:44:16.0242655' AS DateTime2), 16)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (8, NULL, N'C#', 70, N'11576bb534794a5fb38b39a556d9b8d5.jpg', N'2022-2024', N'AI', N'2022-2024', CAST(N'2022-05-29T23:44:52.2339967' AS DateTime2), 16)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (9, NULL, N'C#', 98, N'e1cf9a40bc634ca5a0a0a17fdbf70535.jpg', N'2018-2020', N'AI TECHNOLOGY', N'2018-2020', CAST(N'2022-05-29T23:46:45.0107723' AS DateTime2), 17)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (10, NULL, N'JavaScript', 80, N'f7b2e3b789764c8d9d8e27ca1376d3c7.jpg', N'2024-2025', N'BIOMETRIC TECHNOLOGY', N'2024-2025', CAST(N'2022-05-29T23:47:39.9896529' AS DateTime2), 17)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (11, NULL, N'Html', 98, N'4b9dbb501ac345feb5e83abb4db2ff86.jpg', N'2018-2020', N'APP DEVERLOPMENT', N'2018-2020', CAST(N'2022-05-29T23:48:41.4031717' AS DateTime2), 18)
INSERT [dbo].[UserSkill] ([Id], [Information], [Skill], [PercentSkill], [Project], [Time], [TitleProject], [ShortTitle], [CreatedAt], [UserId]) VALUES (12, NULL, N'JavaScript', 70, N'696c89a913f344cf9275dd12dbe7f754.jpg', N'2020-2021', N'MARKETING', N'2020-2021', CAST(N'2022-05-29T23:49:46.5009589' AS DateTime2), 18)
SET IDENTITY_INSERT [dbo].[UserSkill] OFF
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Message] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((0)) FOR [Like]
GO
ALTER TABLE [dbo].[Post] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((2)) FOR [Role]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Post] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post_PostId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User_UserId]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Room_RoomId] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Room_RoomId]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_User_CreatorId] FOREIGN KEY([CreatorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_User_CreatorId]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User_UserId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_User_CreatorId] FOREIGN KEY([CreatorId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_User_CreatorId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_User_MemberId] FOREIGN KEY([MemberId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_User_MemberId]
GO
ALTER TABLE [dbo].[UserSkill]  WITH CHECK ADD  CONSTRAINT [FK_UserSkill_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserSkill] CHECK CONSTRAINT [FK_UserSkill_User_UserId]
GO
