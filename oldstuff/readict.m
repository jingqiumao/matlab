% This program will read in a .ict file following the INTEX mission
% guidelines.  Matlab vectors will be produced based on
% variable names assigned in the .ict file.  The variable names are modified by deleting special characters which 
% do not follow matlab variable name conventions.  The program prompts whether lower limit of detection (LLOD) and upper 
% limit of detection (ULOD) values should be assigned NaN values.  These ULOD and LLOD values are defined by the .ict file
% and assigned appropriately. Written by Bob Lesher on 8/5/04 and modified on 2/16/05 for latest merge (version RO) variable names.

            clear header headernumber i parameternumber Day HOx2 OH Timetrp nandata

			if ~exist('file')
                file=input('Please Enter File Name (include full path) -------> ', 's');
            end
            limitofdetection = 'yes';
			if ~exist('limitofdetection')
                limitofdetection=input('Do you want to convert ULOD and LLOD to NaN? (yes or no)--> ', 's');
			end
			[headernumber] = textread(file,'%d',1);  
			disp(['Please wait while loading ict file...', file])
			[parameternumber] = textread(file,'%d',1,'headerlines',9);  
			[header(1)] = textread(file,'%s',1,'delimiter',',','headerlines',8);  
			[nandata] = textread(file,'%f',1,'delimiter',',','headerlines',11);  
            teststring='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
            varnameadjust='';
			for i=1:parameternumber+1
                if i>1
                   [header(i)] = textread(file,'%s',1,'delimiter',',','headerlines',i+10);  
                end
                clear alphachar, varnameadjust;
                varnameadjust=char(header(i));
                alphachar=ismember(varnameadjust,teststring);

                varnameadjust(alphachar==0)='';
                header(i)=cellstr(varnameadjust);
                        
                if strncmp(header(i),'0',1)
                    header(i) = strrep(header(i),'0','x0');
                elseif strncmp(header(i),'1',1)
                    header(i) = strrep(header(i),'1','x1');
                elseif strncmp(header(i),'2',1)
                    header(i) = strrep(header(i),'2','x2');
                elseif strncmp(header(i),'3',1)
                    header(i) = strrep(header(i),'3','x3');
                elseif strncmp(header(i),'4',1)
                    header(i) = strrep(header(i),'4','x4');
                elseif strncmp(header(i),'5',1)
                    header(i) = strrep(header(i),'5','x5');
                elseif strncmp(header(i),'6',1)
                    header(i) = strrep(header(i),'6','x6');
                elseif strncmp(header(i),'7',1)
                    header(i) = strrep(header(i),'7','x7');
                elseif strncmp(header(i),'8',1)
                    header(i) = strrep(header(i),'8','x8');
                elseif strncmp(header(i),'9',1)
                  header(i) = strrep(header(i),'9','x9');
                elseif strcmp(header(i),'Time')
                  header(i)=cellstr('Timex');
                end
			end   
            for i=parameternumber+10:headernumber-1
                [teststring]=textread(file,'%s',1,'delimiter',':','headerlines',i);
                if strcmp(teststring,'ULOD_FLAG')
                    [teststring ulod]=textread(file,'%s%f',1,'delimiter',':','headerlines',i);
                end
                if strcmp(teststring,'LLOD_FLAG')
                    [teststring llod]=textread(file,'%s%f',1,'delimiter',':','headerlines',i);
                end
            end
            [ictdata] = textread(file,'%f','delimiter',',','headerlines',headernumber);        
            ictdatanew=reshape(ictdata, parameternumber+1, length(ictdata)/(parameternumber+1))';
			for i=1:parameternumber+1
                eval([char(cellstr(header(i))) '=ictdatanew(:,i);']);      
                switch limitofdetection
                	case {'yes'}
                       eval([char(cellstr(header(i))) '(' char(cellstr(header(i))) '==llod)=NaN;']);   
                       eval([char(cellstr(header(i))) '(' char(cellstr(header(i))) '==ulod)=NaN;']);   
                end
                eval([char(cellstr(header(i))) '(' char(cellstr(header(i))) '==nandata)=NaN;']);  
			end
            clear ictdata ictdatanew
			disp(['Congratulations... The ict file has been converted...'])
			disp(['Some names were changed to follow matlab variable naming conventions'])
			disp(['All non-alphanumeric chars were deleted from the variable names'])
			disp(['All flagged data values of "' num2str(nandata) '" were converted to "NaN"'])
            switch limitofdetection
            	case {'yes'}
	        		disp(['All LLOD data values of "' num2str(llod) '" were converted to "NaN"'])
	        		disp(['All ULOD data values of "' num2str(ulod) '" were converted to "NaN"'])
            	case {'no'}
	        		disp(['All LLOD data values of "' num2str(llod) '" were preserved'])
	        		disp(['All ULOD data values of "' num2str(ulod) '" were preserved'])
            end
clear alphachar file header headernumber i limitofdetection llod nandata parameternumber ...
    teststring ulod varnameadjust

            
            