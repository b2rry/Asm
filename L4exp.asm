		JUMPS
		.model small
		.stack 100h
	
		.DATA  
            
offsetX	dw	0	                        	                                   
width	EQU	120                    
level	db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 
		db	1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1

chars	db	' ',		' ',		' ',		'o',		179,		48
colors	db  00110000b,	00100000b,	01100000b,	00111110b,	00111111b,	00111111b
;			0 sky,		1 grass,	2 wall, 	3 coin,		4 flagpole,	5 flag  

entityX		dw	20,	65
entityY	 	db	19,	19
entityDir	db	0,	0
entityCount	db	2                              
                              
curPage		db	0
                               
row			db	0
column		db	0

playerX		dw	10
playerY		db	18    
               
coinsCollected		db	0
maxCoins			db	5
               
fallState			db 0                           
                     
coinsStr			db "Coins:$"                               
levelCompletedStr	db "Level completed!$"                               
levelFailedStr		db "Level failed$"
                               	                                                 
        .CODE
		
proc directVid
    mov  es:[di],ax
    inc di
	push ax
	mov ax, 00111100b
	mov es:[di], ax
	inc di
	 
	push cx
    mov cx,04h	
    mov dx,0FFEh
    mov  ah,86h
    int 15h
    pop cx
    pop ax
    ret 
endp directVid 
   
start:
 
  mov ah, 00
  mov al, 03
  int 10h  
		  
  mov ax, 0B800h
  mov es,ax
  mov di,60h
 
  mov al, 77  
  call directVid
  mov al, 65  
  call directVid
  mov al, 82  
  call directVid
  mov al, 73  
  call directVid
  mov al, 79  
  call directVid
   
   
  mov cx,01Fh
  mov dx,0FFFEh
  mov  ah,86h
  int 15h 
   
  mov ax, 0600h
  mov bh, 07h
  mov cx, 0000h
  mov dx, 184Fh
  int 10h
   
  xor ax,ax
  xor dx,dx
  xor cx,cx
   	
		mov		ax, @data
		mov		ds, ax
		push	ds
		pop		es            
                
lp:
		call	processKeys                       
		call	render		                  
		call	processWorld   
		
		mov	ah, 86h  
		mov	cx, 0000h
		mov	dx, 208Dh
		int	15h 
		          
		jmp		lp	              
		              
		mov		ah, 4Ch
		int		21h    
		
proc	render
		mov		ah, 0
		mov		al, curPage
		inc		ax        
		mov		bh, 4
		div		bh
		mov		curPage, ah
		
		mov		ah, 01h
		mov		ch, 00010000b   
		int		10h				;Remove cursor           
	             
		mov		cx, 25
		mov	 	row, 0
		
		rowLoop:       
				push	cx
				mov		cx, 80
				mov		column, 0
								           
				colLoop:       
					mov		al, ' '
					mov		dh, row
					mov		dl, column   
					call	drawChar
					           
					inc		column					           
					loop	colLoop
		                
		        pop		cx      
		        inc		row
				loop	rowLoop				;^ Draw world                    		                    
		                    
		mov		al, 1
		mov		bl, 00000000b
		mov		dx, playerX
		mov		bh, playerY
		call	drawOnMap
		
		mov		al, 186
		inc		bh
		call	drawOnMap 					;^ Draw player
		                    
		mov		ch, 0		                    
		mov		cl, entityCount		                   
		mov		al, 15
		mov		si, 0		 
		  
		drawEntity:            
				mov		bx, si
				mov		dx, entityX[si + bx]
				mov		bh, entityY[si]    
				mov		bl, 00000100b 
				call	drawOnMap						               
		          
				inc		si		             
		loop	drawEntity					;^ Draw entities
		                   
		lea		si, coinsStr
		mov		dh, 0
		mov		dl, 0
		mov		bl, 00001110b
		call	drawString			          

		inc		dl		                       
		mov		al, 'o'
		mov		bl, 00001110b
		mov		ch, 0
		mov		cl, coinsCollected         
		jcxz	endDrawCollectedCoins
		
		drawCollectedCoins:     
				call	drawChar
				inc		dl
		loop	drawCollectedCoins
		endDrawCollectedCoins:		 	                    
		
		mov		cl, maxCoins
		sub		cl, coinsCollected
		mov		bl, 00000000b
		jcxz	endDrawRemainingCoins		           
		           
		drawRemainingCoins:
				call	drawChar
				inc		dl      				             				             
		loop	drawRemainingCoins
		endDrawRemainingCoins: 				;^ Draw coins
				                       
		mov		al, curPage
		mov		ah, 5h	
		int		10h							;^ Change page
	             
	    ret
endp	render 
           
proc	drawOnMap		;Draws char in AL with BL symbol attributes and level background on map at (row: BH, column: DX)
		push	dx
	
	    sub		dx, offsetX
	    cmp		dx, 0
	    jl		endDrawOnMap
	    cmp		dx, 79
	    jg		endDrawOnMap
	    
	    mov		dh, bh
	    call	drawChar
	       
