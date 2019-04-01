-- test ncb(reuse)
-- role ps: applId(C610000468)
update APS_NCB_REQ set UPDATE_DATE=GETDATE(),CREATE_DATE=GETDATE(),XML_REQUEST_DATE=GETDATE(),XML_RESPONSE='<ncrsresponse>
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
<firstname>วาสนา</firstname>
<dateofbirth>19840905</dateofbirth>
<familyname>พรมบุตร</familyname>
</name>

<id>
<idtype>01</idtype>
<idnumber>1619900008424</idnumber>
</id>

<user>apsadmin</user>
<enquirypurpose>01</enquirypurpose>
<enquiryamount>0</enquiryamount>
<enquirystatus>EQ</enquirystatus>
<mediacode>BB</mediacode>
<consent>Y</consent>
<trackingid>7043630</trackingid>
<memberref>C590100006_1619900008424</memberref>
<disputeenquiry>Y</disputeenquiry>
<transactiondate>20160703</transactiondate>
<enquirydate>20160703 135129</enquirydate>
<responsedate>20160703 135130</responsedate>
<tuefenquiry><header>
<consent>Y</consent>
<memberref>C590100006_1619900008424</memberref>
<enqpurpose>01</enqpurpose>
<enqamount>000000000</enqamount>
</header>

<name>
<firstname>วาสนา</firstname>
<dateofbirth>19840905</dateofbirth>
<familyname>พรมบุตร</familyname>
</name>

<id>
<idtype>01</idtype>
<idnumber>1619900008424</idnumber>
</id>

</tuefenquiry>
<tuefresponse><responsedata>
</responsedata>

<header>
<subjectreturncode>1</subjectreturncode>
<memberref>C590100006_1619900008424</memberref>
<enqcontrolnum>474220843</enqcontrolnum>
</header>

<subject>
<name>
<firstname>WASSANA</firstname>
<maritalstatus>0002</maritalstatus>
<dateofbirth>19840905</dateofbirth>
<gender>1</gender>
<title>MS.</title>
<nationality>01</nationality>
<occupation>0</occupation>
<familyname>PROMBUT</familyname>
<enqconsent>Y</enqconsent>
</name>

<name>
<firstname>วาสนา</firstname>
<maritalstatus>0002</maritalstatus>
<dateofbirth>19840905</dateofbirth>
<gender>1</gender>
<title>น.ส.</title>
<nationality>01</nationality>
<occupation>0</occupation>
<familyname>พรมบุตร</familyname>
<enqconsent>Y</enqconsent>
</name>

<id>
<idtype>02</idtype>
<idnumber>1619900008424</idnumber>
</id>

<id>
<idtype>01</idtype>
<idnumber>1619900008424</idnumber>
<issuecountry>TH</issuecountry>
</id>

<address>
<postalcode>11111</postalcode>
<reporteddate>20160430</reporteddate>
<line1>8/60 หมู่ -</line1>
<line2>ถ.บริรักษ์ อุทัยใหม่ เมืองอุทัยธานี</line2>
<line3>อุทัยธานี 61000 THAILAND</line3>
</address>

<address>
<reporteddate>20160511</reporteddate>
<line1>ถนน</line1>
</address>

<address>
<country>TH</country>
<district>ต.ศาลาแดง อ.โกรกพระ</district>
<province>นครสวรรค์</province>
<postalcode>60170</postalcode>
<reporteddate>20160331</reporteddate>
<line1>อบต.ศาลาแดง</line1>
<residential>0</residential>
</address>

<address>
<postalcode>61000</postalcode>
<reporteddate>20150430</reporteddate>
<line1>8/60 ถ.บริรักษ์ ต.อุทัยใหม่ อ.เมือง อุทัยธานี</line1>
</address>

