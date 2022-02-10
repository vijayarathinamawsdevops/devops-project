/****** Object:  StoredProcedure [dbo].[GetSPFReportRecords]    Script Date: 10/19/2015 2:15:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [dbo].[GetSPFReportRecords]
(
@FROMDATE datetime,
@TODATE datetime
)

As
begin

select a.srsano as SANO,
           SUM(CASE WHEN b.dpcode = '800901101AA010C' THEN b.amt END) AS 'GPF', 
           SUM(CASE WHEN b.dpcode = '800960103BA010I' THEN b.amt END) AS 'TPF/ATEC',
           SUM(CASE WHEN b.dpcode = '800901104AA010I' THEN b.amt END) AS 'AISPF',
           SUM(CASE WHEN b.dpcode = '800960103AS010D' THEN b.amt END) AS 'TPF-AID', 
           SUM(CASE WHEN b.dpcode = '800960103BE010G' THEN b.amt END) AS 'TPF-MUNI', 
           SUM(CASE WHEN b.dpcode = '800960103BC010C' THEN b.amt END) AS 'TPF-PUNC', 
           SUM(CASE WHEN b.dpcode = '800960103AY010F' THEN b.amt END) AS 'TPF-ACOL',
		   SUM(CASE WHEN b.dpcode = '800960103BM000A' THEN b.amt END) AS 'NMP-GPF'
    --       SUM(CASE WHEN b.dpcode = '801100106AA010F' THEN b.amt END) AS 'CPF'
FROM         r1 a,r2  b
WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
                      '800960103AY010F','800960103BM000A') and a.challanno = b.challanno and  a.nature ='F'  and
a.[date] between @FROMDATE and @TODATE
GROUP BY a.srsano 

 union

select a.srsano as SANO,
          SUM(CASE WHEN b.dpcode = '800901101AA010C' THEN b.amt END) AS 'GPF', 
           SUM(CASE WHEN b.dpcode = '800960103BA010I' THEN b.amt END) AS 'TPF/ATEC',
           SUM(CASE WHEN b.dpcode = '800901104AA010I' THEN b.amt END) AS 'AISPF',
           SUM(CASE WHEN b.dpcode = '800960103AS010D' THEN b.amt END) AS 'TPF-AID', 
           SUM(CASE WHEN b.dpcode = '800960103BE010G' THEN b.amt END) AS 'TPF-MUNI', 
           SUM(CASE WHEN b.dpcode = '800960103BC010C' THEN b.amt END) AS 'TPF-PUNC', 
           SUM(CASE WHEN b.dpcode = '800960103AY010F' THEN b.amt END) AS 'TPF-ACOL',
		   SUM(CASE WHEN b.dpcode = '800960103BM000A' THEN b.amt END) AS 'NMP-GPF'

--           SUM(CASE WHEN b.dpcode = '801100106AA010F' THEN b.amt END) AS 'CPF'
FROM       p1 a,p3 b
WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
                      '800960103AY010F','800960103BM000A') and a.tokenno = b.tokenno and  a.nature in('P','G','S') and a.srsano  is not null
and  a.[date] between @FROMDATE and @TODATE


GROUP BY a.srsano


end

GO

/****** Object:  StoredProcedure [dbo].[GetSPFReportRecordsAM]    Script Date: 10/19/2015 2:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [dbo].[GetSPFReportRecordsAM]
(
@FROMDATE datetime,
@TODATE datetime,
--Add TOCode at 19/12/2011 by Rathinam
@TOCode nvarchar(4)
)
As

BEGIN

declare @ReportType char(1)
declare @ToLen int    --for substring, main treasury - 2, sub treasury -4

select @ReportType = ReportType from ControlMas where STOCode = @TOCode


IF (@ReportType = 'Y' AND substring(@TOCode,3,2) = '01')   --District Wise based on First Two Digit
  begin
    SET @ToLen = 2
  end
ELSE
  begin
    SET @ToLen = 4
  end


  BEGIN  -- Main logic starts here

	select a.srsano as SANO,
			   SUM(CASE WHEN b.dpcode = '800901101AA010C' THEN b.amt END) AS 'GPF', 
			   SUM(CASE WHEN b.dpcode = '800960103BA010I' THEN b.amt END) AS 'TPF/ATEC',
			   SUM(CASE WHEN b.dpcode = '800901104AA010I' THEN b.amt END) AS 'AISPF',
			   SUM(CASE WHEN b.dpcode = '800960103AS010D' THEN b.amt END) AS 'TPF-AID', 
			   SUM(CASE WHEN b.dpcode = '800960103BE010G' THEN b.amt END) AS 'TPF-MUNI', 
			   SUM(CASE WHEN b.dpcode = '800960103BC010C' THEN b.amt END) AS 'TPF-PUNC', 
			   SUM(CASE WHEN b.dpcode = '800960103AY010F' THEN b.amt END) AS 'TPF-ACOL',
			   SUM(CASE WHEN b.dpcode = '800960103BM000A' THEN b.amt END) AS 'NMP-GPF'
		--       SUM(CASE WHEN b.dpcode = '801100106AA010F' THEN b.amt END) AS 'CPF'
	FROM         r1 a,r2  b
	WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
						  '800960103AY010F','800960103BM000A') and a.challanno = b.challanno and  a.nature ='F'  and
		      --Add TOCode for check chellan number at 19/12/2011 by Rathinam

	         a.[date] between @FROMDATE and @TODATE 
			 and SUBSTRING(cast(a.ChallanNo as nvarchar(17)),5,@ToLen) = SUBSTRING(@TOCode,1,@ToLen)
	GROUP BY a.srsano 

  union

	select a.srsano as SANO,
			  SUM(CASE WHEN b.dpcode = '800901101AA010C' THEN b.amt END) AS 'GPF', 
			   SUM(CASE WHEN b.dpcode = '800960103BA010I' THEN b.amt END) AS 'TPF/ATEC',
			   SUM(CASE WHEN b.dpcode = '800901104AA010I' THEN b.amt END) AS 'AISPF',
			   SUM(CASE WHEN b.dpcode = '800960103AS010D' THEN b.amt END) AS 'TPF-AID', 
			   SUM(CASE WHEN b.dpcode = '800960103BE010G' THEN b.amt END) AS 'TPF-MUNI', 
			   SUM(CASE WHEN b.dpcode = '800960103BC010C' THEN b.amt END) AS 'TPF-PUNC', 
			   SUM(CASE WHEN b.dpcode = '800960103AY010F' THEN b.amt END) AS 'TPF-ACOL',
			   SUM(CASE WHEN b.dpcode = '800960103BM000A' THEN b.amt END) AS 'NMP-GPF'
	--           SUM(CASE WHEN b.dpcode = '801100106AA010F' THEN b.amt END) AS 'CPF'
	FROM       p1 a,p3 b
	WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
						  '800960103AY010F','800960103BM000A') and a.tokenno = b.tokenno and  a.nature in('P','G','S') and a.srsano  is not null
                      
			   --Add TOCode for check token number at 19/12/2011 by Rathinam

	          and  a.[date] between @FROMDATE and @TODATE 
			  and SUBSTRING(cast(a.tokenno as nvarchar(15)),5,@ToLen) = SUBSTRING(@TOCode,1,@ToLen)
	GROUP BY a.srsano

	------p4 included to get tpf gpf adjustment
  union

	select a.srsano as SANO,
			  SUM(CASE WHEN b.dpcode = '800901101AA010C' THEN b.amt END) AS 'GPF', 
			   SUM(CASE WHEN b.dpcode = '800960103BA010I' THEN b.amt END) AS 'TPF/ATEC',
			   SUM(CASE WHEN b.dpcode = '800901104AA010I' THEN b.amt END) AS 'AISPF',
			   SUM(CASE WHEN b.dpcode = '800960103AS010D' THEN b.amt END) AS 'TPF-AID', 
			   SUM(CASE WHEN b.dpcode = '800960103BE010G' THEN b.amt END) AS 'TPF-MUNI', 
			   SUM(CASE WHEN b.dpcode = '800960103BC010C' THEN b.amt END) AS 'TPF-PUNC', 
			   SUM(CASE WHEN b.dpcode = '800960103AY010F' THEN b.amt END) AS 'TPF-ACOL',
	           SUM(CASE WHEN b.dpcode = '800960103BM000A' THEN b.amt END) AS 'NMP-GPF'
	FROM       p1 a,p4 b
	WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
						  '800960103AY010F','800960103BM000A') and a.tokenno = b.tokenno and  a.nature in('P','G','S','O') and a.srsano  is not null
                      
			   --Add TOCode for check token number at 19/12/2011 by Rathinam

	          and  a.[date] between @FROMDATE and @TODATE 
			  and SUBSTRING(cast(a.tokenno as nvarchar(15)),5,@ToLen) = SUBSTRING(@TOCode,1,@ToLen)
	GROUP BY a.srsano


	---------------------AM STARTS HERE ------------------------------

  union

	select a.srsano as SANO,
			  CASE WHEN b.dpcode = '800901101AA010C' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN b.dpcode = '800901101AA010C' and a.amsign = '-' THEN sum(b.amt) * -1 end  'GPF',

		  CASE WHEN b.dpcode = '800960103BA010I' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN b.dpcode = '800960103BA010I' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF/ATEC',

		  CASE WHEN b.dpcode = '800901104AA010I' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN b.dpcode = '800901104AA010I' and a.amsign = '-' THEN sum(b.amt) * -1 end  'AISPF',

		  CASE WHEN b.dpcode = '800960103AS010D' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN b.dpcode = '800960103AS010D' and a.amsign = '-' THEN sum(b.amt) * -1 end 'TPF-AID', 


		  CASE WHEN b.dpcode = '800960103BE010G' and a.amsign = '+' THEN sum(b.amt)
		 WHEN b.dpcode = '800960103BE010G' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-MUNI', 

		  CASE WHEN b.dpcode = '800960103BC010C' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103BC010C' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-PUNC', 

		  CASE WHEN b.dpcode = '800960103AY010F' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103AY010F' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-ACOL',

		    CASE WHEN b.dpcode = '800960103BM000A' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103BM000A' and a.amsign = '-' THEN sum(b.amt) * -1 end  'NMP-GPF'

  
	FROM         r1am a,r2am  b
	WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
						  '800960103AY010F','800960103BM000A') and a.challanno = b.challanno and  a.nature ='F'  and
			--Add TOCode for check chellan number at 19/12/2011 by Rathinam

	        a.[date] between @FROMDATE and @TODATE 
			and SUBSTRING(cast(a.challanno as nvarchar(14)),5,@ToLen) = substring(@TOCode,1,@ToLen)
	GROUP BY a.srsano,b.dpcode,a.amsign

  union

	select a.srsano as SANO,
	 CASE WHEN b.dpcode = '800901101AA010C' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN b.dpcode = '800901101AA010C' and a.amsign = '-' THEN sum(b.amt) * -1 end  'GPF',

		  CASE WHEN b.dpcode = '800960103BA010I' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN b.dpcode = '800960103BA010I' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF/ATEC',

		  CASE WHEN b.dpcode = '800901104AA010I' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN b.dpcode = '800901104AA010I' and a.amsign = '-' THEN sum(b.amt) * -1 end  'AISPF',

		  CASE WHEN b.dpcode = '800960103AS010D' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN b.dpcode = '800960103AS010D' and a.amsign = '-' THEN sum(b.amt) * -1 end 'TPF-AID', 


		  CASE WHEN b.dpcode = '800960103BE010G' and a.amsign = '+' THEN sum(b.amt)
		 WHEN b.dpcode = '800960103BE010G' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-MUNI', 

		  CASE WHEN b.dpcode = '800960103BC010C' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103BC010C' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-PUNC', 

		  CASE WHEN b.dpcode = '800960103AY010F' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103AY010F' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-ACOL',

		   CASE WHEN b.dpcode = '800960103BM000A' and a.amsign = '+' THEN sum(b.amt)
		   WHEN b.dpcode = '800960103BM000A' and a.amsign = '-' THEN sum(b.amt) * -1 end  'NMP-GPF'


	FROM       p1am a,p3am b
	WHERE     b.dpcode IN ('800901101AA010C', '800960103BA010I', '800901104AA010I', '800960103AS010D', '800960103BE010G', '800960103BC010C', 
						  '800960103AY010F','800960103BM000A') and a.tokenno = b.tokenno and  a.nature in('P','G','S') and a.srsano  is not null
                      
		   --Add TOCode for check token number at 19/12/2011 by Rathinam

	       and  a.[date] between @FROMDATE and @TODATE 
		   and SUBSTRING(cast(a.tokenno as nvarchar(15)),5,@ToLen) = substring(@TOCode,1,@ToLen)
	GROUP BY a.srsano,b.dpcode,a.amsign
	order by srsano


  END  -- end of Main logic


END

GO

/****** Object:  StoredProcedure [dbo].[GetSPF8009PayReportRecords]    Script Date: 10/19/2015 2:15:12 PM ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO











ALTER Procedure [dbo].[GetSPF8009PayReportRecords]

(
@FROMDATE datetime,
@TODATE datetime
)
As
begin

/*select a.sano as SANO,
          SUM(CASE WHEN b.dpcode = '800901101AA0108' THEN b.amt END) AS 'GPF', 
           SUM(CASE WHEN b.dpcode = '800960103BA0102' THEN b.amt END) AS 'TPF/ATEC',
           SUM(CASE WHEN b.dpcode = '800901104AA0102' THEN b.amt END) AS 'AISPF',
           SUM(CASE WHEN b.dpcode = '800960103AS0107' THEN b.amt END) AS 'TPF-AID', 
           SUM(CASE WHEN b.dpcode = '800960103BE0104' THEN b.amt END) AS 'TPF-MUNI', 
           SUM(CASE WHEN b.dpcode = '800960103BC0108' THEN b.amt END) AS 'TPF-PUNC', 
           SUM(CASE WHEN b.dpcode = '800960103AY0105' THEN b.amt END) AS 'TPF-ACOL', 
           SUM(CASE WHEN b.dpcode = '801100106AA0105' THEN b.amt END) AS 'CPF'

FROM    P1 a,P2  b

WHERE   a.TOKENNO = b.TOKENNO and a.sano = b.sano and a.sano is not null and upper(a.NATURE) = 'O' 
and  a.[date] between @FROMDATE and @TODATE
GROUP BY a.sano  */

