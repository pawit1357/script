use [digitalsm_cpssit]

 -- (1)
ALTER TABLE [AttachfileLG] ADD UserOwner nvarchar(6);


-- ź��� attachedFileLG � Class\Data �͡

-- (3)
ALTER TABLE [LGWorkFlow] ADD UserChecker nvarchar(6);
ALTER TABLE [LGWorkFlow] ADD DateECUAssign datetime;