; hello.red
; assumes memory is visible
	name	'hello'
site	data	text
dest	data	screen
text	data	72
	data	101
	data	108
	data	108
	data	111
	data	44
	data	32
	data	119
	data	111
	data	114
	data	108
	data	100
	data	0
loop
	jmz	@site	done
	mov	@site	@dest
	add	#1	site
	add	#1	dest
	jmp	loop
done	data	0	; die
screen
	end	start
