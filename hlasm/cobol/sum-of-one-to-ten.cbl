//MYCOBJOB JOB (COBOL),                                              
//             'HELLO WORLD',                                        
//             CLASS=A,                                              
//             MSGCLASS=X,                                           
//             REGION=8M,TIME=1440,                                  
//             MSGLEVEL=(1,1)                                        
//*                                                                  
//*                                                                  
//HELLO    EXEC COBUCG,                                              
//         PARM.COB='FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'         
//COB.SYSPUNCH DD DUMMY                                              
//COB.SYSIN    DD *                                                  
   10  IDENTIFICATION DIVISION.                                      
   20  PROGRAM-ID. 'MYFIRSTCBL'.                                     
   30  ENVIRONMENT DIVISION.                                         
   40  DATA DIVISION.                                                
       WORKING-STORAGE SECTION.                                      
   60    01  NUM1      PIC 9 VALUE 0.                                
   70    01  NUM2      PIC 9 VALUE 0.                                
   50  PROCEDURE DIVISION.                                           
   60      PERFORM ADDITION UNTIL NUM1 > 9.                           
   70      DISPLAY 'SUM:' NUM2.                                      
   80      STOP RUN.                                                 
   90  ADDITION.
                                                        
  100      COMPUTE NUM1 = NUM1 + 1.                                            
  110      ADD NUM1 TO NUM2.                                         
/*                                                                   
//COB.SYSLIB   DD DSNAME=SYS1.COBLIB,DISP=SHR                        
//GO.SYSOUT   DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=161,BLKSIZE=16100)    
//GO.SYSIN    DD *                                                   
    2000                                                             
/*                                                                   
//                                 