endDrawOnMap:	        
		pop		dx	             
		ret	             
endp	drawOnMap           
               
proc	drawChar		;Draws char in AL with BL symbol attributes and level background at (row: DH, column: DL)
		push	dx
		push	cx  
		push	bx
		push	ax
		push	bx
		push	ax
		
		mov		bh, curPage
		mov		ah, 02h
		int		10h

		mov		bh, dh
		mov		dh, 0
		add		dx, offsetX						     				            		             
		call	getBlock
		
		pop		ax
		pop		cx
		and		cl, 00001111b
		mov		bh, 0		
		
		cmp		chars[bx], ' '		                 
		je		noBackgroundChar
		mov		al, chars[bx]				          
		mov		cl, 0		                 
						                 
		noBackgroundChar:
					                
		mov		bl, colors[bx] 
		or		bl, cl
		mov		bh, curPage
		mov		ah, 09h
		mov		cx, 1    
		int		10h

		pop		ax					
		pop		bx							 			    	
		pop		cx
		pop		dx			            	            
	 	ret	           
endp	drawChar 

proc	drawString			;Draws string from SI with BL attributes beginning at (row: DH, column: DL)
		push	ax		       
		                           
drawStringLoop:
		cmp		byte ptr [si], '$'
		je		endDrawString
	
		mov		al, [si]
		call	drawChar
		inc		dl
		inc		si

		jmp		drawStringLoop
				
endDrawString:
		pop		ax             
		ret	              
endp	drawString    

proc	setBlock			;Replaces id of block located at (row: DH, column: DL) with BL
		push	bx
		push	ax
	        
		mov		al, bl	        
		call	getBlockOffset                        
		mov		level[bx], al
	        
		pop		ax	        
		pop		bx	           	
		ret	            
endp	setBlock
               
proc	getBlock			;Puts id of block located at (row: BH, column: DX) in BL
		push	ax
		push	bx
	
	  	call	getBlockOffset
		mov		bl, level[bx]   

		pop		ax
		mov		bh, ah
		pop		ax			                       	
		ret
endp	getBlock      

proc	getBlockOffset		;Puts offset from level start of block located at (row: BH, column: DX) in BX
		push	ax        
		push	dx
	
	  	mov		ah, 0				 	     
		mov		al, bh
		mov		bx, width
		mul		bx   
		pop		dx 
		mov		bx, dx
		add		bx, ax  	
		    		
		pop		ax			                       	              
		ret	            
endp	getBlockOffset
	                                                       
                  
proc	isBlockEmpty		;Sets flag ZF (1 if block located at (row: BH, column: DX) is empty) 
		call	getBlock
		cmp		bl, 0
		je 		blockIsEmpty
		                     
		cmp		bl, 3
		je		blockIsEmpty

		cmp		bl, 4
		je		blockIsEmpty  
		
		cmp		bl, 5
		je		blockIsEmpty
		                     
		ret		                
blockIsEmpty:						
		ret	
endp	isBlockEmpty                  
                            
proc	processKeys 	 
		mov		ah, 01h
		int		16h
		jnz		processKey
		ret         				      
	 
processKey:	   
		mov		ah, 00h
		int		16h
		           
		cmp		al, 'd'
		je		goRight
		
		cmp		al, 'a'
		je		goLeft		
		
		cmp		al, ' '
		je		jump           
		           
		cmp		al, 27
		je		quit			            
		ret		            
           
goLeft:                 
		mov		ax, offsetX
		cmp		playerX, ax
		jle		pkRet		    
		                
		mov		bh, playerY
		mov		dx, playerX
		dec		dx
		call	isBlockEmpty
		jne		pkRet
		
		inc		bh
		call	isBlockEmpty
		jne		pkRet		                
		                  
		mov		ax, offsetX
		add		ax, 40		                  
		cmp		playerX, ax
		jg		movePlayerLeft
		
		cmp		offsetX, 0
		jle		movePlayerLeft
		
		dec		offsetX  
		dec		playerX
		ret		               
		               
movePlayerLeft:		                
		dec		playerX
		ret           
           
goRight:              
		mov		ax, offsetX
		add		ax, 79
		cmp		playerX, ax
		jge		pkRet
                        
		mov		bh, playerY
		mov		dx, playerX
		inc		dx
		call	isBlockEmpty
		jne		pkRet
		
		inc		bh
		call	isBlockEmpty
		jne		pkRet
                              
		mov		ax, offsetX
		add		ax, 40                              
		cmp		playerX, ax
		jl		movePlayerRight   
		
		mov		ax, offsetX
		add		ax, 80
		cmp		ax, width
		jge		movePlayerRight
		
		inc		offsetX       
		inc		playerX
		ret                     
                      
movePlayerRight:                        
		inc		playerX
		ret   
		
