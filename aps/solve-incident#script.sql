-- #case 1 emboss_message_code �� NULL
SELECT PARAM_GROUP_ID,PARAM_CODE,PARAM_DESC1
FROM APS_PARAMETER_LIST 
WHERE PARAM_GROUP_ID=33 AND PARAM_CODE IN
(SELECT EMBOSS_MESSAGE_CODE FROM APS_APPL_PROFILE WHERE APPL_ID='C620180250');