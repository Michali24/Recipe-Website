USE [dbRecipeWebSite]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [FK_Recipes_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_Ratings_Users_UserId]
GO
ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [FK_Ratings_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Ingredients] DROP CONSTRAINT [FK_Ingredients_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__FinalSc__5AEE82B9]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__NumberO__44FF419A]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__Categor__440B1D61]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__Average__4316F928]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__RecipeA__3E52440B]
GO
ALTER TABLE [dbo].[Recipes] DROP CONSTRAINT [DF__Recipes__Difficu__3D5E1FD2]
GO
ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [DF__Ratings__Weighte__5BE2A6F2]
GO
ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [DF__Ratings__UserId__46E78A0C]
GO
ALTER TABLE [dbo].[Ratings] DROP CONSTRAINT [DF__Ratings__RecipeI__45F365D3]
GO
ALTER TABLE [dbo].[Ingredients] DROP CONSTRAINT [DF__Ingredien__Recip__47DBAE45]
GO
/****** Object:  Index [IX_Recipes_CategoryId]    Script Date: 26/03/2025 11:04:51 ******/
DROP INDEX [IX_Recipes_CategoryId] ON [dbo].[Recipes]
GO
/****** Object:  Index [IX_Ratings_UserId]    Script Date: 26/03/2025 11:04:51 ******/
DROP INDEX [IX_Ratings_UserId] ON [dbo].[Ratings]
GO
/****** Object:  Index [IX_Ratings_RecipeId]    Script Date: 26/03/2025 11:04:51 ******/
DROP INDEX [IX_Ratings_RecipeId] ON [dbo].[Ratings]
GO
/****** Object:  Index [IX_Ingredients_RecipeId]    Script Date: 26/03/2025 11:04:51 ******/
DROP INDEX [IX_Ingredients_RecipeId] ON [dbo].[Ingredients]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recipes]') AND type in (N'U'))
DROP TABLE [dbo].[Recipes]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ratings]') AND type in (N'U'))
DROP TABLE [dbo].[Ratings]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ingredients]') AND type in (N'U'))
DROP TABLE [dbo].[Ingredients]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/03/2025 11:04:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [dbRecipeWebSite]    Script Date: 26/03/2025 11:04:51 ******/
DROP DATABASE [dbRecipeWebSite]
GO
/****** Object:  Database [dbRecipeWebSite]    Script Date: 26/03/2025 11:04:51 ******/
CREATE DATABASE [dbRecipeWebSite]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbRecipeWebSite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbRecipeWebSite.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbRecipeWebSite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbRecipeWebSite_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [dbRecipeWebSite] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbRecipeWebSite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbRecipeWebSite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbRecipeWebSite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbRecipeWebSite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbRecipeWebSite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbRecipeWebSite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbRecipeWebSite] SET  MULTI_USER 
GO
ALTER DATABASE [dbRecipeWebSite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbRecipeWebSite] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbRecipeWebSite] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbRecipeWebSite] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbRecipeWebSite] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbRecipeWebSite] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbRecipeWebSite] SET QUERY_STORE = ON
GO
ALTER DATABASE [dbRecipeWebSite] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [dbRecipeWebSite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/03/2025 11:04:51 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 26/03/2025 11:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 26/03/2025 11:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IngredientName] [nvarchar](max) NOT NULL,
	[Quantity] [nvarchar](max) NOT NULL,
	[RecipeId] [int] NOT NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 26/03/2025 11:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RatingValue] [int] NOT NULL,
	[RecipeId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[WeightedRating] [float] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 26/03/2025 11:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PreparationInstructions] [nvarchar](max) NOT NULL,
	[NumOfIngredients] [int] NOT NULL,
	[NumOfClicks] [int] NOT NULL,
	[PreparationTime] [float] NOT NULL,
	[DifficultyLevel] [nvarchar](max) NOT NULL,
	[RecipeAuthor] [nvarchar](max) NOT NULL,
	[AverageRating] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[NumberOfRatings] [int] NOT NULL,
	[FinalScore] [float] NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/03/2025 11:04:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250128160718_users', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250128162349_user', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250128163038_u', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250129091531_category', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250201213552_recipe', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250201222848_addrecipevariable', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250201230234_rating', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250202001128_Ingredient', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250213173356_DB', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250303165519_more-var', N'6.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250303185204_update-var', N'6.0.0')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (2, N'Meat', N'A variety of rich and flavorful meat dishes – steaks, stews, roasted chicken, and juicy burgers. Perfect for a satisfying and delicious meal! ')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (3, N'Dairy', N'A dreamy category for cheese lovers! Creamy pasta, quiches, pastries, and rich dairy desserts. Ideal for a delightful breakfast or a light dinner. ')