select a.srsano as SANO,
          SUM(CASE WHEN b.dpcode = '800901101AA0108' THEN b.amt END) AS 'GPF', 
           SUM(CASE WHEN b.dpcode = '800960103BA0102' THEN b.amt END) AS 'TPF/ATEC',
           SUM(CASE WHEN b.dpcode = '800901104AA0102' THEN b.amt END) AS 'AISPF',
           SUM(CASE WHEN b.dpcode = '800960103AS0107' THEN b.amt END) AS 'TPF-AID', 
           SUM(CASE WHEN b.dpcode = '800960103BE0104' THEN b.amt END) AS 'TPF-MUNI', 
           SUM(CASE WHEN b.dpcode = '800960103BC0108' THEN b.amt END) AS 'TPF-PUNC', 
           SUM(CASE WHEN b.dpcode = '800960103AY0105' THEN b.amt END) AS 'TPF-ACOL', 
           SUM(CASE WHEN b.dpcode = '801100106AA0105' THEN b.amt END) AS 'CPF',
		   SUM(CASE WHEN b.dpcode = '800960103BM0000' THEN b.amt END) AS 'NMP-GPF'

FROM    P1 a,P2  b

WHERE   a.TOKENNO = b.TOKENNO and a.srsano is not null and upper(a.NATURE) = 'O' 
and  a.[date] between @FROMDATE and @TODATE
GROUP BY a.srsano order by a.srsano


