fungsi:
extern printf
extern scanf
push menu_pilih
    push menu
    call printf
    add esp, 8
    
    push pilihan
    push input
    call scanf
    add esp, 8
    
    call scrolling
    call erasescreen
    
    cmp dword[pilihan], 1
    je kondisi1
    cmp dword[pilihan], 2 
    je kondisi2
    cmp dword[pilihan], 3
    je kondisi3
    cmp dword[pilihan], 4
    je kondisi4
    cmp dword[pilihan], 5
    je kondisi5
    cmp dword[pilihan], 6 
    je kondisi6
    cmp dword[pilihan], 7
    je kondisi7
    cmp dword[pilihan], 8
    je kondisi8
    
kondisi_selesai:
    jmp maulagi
    jmp exit
    
kondisi1:
    push kondisi1_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi1]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi2:
    push kondisi2_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi2]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi3:
    push kondisi3_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi5]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi4:
    push kondisi4_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi4]
    fdiv
    fstp dword [hasil]
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi5:
    push kondisi5_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [kali_kondisi1]
    fmul
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi6:
    push kondisi6_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi0]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi7:
    push kondisi7_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi2]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    
kondisi8:
    push kondisi8_bil
    call printf
    add esp, 4
    
    push pilihan_kondisi
    push angka
    call scanf
    add esp, 8
    
    fld dword [pilihan_kondisi]
    fld dword [bagi_kondisi3]
    fdiv
    fstp dword [hasil]
    
    
    fld dword [hasil]
    fstp qword [hasil1]
    
    push dword [hasil1+4] 
    push dword [hasil1]
    push coba
    call printf
    add esp, 12
    
    jmp kondisi_selesai
    

scrolling:
	mov eax, 4
	mov ebx, 1
	mov ecx, setscroll
	mov edx, setscroll.len
	int 80h
	ret
	
erasescreen:
	mov eax, 4
	mov ebx, 1
	mov ecx, seterasescreen
	mov edx, seterasescreen.len
	int 80h
	ret

maulagi:
    push basabasi2
    call printf
    add esp, 4
    
    push ulangi
    push input_ulang
    call scanf
    add esp, 8
    
    call scrolling
    call erasescreen 
    
    cmp dword[ulangi], 1
    je main
    jmp exit