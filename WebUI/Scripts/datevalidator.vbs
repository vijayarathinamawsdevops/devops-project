'This function checks whether the date is valid
'It should check if the year is leap year and check if the date selected is 
'valid
private function ValidateDate(sDate)
dim aMonth
dim aLeapMonth
dim aDateOfBirth
dim i, iDay, iMonth, iYear

ValidateDate = false

'Days in month of a normal year
aMonth = Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

'Days in month of a leap year
aLeapMonth = Array(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

'Get the day, month and year
aDateOfBirth = split(sDate, "/")
iDay = cint(aDateOfBirth(0))
iMonth = cint(aDateOfBirth(1))
iYear = cint(aDateOfBirth(2))

'If all the items - day, month, year are selected, do the validation....else return 
'Note : The month array starts from 0
if (iDay <> 0) and (iMonth <> 0) and (iYear <> 0) then 
if ((iYear mod 4) = 0) then
                      if (((iYear mod 100) = 0) and ((iYear mod 400) <> 0)) then 'Normal year
                                'Check if the day entered is valid 
                                 if (iDay) <= aMonth(iMonth - 1) then  ValidateDate = true
       else 'Leap year
if (iDay) <= aLeapMonth(iMonth - 1) then ValidateDate = true
                      end if
else 'Normal year
       if (iDay) <= aMonth(iMonth - 1) then ValidateDate = true
end if
end if

end function
