function julianday=julian(dateinput)
%dateinput got to be like ymmdd.
        year=str2num(dateinput(1))+2000;
		month=str2num(dateinput(2:3));
		day=str2num(dateinput(4:5));
		switch month
			case 1
            	daynum = 0;
			case 2
			    daynum = 31;
			case 3
			    daynum = 59;
			case 4
			    daynum = 90;
			case 5
			    daynum = 120;
			case 6
			    daynum = 151;
            case 7
			    daynum = 181;
			case 8
			    daynum = 212;
			case 9
			    daynum = 243;
			case 10
			    daynum = 273;
			case 11
			    daynum = 304;
			case 12
			    daynum = 334;
		end
		if rem(year,4) == 0 && month > 2
			daynum = daynum+1;
		end
		julianday = daynum+day;