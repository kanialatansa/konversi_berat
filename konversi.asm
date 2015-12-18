%include "fungsi.asm" 
extern printf
extern scanf

section .data
    menu db "===================================",10
         db " **Program konversi satuan berat** ",10
         db "===================================",10
         db "===================================",10
         db "  Kania Latansa Arzia (G64154043)  ",10
         db "  Dyah Nurlita S      (G64154055)  ",10
         db "===================================",10
         db "Konversi Satuan Berat",10
         db "1. Gram ke Ons",10
         db "2. Gram ke Kilogram",10
         db "3. Gram ke Kwintal",10
         db "4. Gram ke Ton",10
         db "5. Ons ke Gram",10
         db "6. Ons ke Kilogram",10
         db "7. Ons ke Kwintal",10
         db "8. Ons ke Ton",10
         db "==================================",10
        
    
    menu_pilih      db "Pilih Konversi : ", 0
    kondisi1_bil    db "Konversi Gram ke Ons", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi2_bil    db "Konversi Gram ke Kilogram", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi3_bil    db "Konversi Gram ke Kwintal", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi4_bil    db "Konversi Gram ke Ton", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi5_bil    db "Konversi Ons ke Gram", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi6_bil    db "Konversi Ons ke Kilogram", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi7_bil    db "Konversi Ons ke Kwintal", 10
                    db "Masukkan Satuan Berat : ", 0
                    
    kondisi8_bil    db "Konversi Ons ke Ton", 10
                    db "Masukkan Satuan Berat : ", 0
    input         db  "%d",0
    input_ulang   db  "%d",0
    angka         db "%f",0
    bagi_kondisi0 dd 10.0
    bagi_kondisi1 dd 100.0
    bagi_kondisi2 dd 1000.0
    bagi_kondisi3 dd 10000.0
    bagi_kondisi4 dd 1000000.0
    bagi_kondisi5 dd 100000.0
    kali_kondisi1 dd 100.0
    kali_kondisi2 dd 1000.0
    kali_kondisi3 dd 10000.0
    coba          db "Hasil Konversi = %.3f",10,0
    
    basabasi2       db "Balik ke Menu ? ", 10
                    db "1. Ya", 10
                    db "2. Tidak", 10, 0
    
    setscroll		db		1Bh, '[r'
		.len		equ		$ - setscroll
	seterasescreen	db		1Bh, '[2J'
		.len		equ		$ - seterasescreen

                    
                    
section .bss
   pilihan resd 1
   pilihan_kondisi resd 1
   hasil resd 1
   hasil1 resq 1    ;buat nyetak ke floating point
   simpan_pilihan_kondisi resq 1
   simpan_bagi_kondisi resq 1
   ulangi  resd 1
   
    
section .text
    global main
    
main:
    call fungsi
    
exit:
    