<account>
<currencycode>THB</currencycode>
<accounttype>04</accounttype>
<asofdate>20140331</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>3500</amountowed>
<accountstatus>11</accountstatus>
<history>
<asofdate>20130831</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20130930</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20131031</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20131130</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20131231</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20140131</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<history>
<asofdate>20140228</asofdate>
<creditlimit>51000</creditlimit>
<amountowed>1</amountowed>
<overduemonth>  N</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20090401</opendate>
<lastpaymentdate>20110913</lastpaymentdate>
<closeddate>20140328</closeddate>
<paymtpattern>  N N  N N  N N  N</paymtpattern>
<paymtstartdate>20140331</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
<paymt01>  N</paymt01>
<paymtdate01>20140331</paymtdate01>
<paymt02>  N</paymt02>
<paymtdate02>20140228</paymtdate02>
<paymt03>  N</paymt03>
<paymtdate03>20140131</paymtdate03>
<paymt04>  N</paymt04>
<paymtdate04>20131231</paymtdate04>
<paymt05>  N</paymt05>
<paymtdate05>20131130</paymtdate05>
<paymt06>  N</paymt06>
<paymtdate06>20131031</paymtdate06>
<paymt07>  N</paymt07>
<paymtdate07>20130930</paymtdate07>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>01</typeofcreditcard>
<shortname>GSB</shortname>
<ownership>1</ownership>
<opendate>20160503</opendate>
<lastpaymentdate>20160503</lastpaymentdate>
<paymtpattern>000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160531</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>390</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>03</typeofcreditcard>
<credittypeflag>V89</credittypeflag>
<history>
<asofdate>20160331</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160319</opendate>
<lastpaymentdate>20160518</lastpaymentdate>
<paymtpattern>000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160331</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>000</paymt03>
<paymtdate03>20160331</paymtdate03>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>03</typeofcreditcard>
<credittypeflag>V89</credittypeflag>
<history>
<asofdate>20160331</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160319</opendate>
<paymtpattern>000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160331</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<paymt03>000</paymt03>
<paymtdate03>20160331</paymtdate03>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>01</typeofcreditcard>
<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160427</opendate>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>0</amountowed>
<installmentamount>0</installmentamount>
<accountstatus>10</accountstatus>
<history>
<asofdate>20160430</asofdate>
<creditlimit>34000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160419</opendate>
<installmentfreq>0</installmentfreq>
<installmentnumofpayment>0</installmentnumofpayment>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>5</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>03</typeofcreditcard>
<history>
<asofdate>20160430</asofdate>
<creditlimit>34000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160419</opendate>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>5361</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>03</typeofcreditcard>
<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160425</opendate>
<paymtpattern>000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160531</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>17</amountowed>
<installmentamount>0</installmentamount>
<accountstatus>10</accountstatus>
<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160425</opendate>
<installmentfreq>0</installmentfreq>
<installmentnumofpayment>0</installmentnumofpayment>
<paymtpattern>000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160531</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<pctpaymt>3</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<loanobjective>01060</loanobjective>
<typeofcreditcard>23</typeofcreditcard>
<credittypeflag>1H5</credittypeflag>
<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160425</opendate>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<loanobjective>01060</loanobjective>
<typeofcreditcard>01</typeofcreditcard>
<credittypeflag>1H5</credittypeflag>
<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>BANK</shortname>
<ownership>1</ownership>
<opendate>20160425</opendate>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>40000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<collateral1>000</collateral1>
<collateral2>000</collateral2>
<typeofcreditcard>01</typeofcreditcard>
<history>
<asofdate>20160430</asofdate>
<creditlimit>40000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>CONSUMER FINANCE</shortname>
<ownership>1</ownership>
<opendate>20160420</opendate>
<paymtpattern>000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160430</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
<paymt02>000</paymt02>
<paymtdate02>20160430</paymtdate02>
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>0</amountowed>
<installmentamount>0</installmentamount>
<accountstatus>10</accountstatus>
<collateral1>000</collateral1>
<collateral2>000</collateral2>
<history>
<asofdate>20140531</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>30000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>CONSUMER FINANCE</shortname>
<ownership>1</ownership>
<opendate>20110905</opendate>
<lastpaymentdate>20130222</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>0</installmentnumofpayment>
<paymtpattern>000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
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
<pctpaymt>3</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>34000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>01</typeofcreditcard>
<shortname>CONSUMER FINANCE</shortname>
<ownership>1</ownership>
<opendate>20160425</opendate>
<paymtpattern>000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20160531</paymtenddate>
<paymt01>000</paymt01>
<paymtdate01>20160531</paymtdate01>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>22</accounttype>
<asofdate>20160520</asofdate>
<creditlimit>18000</creditlimit>
<amountowed>0</amountowed>
<accountstatus>10</accountstatus>
<typeofcreditcard>01</typeofcreditcard>
<credittypeflag>Z40</credittypeflag>
<history>
<asofdate>20151231</asofdate>
<creditlimit>18000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>18000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>18000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>18000</creditlimit>
<amountowed>109</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>18000</creditlimit>
<overduemonth>000</overduemonth>
</history>

