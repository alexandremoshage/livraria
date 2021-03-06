CREATE DATABASE Livraria

USE [Livraria]
GO
/****** Object:  Table [dbo].[InstituicaodeEnsino]    Script Date: 18/01/2021 00:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstituicaodeEnsino](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NULL,
	[Endereco] [varchar](max) NULL,
	[CNPJ] [varchar](14) NULL,
 CONSTRAINT [PK_InstituicaodeEnsino] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Livro]    Script Date: 18/01/2021 00:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Livro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Genero] [varchar](max) NULL,
	[Descricao] [varchar](max) NULL,
	[Publicacao] [date] NULL,
	[Titulo] [varchar](max) NULL,
	[Editora] [varchar](max) NULL,
	[Paginas] [int] NULL,
	[Autor] [varchar](max) NULL,
	[Emprestado] [bit] NOT NULL,
	[Reservado] [bit] NOT NULL,
	[IdUsuarioReserva] [int] NULL,
 CONSTRAINT [PK_Livro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 18/01/2021 00:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](max) NULL,
	[Endereco] [varchar](max) NULL,
	[CPF] [varchar](11) NULL,
	[Telefone] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[IdInstituicaoDeEnsino] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioLivroEmprestado]    Script Date: 18/01/2021 00:07:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioLivroEmprestado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdLivro] [int] NULL,
	[DataEmprestimo] [datetime] NULL,
	[DataDevolucao] [datetime] NULL,
	[Devolvido] [bit] NOT NULL,
 CONSTRAINT [PK__UsuarioL__3213E83F2996F475] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[InstituicaodeEnsino] ON 

INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (19, N'Teste1', N'asdfasdfasdf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (24, N'DDDSDFS', N'asdfasdf', N'12312312312312')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (28, N'Nome teste', N'Teste endere', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (29, N'Nome teste', N'Teste endere', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (30, N'Alexandre dos Santos Moshage', N'asdfasdfasdf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (32, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (33, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (34, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (35, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (36, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (37, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (38, N'Alexandre dos Santos Moshage', N'asdfasdfkljasd kljasdfklj adf asdjfas dfas dfdas kldjasf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (41, N'Teste22223', N'asdfasdfasdf', N'00000000000191')
INSERT [dbo].[InstituicaodeEnsino] ([Id], [Nome], [Endereco], [CNPJ]) VALUES (42, N'Teste1123132123132', N'asdfasdfasdf', N'00000000000191')
SET IDENTITY_INSERT [dbo].[InstituicaodeEnsino] OFF
GO
SET IDENTITY_INSERT [dbo].[Livro] ON 

INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (20, N'GEEGEG', N'Descriçaõ teste', CAST(N'2020-08-10' AS Date), N'TESTE1', N'ASDFASDF', 10, N'Fernando do carmo', 0, 1, 24)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (28, N'TESTES', N'asdfasd', CAST(N'2020-08-10' AS Date), N'TESTE', N'ASDFASD', 123, N'asdfasdf', 0, 1, 27)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (31, N'Teste genero', N'teste descrição', CAST(N'1993-12-20' AS Date), N'TESTE', N'Teste editora', 2, N'Teste autor', 1, 0, NULL)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (32, N'Comédia', N'Descriçaõ teste', CAST(N'1993-10-20' AS Date), N'TESTE', N'Teste', 3, N'Autor teste', 1, 0, NULL)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (35, N'Comédia', N'Descriçaõ teste', CAST(N'1993-10-20' AS Date), N'TESTE', N'Teste', 5, N'Teste autor', 0, 0, NULL)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (36, N'Comédia', N'Descriçaõ teste', CAST(N'1993-10-20' AS Date), N'TESTE', N'Teste', 5, N'Teste autor', 0, 0, NULL)
INSERT [dbo].[Livro] ([Id], [Genero], [Descricao], [Publicacao], [Titulo], [Editora], [Paginas], [Autor], [Emprestado], [Reservado], [IdUsuarioReserva]) VALUES (37, N'Comédia', N'Descriçaõ teste', CAST(N'1993-10-20' AS Date), N'TESTE', N'Teste', 5, N'Teste autor', 0, 0, NULL)
SET IDENTITY_INSERT [dbo].[Livro] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Nome], [Endereco], [CPF], [Telefone], [Email], [IdInstituicaoDeEnsino]) VALUES (24, N'Aristóteles', N'TESTE', N'04829787163', N'1321321321326132', N'asdfasdfasdfadf', 24)
INSERT [dbo].[Usuario] ([Id], [Nome], [Endereco], [CPF], [Telefone], [Email], [IdInstituicaoDeEnsino]) VALUES (27, N'Alexandre dos Santos Moshage', N'Rua Garça Branca', N'04829787163', N'6599254935656656', N'alexandre.moshage@ewave.com.br', 19)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[UsuarioLivroEmprestado] ON 

INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (4, 24, 28, CAST(N'2020-08-10T19:15:10.340' AS DateTime), CAST(N'2020-08-11T14:53:50.687' AS DateTime), 1)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (6, 24, 20, CAST(N'2020-08-11T14:54:13.490' AS DateTime), CAST(N'2020-08-11T14:54:17.573' AS DateTime), 1)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (7, 24, 20, CAST(N'2020-08-11T14:54:44.193' AS DateTime), CAST(N'2020-08-11T14:54:48.680' AS DateTime), 1)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (8, 24, 28, CAST(N'2021-01-14T00:40:37.273' AS DateTime), CAST(N'2021-01-14T00:40:49.560' AS DateTime), 1)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (9, 24, 32, CAST(N'2021-01-15T03:29:53.907' AS DateTime), NULL, 0)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (10, 24, 31, CAST(N'2021-01-15T03:30:06.440' AS DateTime), NULL, 0)
INSERT [dbo].[UsuarioLivroEmprestado] ([Id], [IdUsuario], [IdLivro], [DataEmprestimo], [DataDevolucao], [Devolvido]) VALUES (11, 24, 28, CAST(N'2021-01-15T03:30:10.737' AS DateTime), CAST(N'2021-01-15T03:30:29.113' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[UsuarioLivroEmprestado] OFF
GO
ALTER TABLE [dbo].[Livro] ADD  DEFAULT ((0)) FOR [Emprestado]
GO
ALTER TABLE [dbo].[Livro] ADD  DEFAULT ((0)) FOR [Reservado]
GO
ALTER TABLE [dbo].[UsuarioLivroEmprestado] ADD  CONSTRAINT [DF__UsuarioLi__Devol__151B244E]  DEFAULT ((0)) FOR [Devolvido]
GO
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD  CONSTRAINT [FK_Livro_Usuario] FOREIGN KEY([IdUsuarioReserva])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Livro] CHECK CONSTRAINT [FK_Livro_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_InstituicaodeEnsino] FOREIGN KEY([IdInstituicaoDeEnsino])
REFERENCES [dbo].[InstituicaodeEnsino] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_InstituicaodeEnsino]
GO
ALTER TABLE [dbo].[UsuarioLivroEmprestado]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioLivrosEmpretados_Livro] FOREIGN KEY([IdLivro])
REFERENCES [dbo].[Livro] ([Id])
GO
ALTER TABLE [dbo].[UsuarioLivroEmprestado] CHECK CONSTRAINT [FK_UsuarioLivrosEmpretados_Livro]
GO
ALTER TABLE [dbo].[UsuarioLivroEmprestado]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioLivrosEmpretados_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioLivroEmprestado] CHECK CONSTRAINT [FK_UsuarioLivrosEmpretados_Usuario]
GO
