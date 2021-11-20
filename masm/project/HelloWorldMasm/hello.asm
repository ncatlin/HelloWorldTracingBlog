;basic sanity check with a few external calls

;initialised data
.data
	 Message db "Hello World!", 0Dh, 0Ah, 0

;bss/uninitialised data
.data? 
	 tmp db ?

extrn  GetStdHandle: PROC
extrn  WriteFile: PROC
extrn  ExitProcess: PROC
	
includelib      kernel32
        
.code                   ;code 

main proc
	; node 0 -> jmp main
	
	 mov   RCX, -11
	 call  GetStdHandle 
	 
	 mov   qword ptr [tmp], RAX 
	 mov   RDI, 15  
	 mov   RCX, qword ptr [tmp]         
	 lea   RDX, [Message]                       
	 mov   R8, RDI                                 
	 lea   R9, [tmp]                        	
	 mov   qword ptr [RSP + 4 * 8], 0                
	 call  WriteFile              

	 ;basic blocks 6-9
	 ;xor   RCX, RCX		;sequential node 13
	 ;call  ExitProcess 	;call node 14 
	  
main endp


end