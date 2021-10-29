#Lab 1, written by Caitlynn Jones & Timothy Gedney
#Reads in fixed point number, uses binary search to get square root of integer 
#outputs fixed point number up to hundred thousandths place in decimal

#take in number
li a7, 5 #sets syscall as 5, take input
li a0, 0 #a0 is where the input will go
ecall

#register a0 has number
mv t1 a0 #assigns value of a0 number to t1

li t2, 4194304 #first guess, 256 converted to fixed point
li t3, 2097152 #first step, 128 converted to fixed point

loop:
mul t4, t2, t2 #squares first guess and stores in t4
mulhu t5, t2, t2 #squares the step and stores in t5
srli t4, t4, 14 #shifts t4 right by 14 bits
slli t5, t5, 18 #shifts t5 left by 18 bits
or t6,t4, t5 #logical or's t4 and t5 & puts into t6
beq t6, t1, exit #if guess == input, exit
blt t6, t1, if #if t6<t1, go to is label (squared guess < input)
bge t6, t1, else #if t6>=t1 go to else label (squared guess >= input)

back:
srli t3, t3, 1
beqz t3, exit #if t3 == 0, exit
j loop

if:
add t2, t2, t3 #adds guess and step and stores in t2
j back

else:
sub t2, t2, t3 #subtracts guess and step and stores in t2
j back

exit:
#display input on console
li a7 1 #syscall 1
mv a0 t2
ecall

li a7, 10 #exits program
ecall
