//MYCOBJOB JOB CLASS=A,                                          
//             MSGCLASS=X,                                       
//             MSGLEVEL=(1,1)                                    
//*                                                              
//*                                                              
//BUILD    EXEC COBUCG,                                          
//         PARM.COB='FLAGW,LOAD,SUPMAP,SIZE=2048K,BUF=1024K'     
//COB.SYSPUNCH DD DUMMY                                          
//COB.SYSIN    DD *                                              
   10  IDENTIFICATION DIVISION.                                  
   20  PROGRAM-ID. 'MYFIRSTCBL'.                                 
   30  ENVIRONMENT DIVISION.                                     
   40  DATA DIVISION.                                            
   50  WORKING-STORAGE SECTION.                                  
   60    01  CNT   PIC 9(5) VALUE 0.                             
   70    01  MYSUM PIC 9(5) VALUE 0.                             
   80  PROCEDURE DIVISION.                                       
   90      PERFORM ADDITION UNTIL CNT = 10.                      
  100      DISPLAY 'MYSUM: ' MYSUM.                              
  110      STOP RUN.                                             
  120  ADDITION.                                                 
  130      ADD 1 TO CNT.                                         
  140      ADD CNT TO MYSUM.                                     
/*                                                               
//COB.SYSLIB  DD DSNAME=SYS1.COBLIB,DISP=SHR                     
//GO.SYSOUT   DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=161,BLKSIZE=16100)
//GO.SYSIN    DD *                                               
2000                                                             
/*                                                               
//                                                               