end













GO

/****** Object:  StoredProcedure [dbo].[GetSPF8009PayReportRecordsAM]    Script Date: 10/19/2015 2:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[GetSPF8009PayReportRecordsAM]

(
@FROMDATE datetime,
@TODATE datetime,
@TOCode nvarchar(4)
)
As

BEGIN

/*select a.sano as SANO,
          SUM(CASE WHEN b.dpcode = '800901101AA0108' THEN b.amt END) AS 'GPF', 
           SUM(CASE WHEN b.dpcode = '800960103BA0102' THEN b.amt END) AS 'TPF/ATEC',
           SUM(CASE WHEN b.dpcode = '800901104AA0102' THEN b.amt END) AS 'AISPF',
           SUM(CASE WHEN b.dpcode = '800960103AS0107' THEN b.amt END) AS 'TPF-AID', 
           SUM(CASE WHEN b.dpcode = '800960103BE0104' THEN b.amt END) AS 'TPF-MUNI', 
           SUM(CASE WHEN b.dpcode = '800960103BC0108' THEN b.amt END) AS 'TPF-PUNC', 
           SUM(CASE WHEN b.dpcode = '800960103AY0105' THEN b.amt END) AS 'TPF-ACOL', 
           SUM(CASE WHEN b.dpcode = '801100106AA0105' THEN b.amt END) AS 'CPF'

FROM    P1 a,P2  b

WHERE   a.TOKENNO = b.TOKENNO and a.sano = b.sano and a.sano is not null and upper(a.NATURE) = 'O' 
and  a.[date] between @FROMDATE and @TODATE800960103AG010J
GROUP BY a.sano  */

