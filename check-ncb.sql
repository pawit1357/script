/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [ID]
      ,[CID]
      ,[FIRST_NAME]
      ,[FAMILY_NAME]
      ,[DATE_OF_BIRTH]
      ,[ENQUIRY_DATE]
      ,[ENQUIRY_STATUS]
      ,[ERROR_MESSAGE]
      ,[RESPONSE_ID_NUMBER]
      ,[RESPONSE_FIRST_NAME]
      ,[RESPONSE_FAMILY_NAME]
      ,[RESPONSE_DATE_OF_BIRTH]
      ,[RESPONSE_DATE]
      ,[STATUS]
      ,[XML_REQUEST]
      ,[XML_REQUEST_DATE]
      ,[XML_RESPONSE]
      ,[XML_RESPONSE_DATE]
      ,[CREATE_BY]
      ,[CREATE_DATE]
      ,[UPDATE_BY]
      ,[UPDATE_DATE]
  FROM [apsweb1].[dbo].[APS_NCB_REQ] where  CID='3120500070478'

select * from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468';
--delete from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468';


  update APS_NCB_REQ set UPDATE_DATE=GETDATE(),CREATE_DATE=GETDATE(),XML_REQUEST_DATE=GETDATE(),XML_RESPONSE='      <ncrsresponse>
<!-- Start HEADER message -->
<header>
<password>XXXXXXXX</password>
<user>apsadmin</user>
<command>BB01001</command>
</header>

<!-- Start BODY message -->
<body>
<transaction>
<name>
<firstname>ธัชชา</firstname>
<dateofbirth>19810918</dateofbirth>
<familyname>หอมนาน</familyname>
</name>

<id>
<idtype>01</idtype>
<idnumber>3560300804199</idnumber>
</id>

<user>apsadmin</user>
<enquirypurpose>01</enquirypurpose>
<enquiryamount>0</enquiryamount>
<enquirystatus>EQ</enquirystatus>
<mediacode>BB</mediacode>
<consent>Y</consent>
<trackingid>7073465</trackingid>
<memberref>C590101188_3560300804199</memberref>
<disputeenquiry>Y</disputeenquiry>
<transactiondate>20160712</transactiondate>
<enquirydate>20160712 172733</enquirydate>
<responsedate>20160712 172734</responsedate>
<tuefenquiry><header>
<consent>Y</consent>
<memberref>C590101188_3560300804199</memberref>
<enqpurpose>01</enqpurpose>
<enqamount>000000000</enqamount>
</header>

<name>
<firstname>ธัชชา</firstname>
<dateofbirth>19810918</dateofbirth>
<familyname>หอมนาน</familyname>
</name>

<id>
<idtype>01</idtype>
<idnumber>3560300804199</idnumber>
</id>

</tuefenquiry>
<tuefresponse><responsedata>
</responsedata>

<header>
<subjectreturncode>1</subjectreturncode>
<memberref>C590101188_3560300804199</memberref>
<enqcontrolnum>475232254</enqcontrolnum>
</header>

<subject>
<name>
<firstname>สายทอง</firstname>
<maritalstatus>0001</maritalstatus>
<dateofbirth>19810918</dateofbirth>
<gender>1</gender>
<title>คุณ</title>
<nationality>00</nationality>
<numberofchildren>01</numberofchildren>
<spousename>จตุรงค์</spousename>
<occupation>1</occupation>
<familyname>หอมนาน</familyname>
<enqconsent>Y</enqconsent>
</name>

<name>
<firstname>SAITHONG</firstname>
<maritalstatus>0001</maritalstatus>
<dateofbirth>19810918</dateofbirth>
<gender>1</gender>
<title>048</title>
<nationality>00</nationality>
<numberofchildren>01</numberofchildren>
<spousename>จตุรงค์</spousename>
<occupation>1</occupation>
<familyname>HOMNAN</familyname>
<enqconsent>Y</enqconsent>
</name>

<id>
<idtype>01</idtype>
<idnumber>3560300804199</idnumber>
</id>

<id>
<idtype>02</idtype>
<idnumber>3560300804199</idnumber>
</id>

<address>
<postalcode>63000</postalcode>
<reporteddate>20160531</reporteddate>
<line1>585 ม.5</line1>
<line2>ต.น้ำรึม</line2>
<line3>อ.เมือง ตาก</line3>
</address>

<address>
<province>ตาก</province>
<postalcode>63000</postalcode>
<addresstype>2</addresstype>
<reporteddate>20110930</reporteddate>
<line1>สำนักงานทางหลวงชนบท จ.ตาก 585 ม.5 ถ.จรดว</line1>
<line2>ิถีถ่อง ต.น้ำรึม อ.เมือง ตาก 63000</line2>
</address>

