# Staff_Work_Performance
# Staff_ID char(5)
# Perform_Date 
# Perform_Score decimal(5, 2) between 0 and 100

import random
import datetime

class staff(object):
	def __init__(self, ID, y, m, d):
		self.ID = ID
		self.joinDate = datetime.date(y, m, d)

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

values = []

for curYear in (2020, 2021):
	for curMonth in range(1, 13):
		if (curYear == 2021) & (curMonth == 5): break
		else:
			curDate = datetime.date(curYear, curMonth, 5)
			if curMonth == 12: perDate = datetime.date(curYear+1, 1, 5)
			else: perDate = datetime.date(curYear, curMonth+1, 5)	#day 5 of next month
			for st in allStaff:
				if st.joinDate < curDate:
					score = round(random.uniform(0, 100), 2)
					values.append("('{}', '{}', '{}')".format(st.ID, str(perDate), score))

# for x in values: print(x)

dummyData = open(r'Dummy data/staff_work_performance.sql', 'w')
clause = "INSERT INTO `staff_work_performance` (`Staff_ID`, `Perform_Date`, `Perform_Score`) VALUES"
dummyData.write(clause)
for value in values:
	if value != values[0]: dummyData.write(",\n{}".format(value))
	else: dummyData.write("\n{}".format(value)) 
dummyData.write(";")
dummyData.close()