jump:            
		mov		bh, playerY
		add		bh, 2
		mov		dx, playerX
		call	isBlockEmpty
		je		pkRet
  
  		mov		cx, 4
  		mov		bh, playerY
  		
  		jumpLoop:	
			dec		bh
			call	isBlockEmpty
			jne		pkRet   
			dec		playerY
			loop	jumpLoop
				               
		ret		
		
quit:		            
		mov		ah, 4Ch
		int		21h
		
pkRet:		    
		ret	               	             
endp	processKeys
               
proc	collectCoin				;Tries to collect coin located at (row: DH, column: DL)
		push	bx
	
		call	getBlockOffset
		cmp		level[bx], 3
		jne		notCoin
		
		mov		level[bx], 0
		inc		coinsCollected
				
notCoin:
	
		pop		bx		
		ret	
endp	collectCoin               
             
proc	checkLevelCompleted		;Checks if player reached level end (player at (row: BH, column: DX))
		push	bx
	
		call	getBlock
		cmp		bl, 4
		je		levelCompleted 
		cmp		bl, 5
		je		levelCompleted                         
		jmp		levelNotCompleted
                         
levelCompleted:                         
		lea		si, levelCompletedStr[0]
		mov		dh, 5
		mov		dl, 30
		mov		bl, 00000000b
		call	drawString                   
		
		mov cx,01Fh
        mov dx,0FFFEh
        mov  ah,86h
        int 15h
		mov ax, 0600h
        mov bh, 07h
        mov cx, 0000h
        mov dx, 184Fh
        int 10h 
                     
		mov		ah, 4Ch
		int		21h			
			  
levelNotCompleted:			      
		pop		bx
		ret			      
endp	checkLevelCompleted	             
             
proc	checkLevelFailed		;Checks if player failed level (player at (row: BH, column: DX))
		push	bx
		push	cx  
		push	si
	                            
		cmp		bh, 24
		jge		levelFailed	                            
	                            
		mov		ch, 0
		mov		cl, entityCount
		jcxz	levelNotFailed
		mov		si, 0 		                
		                
		checkEntityCollision:
				push	bx
				mov		bx, si   
				cmp		dx, entityX[bx + si]        
				pop		bx
				jne		endCheckEntityCollision		       
				       				       
				cmp		bh, entityY[si]
				je		levelFailed					  
				         
		  		endCheckEntityCollision:
		  		inc		si
		loop	checkEntityCollision  
		jmp		levelNotFailed

levelFailed:
		lea		si, levelFailedStr[0]
		mov		dh, 5
		mov		dl, 30
		mov		bl, 00000000b
		call	drawString                   
		
		
		mov cx,01Fh
        mov dx,0FFFEh
        mov  ah,86h
        int 15h
		mov ax, 0600h
        mov bh, 07h
        mov cx, 0000h
        mov dx, 184Fh
        int 10h
		              
		mov		ah, 4Ch
		int		21h					     
		
		pop		si
		pop		cx
		pop		bx    
		ret
			                    	
levelNotFailed:
		pop		si
		pop		cx
		pop		bx 
		ret	                    	
endp	checkLevelFailed             
                        
proc	moveEntity				;Moves entity with id SI
		push	bx
		push	dx
	
		mov		bx, si
		mov		dx, entityX[bx + si]
		mov		bh, entityY[si]				       
		inc		bh
    	call	isBlockEmpty
    	jne		endEntityFall
    	inc		entityY[si]
   	
endEntityFall:
		cmp		entityDir[si], 0
		je		tryMoveEntityRight
		
tryMoveEntityLeft:
		dec		bh
		dec		dx
		cmp		dx, 0
		jle		swapDirection
		call	isBlockEmpty
		jne		swapDirection
		
		mov		bx, si
		dec		entityX[bx + si]
		jmp		endMoveEntity

tryMoveEntityRight:  
		dec		bh
		inc		dx 
		cmp		dx, width
		jge		swapDirection
		call	isBlockEmpty
		jne		swapDirection
	
		mov		bx, si
		inc		entityX[bx + si]		
		jmp		endMoveEntity
		
swapDirection:
		xor		entityDir[si], 1

endMoveEntity:						
		pop		dx
		pop		bx
		ret	              
endp	moveEntity                        
                        
proc	processWorld 				         
		mov		ch, 0			                       
		mov		cl, entityCount
		mov		si, 0
		moveEntityLoop:
				call	moveEntity
				inc		si				
		loop	moveEntityLoop

		mov		dx, playerX
		mov		bh, playerY
		call	collectCoin
		call	checkLevelCompleted 
		call	checkLevelFailed
		inc		bh
		call	collectCoin
		call	checkLevelCompleted
		call	checkLevelFailed

		mov		dx, playerX			                        
		mov		bh, playerY			                        
		add		bh, 2  
		call	isBlockEmpty		           
		jne		onGround
		
		cmp		fallState, 2
		jne		nextFallState                                              
		inc		playerY	               
		mov		fallState, 0
		ret	          
		
nextFallState:
		inc		fallState
		ret                      		
		          
onGround:	                
	                
		ret	                	                	
endp	processWorld
          
end		start