CREATE TABLE [dbo].[Users_Roles]
(
	[UserId] INT NOT NULL,
	[RoleId] INT NOT NULL,
	CONSTRAINT Pk_Users_Roles PRIMARY KEY CLUSTERED ([UserId], [RoleId]),
	CONSTRAINT Fk_Users_UsersRoles FOREIGN KEY ([UserId]) REFERENCES [Users] ([Id]),
	CONSTRAINT Fk_Roles_UsersRoles FOREIGN KEY ([RoleId]) REFERENCES [Roles] ([Id])
)
