/****** Script for SelectTopNRows command from SSMS  ******/
SELECT SystemUser.OCCode,SystemUser.UserID,SystemUser.Password,SystemTeam.TeamName,SystemRole.RoleName,*
FROM SystemUser
LEFT JOIN SystemTeam ON SystemTeam.TeamID = SystemUser.TeamID
LEFT JOIN SystemRole ON SystemRole.RoleID = SystemUser.RoleID
where SystemUser.GroupID=3