INSERT [dbo].[Categories] ([Id], [CategoryName], [Description]) VALUES (4, N'Parve', N'Light and versatile dishes suitable for any meal – salads, pastries, stews, and desserts with no dairy or meat. Perfect for neutral and diverse meals! ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Ingredients] ON 

INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (1, N'Beef roast (sirloin or ribeye)', N'1.5 kg', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (2, N'Olive oil', N'3 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (3, N'Garlic, minced', N'4 cloves', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (4, N'Dijon mustard', N'2 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (5, N'Coarse salt', N'1 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (6, N'Black pepper, ground', N'1 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (7, N'Smoked paprika', N'1 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (8, N'Rosemary, chopped', N'1 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (9, N'Thyme, chopped', N'1 tbsp', 3)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (11, N'chicken wings', N'1 kg', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (12, N'BBQ sauce', N'½ cup', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (13, N'honey', N'3 tbsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (15, N'smoked paprika', N'1 tbsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (16, N'minced garlic', N'1 tbsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (17, N'Smoked paprika', N'1 tbsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (18, N'salt', N'½ tsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (19, N'black pepper', N'½ tsp', 4)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (29, N'beef brisket', N'2 kg', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (30, N'olive oil', N'3 cup', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (31, N'cloves garlic, minced', N'4', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (32, N'salt', N'1 tbsp', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (33, N'black pepper', N'1 tbsp', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (34, N'smoked paprika', N'1 tbsp', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (35, N'onions, sliced', N'2', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (36, N'beef broth', N'2 cups ', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (37, N'BBQ sauce', N'1 cup', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (38, N'honey', N'2 tbsp', 5)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (39, N'lamb shoulder, cubed', N'1.5 kg', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (40, N'olive oil', N'2 tbsp', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (41, N'onion, chopped, minced', N'1', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (42, N'cloves garlic, minced', N'4', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (43, N'carrots, sliced', N'2', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (44, N'bell pepper, chopped', N'1', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (45, N'can (400g) diced tomatoes', N'1', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (46, N'beef broth', N'1 cup', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (47, N'cumin', N'1 tbsp', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (48, N'paprika', N'1 tbsp', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (49, N'cinnamon', N'1 tbsp', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (50, N'turmeric', N'1 tbsp', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (51, N'Salt and black pepper to taste', N'', 6)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (52, N'ground beef', N'500g', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (53, N'ground lamb', N'500g', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (54, N'onion, grated', N'1', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (55, N'cloves garlic, minced', N'3', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (56, N'cumin', N'1 tbsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (57, N'coriander', N'1 tbsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (58, N'cinnamon', N'1 tsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (59, N'black pepper', N'1 tsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (60, N'salt', N'1 tsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (61, N'chopped parsley', N'2 tbsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (62, N'olive oil', N'2 tbsp', 7)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (63, N'bone-in, skin-on chicken thighs', N'8', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (64, N'honey', N'3 tbsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (65, N'soy sauce', N'2 tbsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (66, N'olive oil', N'2 tbsp ', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (67, N'garlic, minced', N'3 cloves', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (68, N'dijon mustard', N'1 tbsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (69, N'paprika', N'1 tsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (70, N'black pepper', N'1 tsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (71, N'salt', N'1 tsp', 8)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (72, N'fettuccine pasta', N'300g', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (73, N'butter', N'2 tbsp', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (74, N'olive oil', N'2 tbsp', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (75, N'cloves garlic, minced', N'3', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (76, N'mushrooms, sliced', N'250g', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (77, N'heavy cream', N'1 cup', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (78, N'parmesan cheese, grated', N'½ cup', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (79, N'salt', N'1 tsp', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (80, N'black pepper', N'½ tsp', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (81, N'fresh parsley, chopped', N'¼ cup ', 9)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (82, N'lasagna sheets', N'300g', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (83, N'olive oil', N'2 tbsp', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (84, N'onion, chopped', N'1', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (85, N'garlic, minced', N'3 cloves', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (86, N'spinach, chopped', N'300g', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (87, N'ricotta cheese', N'500g', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (88, N'egg', N'1', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (89, N'salt', N'1 tsp', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (90, N'black pepper', N'½ tsp', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (91, N'marinara sauce', N'1½ cups', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (92, N'mozzarella cheese, shredded', N'1 cup', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (93, N'parmesan cheese, grated', N'½ cup ', 10)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (94, N'potatoes, peeled and cubed', N'1 kg', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (95, N'garlic, roasted', N'4 cloves', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (96, N'milk', N'½ cup', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (97, N'butter', N'¼ cup', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (98, N'parmesan cheese, grated', N'½ cup', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (99, N'salt', N'1 tsp', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (100, N'black pepper', N'¼ cup', 11)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (101, N'ziti pasta', N'500g', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (102, N'olive oil', N'2 tbsp ', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (103, N' garlic, minced', N'3 cloves ', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (104, N'marinara sauce', N'2 cups', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (105, N'ricotta cheese', N'1 cup', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (106, N'mozzarella cheese, shredded', N'1½ cups', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (107, N'parmesan cheese, grated', N'½ cup ', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (108, N'oregano', N'1 tsp', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (109, N'salt', N'½ tsp', 12)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (110, N'black pepper', N'½ tsp', 12)
GO
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (111, N'eggs', N'3', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (112, N'milk', N'2 tbsp ', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (113, N'butter', N'1 tbsp', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (114, N'mushrooms, sliced', N'½ cup', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (115, N'shredded cheese (mozzarella or cheddar)', N'¼ cup', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (116, N'salt', N'½ tsp', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (117, N'black pepper', N'¼ tsp ', 13)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (118, N'all-purpose flour', N'2 1/4 cups', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (119, N'baking soda', N'1 teaspoon', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (120, N'salt', N'1/2 teaspoon', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (121, N'softened butter', N'1 cup', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (122, N'white sugar', N'3/4 cup', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (123, N'brown sugar', N'3/4 cup', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (124, N'eggs', N'2', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (125, N'vanilla extract', N'1 teaspoon', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (126, N'chocolate chips', N'2 cups', 15)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (127, N'Raw tahini', N'1 cup', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (128, N'Sugar', N'1 cup', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (129, N'Oil', N'1/2 cup', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (130, N'All-purpose flour', N'2 cups', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (131, N'Baking powder', N'1 tsp', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (132, N'Vanilla extract', N'1 tsp', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (133, N'Salt', N'A pinch', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (134, N'Sesame seeds', N'As needed for topping', 16)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (135, N'Pasta (penne or fusilli)', N'400g', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (136, N'Bell peppers (red and yellow), chopped', N'2', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (137, N'Zucchini, sliced', N'1', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (138, N'Eggplant, cubed', N'1 small', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (139, N'Red onion, sliced', N'1', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (140, N'Olive oil', N'4 tbsp', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (141, N'Garlic, minced', N'3 cloves', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (142, N'Canned crushed tomatoes', N'400g', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (143, N'Dried oregano', N'1 tsp', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (144, N'Salt and black pepper', N'To taste', 17)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (145, N'Olive oil', N'2 tbsp', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (146, N'Onion, chopped', N'1', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (147, N'Carrots, sliced', N'2', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (148, N'Celery stalks, chopped', N'2', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (149, N'Garlic, minced', N'3 cloves', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (150, N'Brown lentils', N'1 cup', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (151, N'Canned diced tomatoes', N'400g', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (152, N'Vegetable broth', N'4 cups', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (153, N'Bay leaf', N'1', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (154, N'Dried thyme, salt and pepper', N'To taste', 18)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (157, N'Ripe bananas, mashed', N'2', 20)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (158, N'Rolled oats', N'1 cup', 20)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (159, N'Cinnamon', N'1/2 tsp', 20)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (160, N'Raisins (optional)', N'1/4 cup', 20)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (161, N'Shredded coconut (optional)', N'1/4 cup', 20)
INSERT [dbo].[Ingredients] ([Id], [IngredientName], [Quantity], [RecipeId]) VALUES (162, N'Dark chocolate chips (optional)', N'1/4 cup', 20)
SET IDENTITY_INSERT [dbo].[Ingredients] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (1, 1, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (2, 3, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (3, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (4, 2, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (5, 2, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (6, 4, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (7, 3, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (8, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (9, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (10, 4, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (11, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (12, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (13, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (14, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (15, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (16, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (17, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (18, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (19, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (20, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (21, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (22, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (23, 4, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (24, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (25, 4, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (26, 2, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (27, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (28, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (29, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (30, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (31, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (32, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (33, 5, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (34, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (35, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (36, 4, 10, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (37, 4, 5, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (38, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (39, 3, 6, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (40, 5, 12, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (41, 2, 13, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (42, 4, 11, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (43, 4, 7, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (44, 5, 11, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (45, 5, 11, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (46, 2, 11, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (47, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (48, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (49, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (50, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (51, 2, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (52, 1, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (53, 1, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (54, 1, 9, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (55, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (56, 3, 3, 9, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (57, 3, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (58, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (59, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (60, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (61, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (62, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (63, 5, 8, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (64, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (65, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (66, 2, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (67, 3, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (68, 5, 3, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (69, 1, 11, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (70, 2, 4, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (71, 2, 5, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (72, 3, 3, 39, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (73, 5, 6, 39, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (74, 5, 11, 39, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (75, 5, 5, 39, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (76, 4, 3, 40, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (77, 5, 6, 40, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (78, 5, 15, 1, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (79, 5, 3, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (80, 5, 3, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (81, 5, 16, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (82, 4, 16, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (83, 4, 20, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (84, 3, 20, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (85, 5, 16, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (86, 3, 16, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (87, 5, 11, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (88, 5, 13, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (89, 5, 11, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (90, 5, 3, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (91, 5, 20, 41, 0)
INSERT [dbo].[Ratings] ([Id], [RatingValue], [RecipeId], [UserId], [WeightedRating]) VALUES (92, 5, 9, 1, 0)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (3, N'Classic Roast Beef', N'Juicy and tender roast beef, oven-baked', N'Preheat oven - Set your oven to 200°C (400°F).|
Prepare seasoning - In a bowl, mix olive oil, mustard, garlic, and spices.|
Season the beef - Rub the seasoning mixture evenly over the beef.|
Initial roasting - Place the beef on a rack in a roasting pan and roast for 15 minutes.|
Lower temperature - Reduce oven heat to 160°C (320°F) and continue roasting for 50-60 minutes, until the internal temperature reaches 57°C (135°F) for medium doneness.|
Resting time - Remove from oven, cover with foil, and let it rest for 15 minutes before slicing.|', 8, 225, 90, N'2', N'Chef David', 3.7, 2, 30, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (4, N'BBQ Chicken Wings', N'Crispy BBQ chicken wings with smoky flavor', N'Marinate the wings - Mix all ingredients (except the wings) in a bowl. Add wings and coat well. Let marinate in the fridge for 1 hour.|
Preheat oven - Set your oven to 200°C (400°F).|
Bake the wings - Arrange wings on a baking sheet lined with parchment paper and bake for 25 minutes.|
Glaze and finish - Brush additional BBQ sauce on the wings and bake for another 10 minutes until crispy.|
Serving - Let the wings rest for 5 minutes before serving.|', 8, 31, 40, N'1', N'Chef Sarah', 4.2105263157894735, 2, 19, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (5, N'Slow-Cooked Brisket', N'Tender and juicy brisket, slow-cooked to perfection with BBQ sauce.', N'Prepare the brisket - Preheat oven to 150°C (300°F). Rub brisket with oil, garlic, and spices.|
Sear the meat - In a hot pan, sear the brisket on all sides until browned.|
Prepare the sauce - In a bowl, mix beef broth, BBQ sauce, and honey.|
Slow cooking - Arrange sliced onions in a baking dish, place the brisket on top, and pour the sauce over it.|
Bake - Cover with foil and roast for 6-8 hours.|
Serving - Let the brisket rest for 20 minutes before slicing.|', 10, 13, 420, N'2', N'Chef Michael Levy', 3.6666666666666665, 2, 3, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (6, N'Spicy Moroccan Lamb Stew', N'A flavorful and aromatic lamb stew with Middle Eastern spices and vegetables.', N'Sear the lamb - Heat olive oil in a pot and brown the lamb on all sides. Remove and set aside.|
Sauté the vegetables - In the same pot, sauté onion, garlic, carrots, and bell pepper until softened.|
Add spices - Stir in cumin, paprika, cinnamon, turmeric, salt, and pepper.|
Simmer the stew - Return lamb to the pot, add tomatoes and beef broth. Bring to a boil.|
Slow cook - Reduce heat to low, cover, and let it simmer for 90-120 minutes until the lamb is tender.|
Serve hot - Garnish with fresh parsley and serve with rice or couscous.|', 13, 10, 120, N'2', N'Chef Avi Malka', 4.333333333333333, 2, 3, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (7, N'Grilled Middle Eastern Kofta', N'Spiced ground beef and lamb kebabs, grilled to perfection.', N'Prepare the mixture - In a large bowl, mix all ingredients until well combined.|
Shape the kofta - Form into oval-shaped kebabs around skewers.|
Preheat the grill - Set the grill to medium-high heat and brush with oil.|
Grill the kofta - Cook for 8-10 minutes, turning occasionally, until browned on all sides.|
Serve immediately - Serve with tahini sauce, pita bread, and fresh salad.|', 11, 39, 30, N'1', N'Chef Rachel Ben-Haim', 4, 2, 1, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (8, N'Honey-Glazed Chicken Thighs', N'Sweet and savory honey-glazed chicken, roasted to perfection.', N'Preheat oven - Set oven to 200°C (400°F).|
Prepare glaze - Mix honey, soy sauce, olive oil, garlic, mustard, paprika, salt, and pepper in a bowl.|
Coat the chicken - Place chicken in a baking dish and brush with the glaze.|
Roast - Bake for 40-45 minutes, basting halfway through, until golden brown.|
Rest and serve - Let rest for 5 minutes before serving.|', 9, 15, 45, N'1', N'Chef Sarah Goldstein', 5, 2, 6, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (9, N'Creamy Mushroom Pasta', N'A rich and creamy pasta dish with garlic-infused mushrooms and Parmesan cheese.', N'Cook pasta - Boil pasta in salted water until al dente, then drain.|
Sauté mushrooms - Heat butter and olive oil in a pan, add garlic and mushrooms, and cook until golden.|
Make the sauce - Pour in the cream, add salt, pepper, and Parmesan, and stir until creamy.|
Combine - Toss the pasta in the sauce and mix well.|
Garnish and serve - Sprinkle fresh parsley on top and serve warm.|', 10, 26, 30, N'2', N'Chef Rachel Cohen', 2, 3, 10, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (10, N'Cheesy Spinach Lasagna', N'A layered lasagna with a creamy ricotta-spinach filling and melted mozzarella.', N'Prepare spinach mixture - Sauté onion and garlic in olive oil, add spinach, and cook until wilted.|
Mix ricotta filling - In a bowl, combine ricotta, egg, salt, pepper, and cooked spinach.|
Assemble lasagna - Layer lasagna sheets, ricotta mixture, and marinara sauce in a baking dish.|
Top with cheese - Sprinkle mozzarella and Parmesan on top.|
Rest and serve - Let cool for 10 minutes before slicing.|', 12, 19, 50, N'2', N'Chef Daniel Levy', 4, 3, 1, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (11, N'Garlic Parmesan Mashed Potatoes', N'Creamy mashed potatoes with butter, roasted garlic, and Parmesan cheese.', N'Boil potatoes - Cook potatoes in salted water until tender, then drain.|
Mash garlic - Mash roasted garlic with a fork.|
Mix ingredients - Mash potatoes with butter, milk, garlic, Parmesan, salt, and pepper.|
Garnish and serve - Sprinkle with fresh chives and serve warm.|', 8, 10, 35, N'1', N'Chef Eliav Ben-Ami', 4, 3, 8, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (12, N'Baked Ziti with Ricotta', N'Classic baked ziti with ricotta, mozzarella, and marinara sauce.', N'Cook pasta - Boil ziti until al dente, then drain.|
Prepare sauce - Sauté garlic in olive oil, add marinara sauce, oregano, salt, and pepper.|
Assemble - Mix pasta with ricotta and sauce, then place in a baking dish.|
Top with cheese - Sprinkle mozzarella and Parmesan.|
Bake - Bake at 180°C (350°F) for 25 minutes until golden.', 10, 3, 45, N'2', N'Chef Miriam Grossman', 5, 3, 1, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (13, N'Mushroom and Cheese Omelette', N'A fluffy omelette packed with sautéed mushrooms and melted cheese.', N'Sauté mushrooms - Cook mushrooms in butter until soft.|
Whisk eggs - Beat eggs with milk, salt, and pepper.|
Cook omelette - Pour eggs into a pan and cook until set.|
Add mushrooms and cheese - Sprinkle cooked mushrooms and cheese on half of the omelette.|
Fold and serve - Fold the omelette in half and serve warm.', 7, 5, 15, N'1', N'Chef Yael Shlomi', 3.5, 3, 2, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (15, N'Chocolate Chip Cookies', N'Crispy on the edges and chewy in the center, these cookies are a family favorite.', N'Preheat oven to 180°C (350°F).|
Cream butter and sugars together until fluffy.|
Add eggs and vanilla extract, and mix until combined.|
In a separate bowl, whisk flour, baking soda, and salt.|
Gradually add dry ingredients to wet ingredients.|
Fold in chocolate chips.|
Scoop dough onto a baking sheet lined with parchment paper.|
Bake for 10-12 minutes until golden brown on edges.|
Cool on a wire rack before serving.|', 9, 5, 30, N'1', N'Chef Baker Sarah', 5, 4, 1, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (16, N'Tahini Cookies', N'Delicious and soft tahini-based cookies that are dairy-free and perfect after any meal.', N'1- Preheat oven to 180°C (350°F).
2- Mix tahini, sugar, and oil in a large bowl.
3- Add vanilla extract and mix well.
4- In another bowl, combine flour, baking powder, and salt.
5- Gradually add the dry mixture to the wet mixture.
6- Mix until a dough forms.
7- Shape into small balls, flatten slightly, and sprinkle with sesame seeds.
8- Bake for 12-15 minutes or until lightly golden.
9- Let cool completely before serving.', 8, 8, 30, N'1', N'Chef Miriam Cohen', 4.25, 4, 4, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (17, N'Pasta with Tomato & Roasted Vegetables', N'A colorful and healthy pasta dish with roasted vegetables and rich tomato flavor. 100% dairy-free.', N'1- Preheat oven to 200°C (400°F).
2- Cut bell peppers, zucchini, eggplant, and onion into bite-sized pieces.
3- Toss vegetables with olive oil, salt, pepper, and oregano, then roast for 25 minutes.
4- Meanwhile, cook pasta in salted water according to package instructions.
5- In a saucepan, heat olive oil and sauté garlic for 1 minute.
6- Add canned crushed tomatoes, salt, pepper, and basil. Simmer for 10-15 minutes.
7- Add the roasted vegetables to the sauce.
8- Combine cooked pasta with the sauce and mix well.
9- Serve hot, garnished with fresh parsley if desired.', 10, 0, 40, N'2', N'Chef Daniel Levi', 0, 4, 0, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (18, N'Vegan Lentil Stew', N'Hearty and nutritious lentil stew with vegetables and herbs. Perfect for a cozy vegan meal.', N'1- Heat olive oil in a large pot.
2- Sauté chopped onion, carrots, and celery for 5-7 minutes.
3- Add minced garlic and cook for 1 minute.
4- Add rinsed brown lentils, diced tomatoes, vegetable broth, bay leaf, thyme, salt and pepper.
5- Bring to a boil, then reduce heat and simmer for 30-35 minutes until lentils are soft.
6- Adjust seasoning, remove bay leaf, and serve hot.', 10, 1, 45, N'2', N'Chef Maya Green', 0, 4, 0, 0)
INSERT [dbo].[Recipes] ([Id], [Title], [Description], [PreparationInstructions], [NumOfIngredients], [NumOfClicks], [PreparationTime], [DifficultyLevel], [RecipeAuthor], [AverageRating], [CategoryId], [NumberOfRatings], [FinalScore]) VALUES (20, N'Banana Oat Cookies', N'Naturally sweet, soft banana oat cookies with no dairy or eggs. Perfect healthy snack!', N'1- Preheat oven to 180°C (350°F).
2- In a bowl, mash bananas until smooth.
3- Mix in oats, cinnamon, and any optional add-ins (raisins, coconut, chocolate chips).
4- Scoop small mounds onto a lined baking sheet.
5- Bake for 12-15 minutes until set.
6- Let cool before serving.', 6, 9, 20, N'1', N'Chef Noa Wellness', 4, 4, 3, 0)
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (1, N'Michali', N'12341234', N'michal@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (2, N'michal', N'1234', N'michal@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (3, N'lea', N'34689908', N'lea@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (4, N'yael', N'87765656', N'yael@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (5, N'shuki', N'09876543', N'shuki@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (6, N'yoni', N'23456433', N'yo@gamil.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (7, N'noa', N'12345678', N'n@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (8, N'h', N'123456789', N'h@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (9, N'ליאורה', N'1029384756', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (10, N'kok', N'1234567890', N'kok@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (11, N'jj', N'234567890', N'j@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (12, N'bnb', N'0987654321', N'b@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (13, N'asaf', N'1234567890', N'asaf@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (14, N'לל', N'123412345', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (15, N'jhkjbn', N'576897879', N'hjjb@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (16, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (17, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (18, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (19, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (20, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (21, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (22, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (23, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (24, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (25, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (26, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (27, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (28, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (29, N'h', N'564654646', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (30, N'sgvsdfb', N'ersgsrgsgre', N'gfb@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (31, N'Michali', N'fewfewfwfewewfewfe2A', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (32, N'Michali', N'12341234gregD', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (33, N'Michali', N'12341234vS', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (34, N'''קרכע', N'4353523524354352435Sד', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (35, N'החמל', N'7678עU8UOI', N'gavrihak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (36, N'ליאורה', N'1234567S', N'liora@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (37, N'fdsgv', N'rget43532653543rfwefS', N'gvsrgr@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (38, N'Michal', N'12341234A', N'mbj@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (39, N'mmm', N'12345678A', N'michak@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (40, N'kkk', N'12345678A', N'miav@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (41, N'Yogev', N'12345678A', N'y@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (42, N'yogev', N'12345678T', N'y@gnail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (43, N'Hi!', N'12345678H', N'Hi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (44, N'Hi!', N'12345678Hi', N'Hi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (45, N'Hi!', N'12345678Hi', N'Hi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (46, N'Hi!', N'12345678Hi', N'Hi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (47, N'Hi!', N'12345678Hi', N'Hi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [Password], [Email]) VALUES (48, N'Hi!', N'12345678Hi', N'Hi@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
/****** Object:  Index [IX_Ingredients_RecipeId]    Script Date: 26/03/2025 11:04:52 ******/
CREATE NONCLUSTERED INDEX [IX_Ingredients_RecipeId] ON [dbo].[Ingredients]
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ratings_RecipeId]    Script Date: 26/03/2025 11:04:52 ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_RecipeId] ON [dbo].[Ratings]
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Ratings_UserId]    Script Date: 26/03/2025 11:04:52 ******/
CREATE NONCLUSTERED INDEX [IX_Ratings_UserId] ON [dbo].[Ratings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Recipes_CategoryId]    Script Date: 26/03/2025 11:04:52 ******/
CREATE NONCLUSTERED INDEX [IX_Recipes_CategoryId] ON [dbo].[Recipes]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ingredients] ADD  DEFAULT ((0)) FOR [RecipeId]
GO
ALTER TABLE [dbo].[Ratings] ADD  DEFAULT ((0)) FOR [RecipeId]
GO
ALTER TABLE [dbo].[Ratings] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[Ratings] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [WeightedRating]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT (N'') FOR [DifficultyLevel]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT (N'') FOR [RecipeAuthor]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [AverageRating]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT ((0)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT ((0)) FOR [NumberOfRatings]
GO
ALTER TABLE [dbo].[Recipes] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [FinalScore]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_Ingredients_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ingredients] CHECK CONSTRAINT [FK_Ingredients_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Recipes_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Recipes_RecipeId]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_Ratings_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_Ratings_Users_UserId]
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD  CONSTRAINT [FK_Recipes_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Recipes] CHECK CONSTRAINT [FK_Recipes_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [dbRecipeWebSite] SET  READ_WRITE 
GO
