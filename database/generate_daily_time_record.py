# Daily_Time_Record
# Staff_ID char(5)
# Work_Date date
# Work_StartTime datetime
# Work_EndTime datetime
# Status varchar(20) Work record status:OnTime, Late, Absent, SickLeave, PersonalLeave

import random
import datetime as dt

class staff(object):
	def __init__(self, ID, y, m, d):
		self.ID = ID
		self.joinDate = dt.date(y, m, d)

allStaff = []
allStaff.append(staff('ST001', 2020, 1, 1))
allStaff.append(staff('ST002', 2020, 1, 1))
allStaff.append(staff('ST003', 2020, 1, 1))
allStaff.append(staff('ST004', 2020, 1, 1))
allStaff.append(staff('ST005', 2020, 1, 1))
allStaff.append(staff('ST006', 2020, 1, 1))
allStaff.append(staff('ST007', 2020, 1, 1))
allStaff.append(staff('ST008', 2020, 1, 1))
allStaff.append(staff('ST009', 2020, 1, 1))
allStaff.append(staff('ST010', 2020, 1, 1))
allStaff.append(staff('ST011', 2020, 6, 1))
allStaff.append(staff('ST012', 2020, 6, 1))
allStaff.append(staff('ST013', 2020, 8, 1))
allStaff.append(staff('ST014', 2020, 8, 1))
allStaff.append(staff('ST015', 2020, 8, 1))

# OnTime, Late, Absent, SickLeave, PersonalLeave
def genStatus():
	ranValue = random.uniform(0, 1)
	if ranValue <= 0.01: genSt = 'Absent'
	elif ranValue <= 0.035: genSt = 'SickLeave'
	elif ranValue <= 0.06: genSt = 'PersonalLeave'
	else: genSt = 'Work'
	return(genSt)

values = []

curDate = dt.date(2020, 1, 1)
lastDate = dt.date(2021, 6, 1)
workTime = dt.time(9, 0, 0)
leaveTime = dt.time(16, 0, 0)

while curDate != lastDate:
	for st in allStaff:
		if st.joinDate <= curDate:
			Status = genStatus()
			StartTime = ''
			EndTime = ''
			if Status == 'Work':
				diffStart = round(random.normalvariate(-5, 10), 1)
				StartTime = dt.datetime(curDate.year, curDate.month, curDate.day, 9, 0, 0)
				StartTime += dt.timedelta(minutes = diffStart)
				if(StartTime.time() <= workTime): Status = 'OnTime'
				else: Status = 'Late'
				StartTime = StartTime.time()

				diffEnd = round(random.normalvariate(15, 15), 1)
				EndTime = dt.datetime(curDate.year, curDate.month, curDate.day, 17, 0, 0)
				EndTime += dt.timedelta(minutes = diffEnd)
				EndTime = EndTime.time()

			values.append("('{}', '{}', '{}', '{}', '{}')".format(st.ID, curDate, StartTime, EndTime, Status))
	curDate += dt.timedelta(days = 1)

dummyData = open(r'Dummy data/daily_time_record_time.sql', 'w')
clause = "INSERT INTO `daily_time_record` (`Staff_ID`, `Work_Date`, `Work_StartTime`, `Work_EndTime`, `Status`) VALUES"
dummyData.write(clause)
for value in values:
	if value != values[0]: dummyData.write(",\n{}".format(value))
	else: dummyData.write("\n{}".format(value)) 
dummyData.write(";")
dummyData.close()