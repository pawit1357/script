use [digitalsm_cpssit]

 -- (1)
ALTER TABLE [AttachfileLG] ADD UserOwner nvarchar(6);


-- ≈∫‰ø≈Ï attachedFileLG „π Class\Data ÕÕ°

-- (3)
ALTER TABLE [LGWorkFlow] ADD UserChecker nvarchar(6);
ALTER TABLE [LGWorkFlow] ADD DateECUAssign datetime;