<address>
<postalcode>56110</postalcode>
<reporteddate>20110331</reporteddate>
<line1>238 ม.10 ต.เชียงบาน อ.เชียงคำ จ.พะเยา</line1>
</address>

<address>
<reporteddate>20110329</reporteddate>
<line1>ถนน</line1>
</address>

<account>
<membercode>BK00050000</membercode>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21192</amountowed>
<amountpastdue>21192</amountpastdue>
<defaultdate>20151204</defaultdate>
<installmentamount>0</installmentamount>
<accountstatus>20</accountstatus>
<history>
<asofdate>20140531</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>20459</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>17673</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>20665</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21384</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>19604</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>19952</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>20674</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21383</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>19708</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>18080</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>18740</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>18820</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>18936</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>19966</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>20641</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21363</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>22086</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21644</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>22216</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>22774</amountowed>
<overduemonth>003</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>23247</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>22420</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>21562</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>20000</creditlimit>
<amountowed>20735</amountowed>
<overduemonth>004</overduemonth>
</history>

<shortname>TBANK</shortname>
<ownership>1</ownership>
<opendate>20110331</opendate>
<lastpaymentdate>20160426</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>0</installmentnumofpayment>
<paymtpattern>005004004004004003002001001000000000000000000000000000000000000000000000000000000000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>005</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>004</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>004</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>004</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>004</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>003</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>002</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>001</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>001</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>000</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>000</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
<paymt23>000</paymt23>
<paymtdate23>20140731</paymtdate23>
<paymt24>000</paymt24>
<paymtdate24>20140630</paymtdate24>
<paymt25>000</paymt25>
<paymtdate25>20140531</paymtdate25>
<paymt26>000</paymt26>
<paymtdate26>20140430</paymtdate26>
<paymt27>000</paymt27>
<paymtdate27>20140331</paymtdate27>
<paymt28>000</paymt28>
<paymtdate28>20140228</paymtdate28>
<paymt29>000</paymt29>
<paymtdate29>20140131</paymtdate29>
<paymt30>000</paymt30>
<paymtdate30>20131231</paymtdate30>
<paymt31>000</paymt31>
<paymtdate31>20131130</paymtdate31>
<paymt32>000</paymt32>
<paymtdate32>20131031</paymtdate32>
<paymt33>000</paymt33>
<paymtdate33>20130930</paymtdate33>
<pctpaymt>10</pctpaymt>
</account>

<account>
<membercode>BK00050000</membercode>
<currencycode>THB</currencycode>
<accounttype>27</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>440700</amountowed>
<amountpastdue>17628</amountpastdue>
<defaultdate>20160425</defaultdate>
<installmentamount>8814</installmentamount>
<accountstatus>10</accountstatus>
<unitmake>MITSUBISHI</unitmake>
<unitmodel>TRITON</unitmodel>
<history>
<asofdate>20140531</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>652236</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>643422</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>625794</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>616980</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>599352</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>590538</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>581724</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>572910</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>572910</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>564096</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>555282</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>537654</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>537654</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>528840</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>511212</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>511212</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>511212</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>493584</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>493584</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>484770</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>467142</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>458328</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>458328</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>740376</creditlimit>
<amountowed>440700</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20130521</opendate>
<lastpaymentdate>20160427</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>84</installmentnumofpayment>
<paymtpattern>001000001000000001001000001000000000000000000000000000000000000000000001001000000000001000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>001</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>001</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>000</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>000</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>001</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>001</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>000</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>001</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>000</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>000</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
<paymt23>000</paymt23>
<paymtdate23>20140731</paymtdate23>
<paymt24>001</paymt24>
<paymtdate24>20140630</paymtdate24>
<paymt25>001</paymt25>
<paymtdate25>20140531</paymtdate25>
<paymt26>000</paymt26>
<paymtdate26>20140430</paymtdate26>
<paymt27>000</paymt27>
<paymtdate27>20140331</paymtdate27>
<paymt28>000</paymt28>
<paymtdate28>20140228</paymtdate28>
<paymt29>001</paymt29>
<paymtdate29>20140131</paymtdate29>
<paymt30>000</paymt30>
<paymtdate30>20131231</paymtdate30>
<paymt31>000</paymt31>
<paymtdate31>20131130</paymtdate31>
<paymt32>000</paymt32>
<paymtdate32>20131031</paymtdate32>
<paymt33>000</paymt33>
<paymtdate33>20130930</paymtdate33>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>267196</amountowed>
<amountpastdue>11894</amountpastdue>
<defaultdate>20151130</defaultdate>
<installmentamount>1500</installmentamount>
<accountstatus>20</accountstatus>
<collateral1>114</collateral1>
<history>
<asofdate>20140531</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>257871</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>257590</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>259056</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>257522</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255140</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>256605</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>256322</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>257507</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255771</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255393</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255140</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>254826</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>256257</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>252732</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>254151</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255571</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>256944</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>256011</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>252732</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>254152</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>255620</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>258394</amountowed>
<overduemonth>003</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>261360</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>300000</creditlimit>
<amountowed>264231</amountowed>
<overduemonth>005</overduemonth>
</history>