<shortname>CONSUMER FINANCE</shortname>
<ownership>1</ownership>
<opendate>20151127</opendate>
<lastpaymentdate>20160402</lastpaymentdate>
<paymtpattern>000000000000000000</paymtpattern>
<paymtstartdate>20160520</paymtstartdate>
<paymtenddate>20151220</paymtenddate>
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
<pctpaymt>10</pctpaymt>
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>05</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>46000</creditlimit>
<amountowed>3583</amountowed>
<installmentamount>739</installmentamount>
<accountstatus>10</accountstatus>
<collateral1>000</collateral1>
<collateral2>000</collateral2>
<history>
<asofdate>20140531</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>13583</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140630</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>11398</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140731</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>9172</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140831</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>17766</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20140930</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>14922</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141031</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>11987</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141130</asofdate>
<creditlimit>25000</creditlimit>
<amountowed>9607</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20141231</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>8072</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150131</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>23108</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150228</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>21012</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150331</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>18874</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150430</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>28177</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>25451</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>30000</creditlimit>
<amountowed>22693</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>19874</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>17711</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>15515</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>13282</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>11025</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>8732</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>6430</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>5564</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>36000</creditlimit>
<amountowed>4913</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>46000</creditlimit>
<amountowed>4256</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>CONSUMER FINANCE</shortname>
<ownership>1</ownership>
<opendate>20090917</opendate>
<lastpaymentdate>20160427</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>18</installmentnumofpayment>
<paymtpattern>000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20130901</paymtenddate>
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
</account>

<account>
<currencycode>THB</currencycode>
<accounttype>21</accounttype>
<asofdate>20160531</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>33182</amountowed>
<installmentamount>3018</installmentamount>
<accountstatus>10</accountstatus>
<unitmake>VES</unitmake>
<unitmodel>SPRINT125 3VIE</unitmodel>
<history>
<asofdate>20150430</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>72416</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150531</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>69398</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150630</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>66380</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150731</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>60344</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150831</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>57326</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20150930</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>54308</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151031</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>51290</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151130</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>51290</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20151231</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>45254</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160131</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>42236</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160229</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>42236</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160331</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>39218</amountowed>
<overduemonth>000</overduemonth>
</history>

<history>
<asofdate>20160430</asofdate>
<creditlimit>67678</creditlimit>
<amountowed>33182</amountowed>
<overduemonth>000</overduemonth>
</history>

<shortname>LEASING/HP</shortname>
<ownership>1</ownership>
<opendate>20150429</opendate>
<lastpaymentdate>20160427</lastpaymentdate>
<installmentfreq>3</installmentfreq>
<installmentnumofpayment>24</installmentnumofpayment>
<paymtpattern>000000000000000000000000000000000000000000</paymtpattern>
<paymtstartdate>20160531</paymtstartdate>
<paymtenddate>20150430</paymtenddate>
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
</account>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>02</enqpurpose>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20160624</enqdate>
<enqtime>145806</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>02</enqpurpose>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20160606</enqdate>
<enqtime>134159</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<enqamount>1</enqamount>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20160531</enqdate>
<enqtime>165000</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>02</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160527</enqdate>
<enqtime>150231</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160511</enqdate>
<enqtime>084713</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>GSB</shortname>
<enqdate>20160428</enqdate>
<enqtime>100600</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20160425</enqdate>
<enqtime>103301</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160425</enqdate>
<enqtime>090928</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160421</enqdate>
<enqtime>092444</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160419</enqdate>
<enqtime>093336</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160418</enqdate>
<enqtime>132026</enqtime>
</enquiry>

<enquiry>
<membercode>CC03011024</membercode>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<enqamount>1</enqamount>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20160414</enqdate>
<enqtime>090046</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>BANK</shortname>
<enqdate>20160319</enqdate>
<enqtime>130645</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<enqamount>1</enqamount>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20151115</enqdate>
<enqtime>115152</enqtime>
</enquiry>

<enquiry>
<currencycode>THB</currencycode>
<enqpurpose>01</enqpurpose>
<shortname>LEASING/HP</shortname>
<enqdate>20150406</enqdate>
<enqtime>122338</enqtime>
</enquiry>

<enquiry>
<membercode>CC03019999</membercode>
<currencycode>THB</currencycode>
<enqpurpose>02</enqpurpose>
<shortname>CONSUMER FINANCE</shortname>
<enqdate>20141222</enqdate>
<enqtime>212837</enqtime>
</enquiry>

</subject>

</tuefresponse>
</transaction>

</body>
</ncrsresponse>' where  CID='3120500070478'


-- retest set update status to 2 (error)
update [APS_NCB_DATA] set STATUS=2 where APPL_ID='C610000468';

-- 3) check account 
select * from APS_NCB_ACCOUNT where APS_NCB_DATA_ID IN (select ID from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468');


-- retest

delete from [APS_NCB_ENQUIRY] where APS_NCB_DATA_ID IN (select ID from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468');
delete from [APS_NCB_ENQUIRY_SUMMARY] where APS_NCB_DATA_ID IN (select ID from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468');
delete from [APS_NCB_ACCOUNT] where APS_NCB_DATA_ID IN (select ID from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468');
delete from [APS_NCB_ACCOUNT_SUMMARY] where APS_NCB_DATA_ID IN (select ID from [dbo].[APS_NCB_DATA] where APPL_ID='C610000468');
delete from [APS_NCB_DATA] where  APPL_ID='C610000468';