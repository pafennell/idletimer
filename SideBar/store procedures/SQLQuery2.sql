create Procedure userRegisteration
@username varchar(50)

AS

declare @password varchar(50)
set @password = HASHBYTES('sha1', @username)

insert into dbo.users values(@username, @password)