<shortname>GSB</shortname>
<ownership>4</ownership>
<opendate>20100115</opendate>
<lastpaymentdate>20160104</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>180</installmentnumofpayment>
<paymtpattern>006005004003002001000002002001000000001000000000000000000000000000001000000000001001000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>006</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>005</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>004</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>003</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>002</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>001</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>000</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>002</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>002</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>001</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>001</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
<paymt23>001</paymt23>
<paymtdate23>20140731</paymtdate23>
<paymt24>000</paymt24>
<paymtdate24>20140630</paymtdate24>
<paymt25>000</paymt25>
<paymtdate25>20140531</paymtdate25>
<paymt26>000</paymt26>
<paymtdate26>20140430</paymtdate26>
<paymt27>001</paymt27>
<paymtdate27>20140331</paymtdate27>
<paymt28>001</paymt28>
<paymtdate28>20140228</paymtdate28>
<paymt29>000</paymt29>
<paymtdate29>20140131</paymtdate29>
<paymt30>000</paymt30>
<paymtdate30>20131231</paymtdate30>
<paymt31>000</paymt31>
<paymtdate31>20131130</paymtdate31>
<paymt32>000</paymt32>
<paymtdate32>20131031</paymtdate32>
<paymt33>000</paymt33>
<paymtdate33>20130930</paymtdate33>
<lastrestructureddate>20140429</lastrestructureddate>
<numberofcoborrower>1</numberofcoborrower>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>33319</amountowed>
<installmentamount>34000</installmentamount>
<accountstatus>10</accountstatus>
<history>
<asofdate>20140831</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>34000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32000</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32070</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>31635</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>31849</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32056</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32270</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32483</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32684</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>32898</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>33105</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>GSB</shortname>
<ownership>1</ownership>
<opendate>20140821</opendate>
<lastpaymentdate>20150908</lastpaymentdate>
<installmentfreq>9</installmentfreq>
<installmentnumofpayment>1</installmentnumofpayment>
<paymtpattern>000000000000000000000000000000000000000000000000000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20140831</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>000</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>000</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>000</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>000</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>000</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>000</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>000</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>000</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>000</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>32955</amountowed>
<installmentamount>790</installmentamount>
<accountstatus>40</accountstatus>
<history>
<asofdate>20140531</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>28420</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33743</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34751</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33729</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34763</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33693</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34753</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33708</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33639</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34722</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33626</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34384</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33512</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34290</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34019</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33822</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33692</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34374</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34233</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>34990</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>35771</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>36552</amountowed>
<overduemonth>003</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>36282</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>33000</creditlimit>
<amountowed>33340</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>SCB</shortname>
<ownership>1</ownership>
<opendate>20080324</opendate>
<lastpaymentdate>20160531</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>60</installmentnumofpayment>
<paymtpattern>000000004003002001000000000000000000000000000000000000000000000000000000000002001000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>004</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>003</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>002</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>001</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>000</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>000</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>000</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>000</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>000</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
<paymt23>000</paymt23>
<paymtdate23>20140731</paymtdate23>
<paymt24>000</paymt24>
<paymtdate24>20140630</paymtdate24>
<paymt25>000</paymt25>
<paymtdate25>20140531</paymtdate25>
<paymt26>002</paymt26>
<paymtdate26>20140430</paymtdate26>
<paymt27>001</paymt27>
<paymtdate27>20140331</paymtdate27>
<paymt28>000</paymt28>
<paymtdate28>20140228</paymtdate28>
<paymt29>000</paymt29>
<paymtdate29>20140131</paymtdate29>
<paymt30>000</paymt30>
<paymtdate30>20131231</paymtdate30>
<paymt31>000</paymt31>
<paymtdate31>20131130</paymtdate31>
<paymt32>000</paymt32>
<paymtdate32>20131031</paymtdate32>
<paymt33>000</paymt33>
<paymtdate33>20130930</paymtdate33>
<lastrestructureddate>20160404</lastrestructureddate>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>25892</amountowed>
<amountpastdue>1400</amountpastdue>
<defaultdate>20160430</defaultdate>
<installmentamount>700</installmentamount>
<accountstatus>10</accountstatus>
<loanobjective>01060</loanobjective>
<history>
<asofdate>20140531</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23264</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23775</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22865</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22476</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22580</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22078</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22564</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23059</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22777</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22795</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23264</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22485</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>21964</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22776</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23271</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23794</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22858</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>22563</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23078</amountowed>
<overduemonth>001</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>23578</amountowed>
<overduemonth>002</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>24096</amountowed>
<overduemonth>003</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>25061</amountowed>
<overduemonth>004</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>24877</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>23000</creditlimit>
<amountowed>25376</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>KBANK</shortname>
<ownership>1</ownership>
<opendate>20110906</opendate>
<lastpaymentdate>20160330</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>36</installmentnumofpayment>
<paymtpattern>001000000004003002001000000001000000000000000000000000000000000000000002001000000000000001000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>001</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>000</paymt03>
<paymtdate03>20160331</paymtdate03>
<paymt04>004</paymt04>
<paymtdate04>20160229</paymtdate04>
<paymt05>003</paymt05>
<paymtdate05>20160131</paymtdate05>
<paymt06>002</paymt06>
<paymtdate06>20151231</paymtdate06>
<paymt07>001</paymt07>
<paymtdate07>20151130</paymtdate07>
<paymt08>000</paymt08>
<paymtdate08>20151031</paymtdate08>
<paymt09>000</paymt09>
<paymtdate09>20150930</paymtdate09>
<paymt10>001</paymt10>
<paymtdate10>20150831</paymtdate10>
<paymt11>000</paymt11>
<paymtdate11>20150731</paymtdate11>
<paymt12>000</paymt12>
<paymtdate12>20150630</paymtdate12>
<paymt13>000</paymt13>
<paymtdate13>20150531</paymtdate13>
<paymt14>000</paymt14>
<paymtdate14>20150430</paymtdate14>
<paymt15>000</paymt15>
<paymtdate15>20150331</paymtdate15>
<paymt16>000</paymt16>
<paymtdate16>20150228</paymtdate16>
<paymt17>000</paymt17>
<paymtdate17>20150131</paymtdate17>
<paymt18>000</paymt18>
<paymtdate18>20141231</paymtdate18>
<paymt19>000</paymt19>
<paymtdate19>20141130</paymtdate19>
<paymt20>000</paymt20>
<paymtdate20>20141031</paymtdate20>
<paymt21>000</paymt21>
<paymtdate21>20140930</paymtdate21>
<paymt22>000</paymt22>
<paymtdate22>20140831</paymtdate22>
<paymt23>000</paymt23>
<paymtdate23>20140731</paymtdate23>
<paymt24>002</paymt24>
<paymtdate24>20140630</paymtdate24>
<paymt25>001</paymt25>
<paymtdate25>20140531</paymtdate25>
<paymt26>000</paymt26>
<paymtdate26>20140430</paymtdate26>
<paymt27>000</paymt27>
<paymtdate27>20140331</paymtdate27>
<paymt28>000</paymt28>
<paymtdate28>20140228</paymtdate28>
<paymt29>000</paymt29>
<paymtdate29>20140131</paymtdate29>
<paymt30>001</paymt30>
<paymtdate30>20131231</paymtdate30>
<paymt31>000</paymt31>
<paymtdate31>20131130</paymtdate31>
<paymt32>000</paymt32>
<paymtdate32>20131031</paymtdate32>
<paymt33>000</paymt33>
<paymtdate33>20130930</paymtdate33>
<pctpaymt>100</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>04</accounttype>
<asofdate>20160620</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>41676</amountowed>
<amountpastdue>1933</amountpastdue>
<defaultdate>20160502</defaultdate>
<accountstatus>10</accountstatus>
<credittypeflag>Z40</credittypeflag>
<history>
<asofdate>20140630</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45520</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45844</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45237</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45672</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45037</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45497</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45887</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45279</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45625</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>42928</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>40425</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45238</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45679</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45048</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45496</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45920</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>45277</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>42707</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>44861</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>45000</creditlimit>
<amountowed>46925</amountowed>
<overduemonth>  Y</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>46010</amountowed>
<overduemonth>  Y</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>44841</amountowed>
<overduemonth>  Y</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>43763</amountowed>
<overduemonth>  Y</overduemonth>
</history>

<history>
<asofdate>20160531</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>42688</amountowed>
<overduemonth>  Y</overduemonth>
</history>

<shortname>AEON</shortname>
<ownership>1</ownership>
<opendate>201107</opendate></ncrsresponse>' where  CID='3120500070478'