declare @ReportType char(1)
declare @ToLen int    --for substring, main treasury - 2, sub treasury -4

select @ReportType = ReportType from ControlMas where STOCode = @TOCode


IF (@ReportType = 'Y' AND substring(@TOCode,3,2) = '01')   --District Wise based on First Two Digit
  begin
    SET @ToLen = 2
  end
ELSE
  begin
    SET @ToLen = 4
  end


   BEGIN -- Main logic starts here

	 select    upper(a.srsano) as SANO,
			   SUM(CASE WHEN upper(b.dpcode) = '800901101AA0108' THEN b.amt END) AS 'GPF', 
			   SUM(CASE WHEN upper(b.dpcode) = '800960103BA0102' THEN b.amt END) AS 'TPF/ATEC',
			   SUM(CASE WHEN upper(b.dpcode) = '800901104AA0102' THEN b.amt END) AS 'AISPF',
			   SUM(CASE WHEN upper(b.dpcode) = '800960103AS0107' THEN b.amt END) AS 'TPF-AID', 
			   SUM(CASE WHEN upper(b.dpcode) = '800960103BE0104' THEN b.amt END) AS 'TPF-MUNI', 
			   SUM(CASE WHEN upper(b.dpcode) = '800960103BC0108' THEN b.amt END) AS 'TPF-PUNC', 
			   SUM(CASE WHEN upper(b.dpcode) = '800960103AY0105' THEN b.amt END) AS 'TPF-ACOL', 
			   SUM(CASE WHEN upper(b.dpcode) = '801100106AA0105' THEN b.amt END) AS 'CPF',
			   SUM(CASE WHEN upper(b.dpcode) = '800960103BM0000' THEN b.amt END) AS 'NMP-GPF'
	FROM    P1 a inner join P2  b

	--Add TOCode in this stored procedure at 17/Dec/2011 by Rathinam

	       on  a.TOKENNO = b.TOKENNO 
	where  a.srsano is not null and upper(a.NATURE) = 'O' 
	       and  a.[date] between @FROMDATE and @TODATE 
		   and SUBSTRING(cast(a.tokenno as nvarchar(15)),5,@ToLen) = SUBSTRING(@TOCode,1,@ToLen)
	GROUP BY upper(a.srsano)

	-----AM STARTS HERE----------------

	union


	select upper(a.srsano) as SANO,
		   CASE WHEN upper(b.dpcode) = '800901101AA0108' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN upper(b.dpcode) = '800901101AA0108' and a.amsign = '-' THEN sum(b.amt) * -1 end  'GPF',

		  CASE WHEN upper(b.dpcode) = '800960103BA0102' and a.amsign = '+' THEN sum(b.amt) 
		   WHEN upper(b.dpcode) = '800960103BA0102' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF/ATEC',

		  CASE WHEN upper(b.dpcode) = '800901104AA0102' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN upper(b.dpcode) = '800901104AA0102' and a.amsign = '-' THEN sum(b.amt) * -1 end  'AISPF',

		  CASE WHEN upper(b.dpcode) = '800960103AS0107' and a.amsign = '+' THEN sum(b.amt) 
		  WHEN upper(b.dpcode) = '800960103AS0107' and a.amsign = '-' THEN sum(b.amt) * -1 end 'TPF-AID', 


		  CASE WHEN upper(b.dpcode) = '800960103BE0104' and a.amsign = '+' THEN sum(b.amt)
		 WHEN upper(b.dpcode) = '800960103BE0104' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-MUNI',  

		  CASE WHEN upper(b.dpcode) = '800960103BC0108' and a.amsign = '+' THEN sum(b.amt)
		   WHEN upper(b.dpcode) = '800960103BC0108' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-PUNC',  

		  CASE WHEN upper(b.dpcode) = '800960103AY0105' and a.amsign = '+' THEN sum(b.amt)
		   WHEN upper(b.dpcode) = '800960103AY0105' and a.amsign = '-' THEN sum(b.amt) * -1 end  'TPF-ACOL', 

		  CASE WHEN upper(b.dpcode) = '801100106AA0105' and a.amsign = '+' THEN sum(b.amt)
		 WHEN upper(b.dpcode) = '801100106AA0105' and a.amsign = '-' THEN sum(b.amt) * -1 end  'CPF',

		 CASE WHEN upper(b.dpcode) = '800960103BM0000' and a.amsign = '+' THEN sum(b.amt)
		 WHEN upper(b.dpcode) = '800960103BM0000' and a.amsign = '-' THEN sum(b.amt) * -1 end  'NMP-GPF'
	FROM    P1am a inner join P2am  b

	--Add TOCode in this stored procedure at 17/Dec/2011 by Rathinam

	     on   a.TOKENNO = b.TOKENNO where  a.srsano is not null and upper(a.NATURE) = 'O' 
	     and  a.[date] between @FROMDATE and @TODATE 
		 and SUBSTRING(cast(a.tokenno as nvarchar(15)),5,@ToLen) = SUBSTRING(@TOCode,1,@ToLen)
	GROUP BY upper(a.srsano),b.dpcode,a.amsign order by upper(a.srsano)

   END   -- end of Main logic



