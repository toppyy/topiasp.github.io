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
   50  PROCEDURE DIVISION.                                        
   60      DISPLAY 'HELLO WORLD FROM COBOL!'.                     
   70      STOP RUN.                                              
/*                                                                
//COB.SYSLIB   DD DSNAME=SYS1.COBLIB,DISP=SHR                     
//GO.SYSOUT   DD SYSOUT=*,DCB=(RECFM=FBA,LRECL=161,BLKSIZE=16100) 
//GO.SYSIN    DD *                                                
    2000                                                          
/*                                                                
//                                                                