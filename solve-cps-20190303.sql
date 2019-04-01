use [digitalsm_cpssit];




-- update Ref_FormField @FORM: lg_59001.dotx
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',PartyFieldID=4 where FormID = 258 and FormFieldRunnigID = 6373;
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',PartyFieldID=5 where FormID = 258 and FormFieldRunnigID = 6374;
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',FieldName='OProvince',PartyFieldID=6 where FormID = 258 and FormFieldRunnigID = 6375;
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',PartyFieldID=7 where FormID = 258 and FormFieldRunnigID = 6376;
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',PartyFieldID=8 where FormID = 258 and FormFieldRunnigID = 6377;
update Ref_FormField set FormGroup='LEVEL',TableName='Ref_OCCode',PartyFieldID=3 where FormID = 258 and FormFieldRunnigID = 6378;

-- insert Ref_FormFieldParty
INSERT [dbo].[Ref_FormFieldParty] ([PartyRunning], [PartyFieldID], [LabelText], [TableName], [FieldName], [IsIndex], [IsDelete], [IsNewline], [IsEndParty], [FieldType], [RefFieldName], [Creator], [CreateDateTime], [Reviser], [ReviserDateTime]) VALUES (16, 4, NULL, N'Ref_OCCode', N'Oamphur', NULL, 0, 1, 0, NULL, N'OCCode', NULL, NULL, NULL, NULL)
INSERT [dbo].[Ref_FormFieldParty] ([PartyRunning], [PartyFieldID], [LabelText], [TableName], [FieldName], [IsIndex], [IsDelete], [IsNewline], [IsEndParty], [FieldType], [RefFieldName], [Creator], [CreateDateTime], [Reviser], [ReviserDateTime]) VALUES (17, 5, NULL, N'Ref_OCCode', N'OAddressNo', NULL, 0, 1, 0, NULL, N'OCCode', NULL, NULL, NULL, NULL)
INSERT [dbo].[Ref_FormFieldParty] ([PartyRunning], [PartyFieldID], [LabelText], [TableName], [FieldName], [IsIndex], [IsDelete], [IsNewline], [IsEndParty], [FieldType], [RefFieldName], [Creator], [CreateDateTime], [Reviser], [ReviserDateTime]) VALUES (18, 6, NULL, N'Ref_OCCode', N'OProvince', NULL, 0, 1, 0, NULL, N'OCCode', NULL, NULL, NULL, NULL)
INSERT [dbo].[Ref_FormFieldParty] ([PartyRunning], [PartyFieldID], [LabelText], [TableName], [FieldName], [IsIndex], [IsDelete], [IsNewline], [IsEndParty], [FieldType], [RefFieldName], [Creator], [CreateDateTime], [Reviser], [ReviserDateTime]) VALUES (19, 7, NULL, N'Ref_OCCode', N'OStreet', NULL, 0, 1, 0, NULL, N'OCCode', NULL, NULL, NULL, NULL)
INSERT [dbo].[Ref_FormFieldParty] ([PartyRunning], [PartyFieldID], [LabelText], [TableName], [FieldName], [IsIndex], [IsDelete], [IsNewline], [IsEndParty], [FieldType], [RefFieldName], [Creator], [CreateDateTime], [Reviser], [ReviserDateTime]) VALUES (20, 8, NULL, N'Ref_OCCode', N'ODistrict', NULL, 0, 1, 0, NULL, N'OCCode', NULL, NULL, NULL, NULL)



select * from  Ref_FormField where FormID=258;

select * from Ref_FormFieldParty;

select * from Ref_OCCode;