END

GO

/****** Object:  StoredProcedure [dbo].[GetCPSTransaction_10Oct2014]    Script Date: 10/19/2015 2:15:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[GetCPSTransaction_10Oct2014]
(
@FromDate datetime,
@TODate datetime,
@TOCode nvarchar(4)
)
 as
begin

declare @a as char
set @a='/'
update e set e.pfno =
substring(ecode,0,charindex(@a,e.ecode,0)) 
from ecsdata e inner join ecsmas m on e.tokenno=m.tokenno where
len(ltrim(rtrim(e.pfno)))=4 and e.ecode is not null and e.pftype='C'
and e.pfsubs<>0 and year(setdate)=2015 and  charindex(@a,e.ecode,0)<>0

--declare @a as char
--set @a='/'

update e set e.pfno =
substring(ecode,1,10) 
from ecsdata e inner join ecsmas m on e.tokenno=m.tokenno where
len(ltrim(rtrim(e.pfno)))=4 and e.ecode is not null and e.pftype='C'
and e.pfsubs<>0 and year(setdate)=2015 and charindex(@a,e.ecode,0)=0

--declare @a as char
--set @a='/'
update e set e.pfno =
substring(ecode,0,charindex(@a,e.ecode,0)) 
from ecsdata e inner join ecsmas m on e.tokenno=m.tokenno where
len(ltrim(rtrim(e.pfno)))=0 and e.ecode is not null and e.pftype='C'
and e.pfsubs<>0 and year(setdate)=2015 and  charindex(@a,e.ecode,0)<>0

--declare @a as char
--set @a='/'

update e set e.pfno =
substring(ecode,1,10) 
from ecsdata e inner join ecsmas m on e.tokenno=m.tokenno where
len(ltrim(rtrim(e.pfno)))=0 and e.ecode is not null and e.pftype='C'
and e.pfsubs<>0 and year(setdate)=2015 and charindex(@a,e.ecode,0)=0



 Select CD.Cmonth as mth , CD.Cyear as yr ,SUBSTRING(CAST(CD.TokenNo as nvarchar(15)),5,4) as TOCode,
 P1.SANo,P3.DPCODE as DPCode,P1.docode,'V' as diff,P1.DOType,CD.TokenNo,P1.VoucherNo, 
	   CD.Cpsno+'/'+CD.suffix as CPSCode,E.Name as CPSName,convert(varchar(10),P1.[Date],103) as dt,Amount as pfsubs , 0 as pfrefund
FROM   Cpsdata as CD 
join P1  on CD.tokenno=P1.Tokenno 
	   join P3 on P1.Tokenno=P3.TokenNo join refp3 on P3.DPCODE=refp3.DPCODE join Ecsdata As E on CD.tokenno=E.tokenno and CD.Cpsno+'/'+CD.suffix=E.ECode
	   WHERE  (p1.Date between @FromDate and @TODate) 
        and substring(P3.dpcode,1,4)='8342'
		and SUBSTRING(cast(P3.Tokenno as nvarchar(15)),5,2) =substring(@TOCode,1,2) 

union

SELECT ED.billmonth as [mth], ED.billyear as [yr],SUBSTRING(CAST(ED.TokenNo as nvarchar(15)),5,4) as TOCode,
       P1.SANo,P3.DPCODE as DPCode,ED.docode,'V' as diff,P1.DOType,ED.TokenNo,P1.VoucherNo, 
	   ED.PfNo+'/'+ED.suffix as CPSCode,ED.Name as CPSName,convert(varchar(10),P1.[date],103) as [dt], pfsubs ,  pfrefund
FROM   ECSData as ED 
	   join P1  on ED.tokenno=P1.Tokenno 
	   join P3 on P1.Tokenno=P3.TokenNo join refp3 on P3.DPCODE=refp3.DPCODE 
WHERE  pftype in ('C') and (p1.[Date] between @FromDate and @TODate)  
        and substring(P3.dpcode,1,4) in ('8342')
		and SUBSTRING(cast(P3.Tokenno as nvarchar(15)),5,2) =substring(@TOCode,1,2) and (pfsubs <> 0 or pfrefund <> 0)  and ED.tokenno not in 
		(select Tokenno from Cpsdata )  
union


SELECT ED.billmonth as [mth], ED.billyear as [yr],SUBSTRING(CAST(ED.TokenNo as nvarchar(15)),5,4) as TOCode,
       P1.SANo,P3.DPCODE as DPCode,ED.docode,'V' as diff,P1.DOType,ED.TokenNo,P1.VoucherNo, 
	   ED.PfNo+'/'+ED.suffix as CPSCode,ED.Name as CPSName,convert(varchar(10),P1.[date],103) as [dt], pfsubs ,  pfrefund
FROM   ECSData as ED 
	   join P1  on ED.tokenno=P1.Tokenno 
	   join P3 on P1.Tokenno=P3.TokenNo join refp3 on P3.DPCODE=refp3.DPCODE 
WHERE  pftype in ('N') and (p1.[Date] between @FromDate and @TODate)  
        and (P3.dpcode) in ('800960103BM000A')
		and SUBSTRING(cast(P3.Tokenno as nvarchar(15)),5,2) =substring(@TOCode,1,2) and (pfsubs <> 0 or pfrefund <> 0)  and ED.tokenno not in 
		(select Tokenno from Cpsdata )
end


GO

