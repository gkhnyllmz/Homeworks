
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b38 <_init>:
  400b38:	48 83 ec 08          	sub    $0x8,%rsp
  400b3c:	48 8b 05 b5 34 20 00 	mov    0x2034b5(%rip),%rax        # 603ff8 <__gmon_start__>
  400b43:	48 85 c0             	test   %rax,%rax
  400b46:	74 05                	je     400b4d <_init+0x15>
  400b48:	e8 f3 01 00 00       	callq  400d40 <__gmon_start__@plt>
  400b4d:	48 83 c4 08          	add    $0x8,%rsp
  400b51:	c3                   	retq   

Disassembly of section .plt:

0000000000400b60 <.plt>:
  400b60:	ff 35 a2 34 20 00    	pushq  0x2034a2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b66:	ff 25 a4 34 20 00    	jmpq   *0x2034a4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b70 <__strcat_chk@plt>:
  400b70:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604018 <__strcat_chk@GLIBC_2.3.4>
  400b76:	68 00 00 00 00       	pushq  $0x0
  400b7b:	e9 e0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400b80 <getenv@plt>:
  400b80:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604020 <getenv@GLIBC_2.2.5>
  400b86:	68 01 00 00 00       	pushq  $0x1
  400b8b:	e9 d0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400b90 <strcasecmp@plt>:
  400b90:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604028 <strcasecmp@GLIBC_2.2.5>
  400b96:	68 02 00 00 00       	pushq  $0x2
  400b9b:	e9 c0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400ba0 <__errno_location@plt>:
  400ba0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604030 <__errno_location@GLIBC_2.2.5>
  400ba6:	68 03 00 00 00       	pushq  $0x3
  400bab:	e9 b0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bb0 <strcpy@plt>:
  400bb0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400bb6:	68 04 00 00 00       	pushq  $0x4
  400bbb:	e9 a0 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bc0 <puts@plt>:
  400bc0:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400bc6:	68 05 00 00 00       	pushq  $0x5
  400bcb:	e9 90 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bd0 <write@plt>:
  400bd0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604048 <write@GLIBC_2.2.5>
  400bd6:	68 06 00 00 00       	pushq  $0x6
  400bdb:	e9 80 ff ff ff       	jmpq   400b60 <.plt>

0000000000400be0 <__stack_chk_fail@plt>:
  400be0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604050 <__stack_chk_fail@GLIBC_2.4>
  400be6:	68 07 00 00 00       	pushq  $0x7
  400beb:	e9 70 ff ff ff       	jmpq   400b60 <.plt>

0000000000400bf0 <alarm@plt>:
  400bf0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604058 <alarm@GLIBC_2.2.5>
  400bf6:	68 08 00 00 00       	pushq  $0x8
  400bfb:	e9 60 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c00 <close@plt>:
  400c00:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604060 <close@GLIBC_2.2.5>
  400c06:	68 09 00 00 00       	pushq  $0x9
  400c0b:	e9 50 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c10 <read@plt>:
  400c10:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604068 <read@GLIBC_2.2.5>
  400c16:	68 0a 00 00 00       	pushq  $0xa
  400c1b:	e9 40 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c20 <__libc_start_main@plt>:
  400c20:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604070 <__libc_start_main@GLIBC_2.2.5>
  400c26:	68 0b 00 00 00       	pushq  $0xb
  400c2b:	e9 30 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c30 <fgets@plt>:
  400c30:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604078 <fgets@GLIBC_2.2.5>
  400c36:	68 0c 00 00 00       	pushq  $0xc
  400c3b:	e9 20 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c40 <signal@plt>:
  400c40:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604080 <signal@GLIBC_2.2.5>
  400c46:	68 0d 00 00 00       	pushq  $0xd
  400c4b:	e9 10 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c50 <gethostbyname@plt>:
  400c50:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604088 <gethostbyname@GLIBC_2.2.5>
  400c56:	68 0e 00 00 00       	pushq  $0xe
  400c5b:	e9 00 ff ff ff       	jmpq   400b60 <.plt>

0000000000400c60 <__memmove_chk@plt>:
  400c60:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604090 <__memmove_chk@GLIBC_2.3.4>
  400c66:	68 0f 00 00 00       	pushq  $0xf
  400c6b:	e9 f0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c70 <strtol@plt>:
  400c70:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604098 <strtol@GLIBC_2.2.5>
  400c76:	68 10 00 00 00       	pushq  $0x10
  400c7b:	e9 e0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c80 <fflush@plt>:
  400c80:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040a0 <fflush@GLIBC_2.2.5>
  400c86:	68 11 00 00 00       	pushq  $0x11
  400c8b:	e9 d0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400c90 <__isoc99_sscanf@plt>:
  400c90:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040a8 <__isoc99_sscanf@GLIBC_2.7>
  400c96:	68 12 00 00 00       	pushq  $0x12
  400c9b:	e9 c0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400ca0 <__printf_chk@plt>:
  400ca0:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040b0 <__printf_chk@GLIBC_2.3.4>
  400ca6:	68 13 00 00 00       	pushq  $0x13
  400cab:	e9 b0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cb0 <fopen@plt>:
  400cb0:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 6040b8 <fopen@GLIBC_2.2.5>
  400cb6:	68 14 00 00 00       	pushq  $0x14
  400cbb:	e9 a0 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cc0 <gethostname@plt>:
  400cc0:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 6040c0 <gethostname@GLIBC_2.2.5>
  400cc6:	68 15 00 00 00       	pushq  $0x15
  400ccb:	e9 90 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cd0 <exit@plt>:
  400cd0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 6040c8 <exit@GLIBC_2.2.5>
  400cd6:	68 16 00 00 00       	pushq  $0x16
  400cdb:	e9 80 fe ff ff       	jmpq   400b60 <.plt>

0000000000400ce0 <connect@plt>:
  400ce0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040d0 <connect@GLIBC_2.2.5>
  400ce6:	68 17 00 00 00       	pushq  $0x17
  400ceb:	e9 70 fe ff ff       	jmpq   400b60 <.plt>

0000000000400cf0 <__fprintf_chk@plt>:
  400cf0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040d8 <__fprintf_chk@GLIBC_2.3.4>
  400cf6:	68 18 00 00 00       	pushq  $0x18
  400cfb:	e9 60 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d00 <sleep@plt>:
  400d00:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040e0 <sleep@GLIBC_2.2.5>
  400d06:	68 19 00 00 00       	pushq  $0x19
  400d0b:	e9 50 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d10 <__ctype_b_loc@plt>:
  400d10:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040e8 <__ctype_b_loc@GLIBC_2.3>
  400d16:	68 1a 00 00 00       	pushq  $0x1a
  400d1b:	e9 40 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d20 <__sprintf_chk@plt>:
  400d20:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040f0 <__sprintf_chk@GLIBC_2.3.4>
  400d26:	68 1b 00 00 00       	pushq  $0x1b
  400d2b:	e9 30 fe ff ff       	jmpq   400b60 <.plt>

0000000000400d30 <socket@plt>:
  400d30:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040f8 <socket@GLIBC_2.2.5>
  400d36:	68 1c 00 00 00       	pushq  $0x1c
  400d3b:	e9 20 fe ff ff       	jmpq   400b60 <.plt>

Disassembly of section .plt.got:

0000000000400d40 <__gmon_start__@plt>:
  400d40:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 603ff8 <__gmon_start__>
  400d46:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d50 <_start>:
  400d50:	31 ed                	xor    %ebp,%ebp
  400d52:	49 89 d1             	mov    %rdx,%r9
  400d55:	5e                   	pop    %rsi
  400d56:	48 89 e2             	mov    %rsp,%rdx
  400d59:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d5d:	50                   	push   %rax
  400d5e:	54                   	push   %rsp
  400d5f:	49 c7 c0 50 26 40 00 	mov    $0x402650,%r8
  400d66:	48 c7 c1 e0 25 40 00 	mov    $0x4025e0,%rcx
  400d6d:	48 c7 c7 46 0e 40 00 	mov    $0x400e46,%rdi
  400d74:	e8 a7 fe ff ff       	callq  400c20 <__libc_start_main@plt>
  400d79:	f4                   	hlt    
  400d7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d80 <deregister_tm_clones>:
  400d80:	b8 87 47 60 00       	mov    $0x604787,%eax
  400d85:	55                   	push   %rbp
  400d86:	48 2d 80 47 60 00    	sub    $0x604780,%rax
  400d8c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d90:	48 89 e5             	mov    %rsp,%rbp
  400d93:	76 1b                	jbe    400db0 <deregister_tm_clones+0x30>
  400d95:	b8 00 00 00 00       	mov    $0x0,%eax
  400d9a:	48 85 c0             	test   %rax,%rax
  400d9d:	74 11                	je     400db0 <deregister_tm_clones+0x30>
  400d9f:	5d                   	pop    %rbp
  400da0:	bf 80 47 60 00       	mov    $0x604780,%edi
  400da5:	ff e0                	jmpq   *%rax
  400da7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400dae:	00 00 
  400db0:	5d                   	pop    %rbp
  400db1:	c3                   	retq   
  400db2:	0f 1f 40 00          	nopl   0x0(%rax)
  400db6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400dbd:	00 00 00 

0000000000400dc0 <register_tm_clones>:
  400dc0:	be 80 47 60 00       	mov    $0x604780,%esi
  400dc5:	55                   	push   %rbp
  400dc6:	48 81 ee 80 47 60 00 	sub    $0x604780,%rsi
  400dcd:	48 c1 fe 03          	sar    $0x3,%rsi
  400dd1:	48 89 e5             	mov    %rsp,%rbp
  400dd4:	48 89 f0             	mov    %rsi,%rax
  400dd7:	48 c1 e8 3f          	shr    $0x3f,%rax
  400ddb:	48 01 c6             	add    %rax,%rsi
  400dde:	48 d1 fe             	sar    %rsi
  400de1:	74 15                	je     400df8 <register_tm_clones+0x38>
  400de3:	b8 00 00 00 00       	mov    $0x0,%eax
  400de8:	48 85 c0             	test   %rax,%rax
  400deb:	74 0b                	je     400df8 <register_tm_clones+0x38>
  400ded:	5d                   	pop    %rbp
  400dee:	bf 80 47 60 00       	mov    $0x604780,%edi
  400df3:	ff e0                	jmpq   *%rax
  400df5:	0f 1f 00             	nopl   (%rax)
  400df8:	5d                   	pop    %rbp
  400df9:	c3                   	retq   
  400dfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e00 <__do_global_dtors_aux>:
  400e00:	80 3d a1 39 20 00 00 	cmpb   $0x0,0x2039a1(%rip)        # 6047a8 <completed.7594>
  400e07:	75 11                	jne    400e1a <__do_global_dtors_aux+0x1a>
  400e09:	55                   	push   %rbp
  400e0a:	48 89 e5             	mov    %rsp,%rbp
  400e0d:	e8 6e ff ff ff       	callq  400d80 <deregister_tm_clones>
  400e12:	5d                   	pop    %rbp
  400e13:	c6 05 8e 39 20 00 01 	movb   $0x1,0x20398e(%rip)        # 6047a8 <completed.7594>
  400e1a:	f3 c3                	repz retq 
  400e1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e20 <frame_dummy>:
  400e20:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400e25:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e29:	75 05                	jne    400e30 <frame_dummy+0x10>
  400e2b:	eb 93                	jmp    400dc0 <register_tm_clones>
  400e2d:	0f 1f 00             	nopl   (%rax)
  400e30:	b8 00 00 00 00       	mov    $0x0,%eax
  400e35:	48 85 c0             	test   %rax,%rax
  400e38:	74 f1                	je     400e2b <frame_dummy+0xb>
  400e3a:	55                   	push   %rbp
  400e3b:	48 89 e5             	mov    %rsp,%rbp
  400e3e:	ff d0                	callq  *%rax
  400e40:	5d                   	pop    %rbp
  400e41:	e9 7a ff ff ff       	jmpq   400dc0 <register_tm_clones>

0000000000400e46 <main>:
  400e46:	53                   	push   %rbx
  400e47:	83 ff 01             	cmp    $0x1,%edi
  400e4a:	75 10                	jne    400e5c <main+0x16>
  400e4c:	48 8b 05 3d 39 20 00 	mov    0x20393d(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  400e53:	48 89 05 56 39 20 00 	mov    %rax,0x203956(%rip)        # 6047b0 <infile>
  400e5a:	eb 63                	jmp    400ebf <main+0x79>
  400e5c:	48 89 f3             	mov    %rsi,%rbx
  400e5f:	83 ff 02             	cmp    $0x2,%edi
  400e62:	75 3a                	jne    400e9e <main+0x58>
  400e64:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e68:	be d6 2e 40 00       	mov    $0x402ed6,%esi
  400e6d:	e8 3e fe ff ff       	callq  400cb0 <fopen@plt>
  400e72:	48 89 05 37 39 20 00 	mov    %rax,0x203937(%rip)        # 6047b0 <infile>
  400e79:	48 85 c0             	test   %rax,%rax
  400e7c:	75 41                	jne    400ebf <main+0x79>
  400e7e:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e82:	48 8b 13             	mov    (%rbx),%rdx
  400e85:	be 64 26 40 00       	mov    $0x402664,%esi
  400e8a:	bf 01 00 00 00       	mov    $0x1,%edi
  400e8f:	e8 0c fe ff ff       	callq  400ca0 <__printf_chk@plt>
  400e94:	bf 08 00 00 00       	mov    $0x8,%edi
  400e99:	e8 32 fe ff ff       	callq  400cd0 <exit@plt>
  400e9e:	48 8b 16             	mov    (%rsi),%rdx
  400ea1:	be 81 26 40 00       	mov    $0x402681,%esi
  400ea6:	bf 01 00 00 00       	mov    $0x1,%edi
  400eab:	b8 00 00 00 00       	mov    $0x0,%eax
  400eb0:	e8 eb fd ff ff       	callq  400ca0 <__printf_chk@plt>
  400eb5:	bf 08 00 00 00       	mov    $0x8,%edi
  400eba:	e8 11 fe ff ff       	callq  400cd0 <exit@plt>
  400ebf:	e8 c3 06 00 00       	callq  401587 <initialize_bomb>
  400ec4:	bf e8 26 40 00       	mov    $0x4026e8,%edi
  400ec9:	e8 f2 fc ff ff       	callq  400bc0 <puts@plt>
  400ece:	bf 28 27 40 00       	mov    $0x402728,%edi
  400ed3:	e8 e8 fc ff ff       	callq  400bc0 <puts@plt>
  400ed8:	e8 8c 09 00 00       	callq  401869 <read_line>
  400edd:	48 89 c7             	mov    %rax,%rdi
  400ee0:	e8 98 00 00 00       	callq  400f7d <phase_1>
  400ee5:	e8 a5 0a 00 00       	callq  40198f <phase_defused>
  400eea:	bf 58 27 40 00       	mov    $0x402758,%edi
  400eef:	e8 cc fc ff ff       	callq  400bc0 <puts@plt>
  400ef4:	e8 70 09 00 00       	callq  401869 <read_line>
  400ef9:	48 89 c7             	mov    %rax,%rdi
  400efc:	e8 fe 00 00 00       	callq  400fff <phase_2>
  400f01:	e8 89 0a 00 00       	callq  40198f <phase_defused>
  400f06:	bf 9b 26 40 00       	mov    $0x40269b,%edi
  400f0b:	e8 b0 fc ff ff       	callq  400bc0 <puts@plt>
  400f10:	e8 54 09 00 00       	callq  401869 <read_line>
  400f15:	48 89 c7             	mov    %rax,%rdi
  400f18:	e8 4b 01 00 00       	callq  401068 <phase_3>
  400f1d:	e8 6d 0a 00 00       	callq  40198f <phase_defused>
  400f22:	bf b9 26 40 00       	mov    $0x4026b9,%edi
  400f27:	e8 94 fc ff ff       	callq  400bc0 <puts@plt>
  400f2c:	e8 38 09 00 00       	callq  401869 <read_line>
  400f31:	48 89 c7             	mov    %rax,%rdi
  400f34:	e8 11 02 00 00       	callq  40114a <phase_4>
  400f39:	e8 51 0a 00 00       	callq  40198f <phase_defused>
  400f3e:	bf 88 27 40 00       	mov    $0x402788,%edi
  400f43:	e8 78 fc ff ff       	callq  400bc0 <puts@plt>
  400f48:	e8 1c 09 00 00       	callq  401869 <read_line>
  400f4d:	48 89 c7             	mov    %rax,%rdi
  400f50:	e8 6e 02 00 00       	callq  4011c3 <phase_5>
  400f55:	e8 35 0a 00 00       	callq  40198f <phase_defused>
  400f5a:	bf c8 26 40 00       	mov    $0x4026c8,%edi
  400f5f:	e8 5c fc ff ff       	callq  400bc0 <puts@plt>
  400f64:	e8 00 09 00 00       	callq  401869 <read_line>
  400f69:	48 89 c7             	mov    %rax,%rdi
  400f6c:	e8 d7 02 00 00       	callq  401248 <phase_6>
  400f71:	e8 19 0a 00 00       	callq  40198f <phase_defused>
  400f76:	b8 00 00 00 00       	mov    $0x0,%eax
  400f7b:	5b                   	pop    %rbx
  400f7c:	c3                   	retq   

0000000000400f7d <phase_1>:
  400f7d:	53                   	push   %rbx
  400f7e:	48 83 ec 60          	sub    $0x60,%rsp
  400f82:	48 89 fb             	mov    %rdi,%rbx
  400f85:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f8c:	00 00 
  400f8e:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  400f93:	31 c0                	xor    %eax,%eax
  400f95:	48 b8 54 68 65 20 74 	movabs $0x7478657420656854,%rax
  400f9c:	65 78 74 
  400f9f:	48 89 04 24          	mov    %rax,(%rsp)
  400fa3:	48 c7 44 24 08 20 69 	movq   $0x20736920,0x8(%rsp)
  400faa:	73 20 
  400fac:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  400fb1:	b9 08 00 00 00       	mov    $0x8,%ecx
  400fb6:	b8 00 00 00 00       	mov    $0x0,%eax
  400fbb:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  400fbe:	ba 50 00 00 00       	mov    $0x50,%edx
  400fc3:	be ac 27 40 00       	mov    $0x4027ac,%esi
  400fc8:	48 89 e7             	mov    %rsp,%rdi
  400fcb:	e8 a0 fb ff ff       	callq  400b70 <__strcat_chk@plt>
  400fd0:	48 89 e6             	mov    %rsp,%rsi
  400fd3:	48 89 df             	mov    %rbx,%rdi
  400fd6:	e8 29 05 00 00       	callq  401504 <strings_not_equal>
  400fdb:	85 c0                	test   %eax,%eax
  400fdd:	74 05                	je     400fe4 <phase_1+0x67>
  400fdf:	e8 10 08 00 00       	callq  4017f4 <explode_bomb>
  400fe4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  400fe9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  400ff0:	00 00 
  400ff2:	74 05                	je     400ff9 <phase_1+0x7c>
  400ff4:	e8 e7 fb ff ff       	callq  400be0 <__stack_chk_fail@plt>
  400ff9:	48 83 c4 60          	add    $0x60,%rsp
  400ffd:	5b                   	pop    %rbx
  400ffe:	c3                   	retq   

0000000000400fff <phase_2>:
  400fff:	55                   	push   %rbp
  401000:	53                   	push   %rbx
  401001:	48 83 ec 28          	sub    $0x28,%rsp
  401005:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40100c:	00 00 
  40100e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  401013:	31 c0                	xor    %eax,%eax
  401015:	48 89 e6             	mov    %rsp,%rsi
  401018:	e8 0d 08 00 00       	callq  40182a <read_six_numbers>
  40101d:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  401021:	79 05                	jns    401028 <phase_2+0x29>
  401023:	e8 cc 07 00 00       	callq  4017f4 <explode_bomb>
  401028:	48 89 e5             	mov    %rsp,%rbp
  40102b:	bb 01 00 00 00       	mov    $0x1,%ebx
  401030:	89 d8                	mov    %ebx,%eax
  401032:	0f af 45 00          	imul   0x0(%rbp),%eax
  401036:	39 45 04             	cmp    %eax,0x4(%rbp)
  401039:	74 05                	je     401040 <phase_2+0x41>
  40103b:	e8 b4 07 00 00       	callq  4017f4 <explode_bomb>
  401040:	83 c3 01             	add    $0x1,%ebx
  401043:	48 83 c5 04          	add    $0x4,%rbp
  401047:	83 fb 06             	cmp    $0x6,%ebx
  40104a:	75 e4                	jne    401030 <phase_2+0x31>
  40104c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  401051:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401058:	00 00 
  40105a:	74 05                	je     401061 <phase_2+0x62>
  40105c:	e8 7f fb ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401061:	48 83 c4 28          	add    $0x28,%rsp
  401065:	5b                   	pop    %rbx
  401066:	5d                   	pop    %rbp
  401067:	c3                   	retq   

0000000000401068 <phase_3>:
  401068:	48 83 ec 28          	sub    $0x28,%rsp
  40106c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401073:	00 00 
  401075:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40107a:	31 c0                	xor    %eax,%eax
  40107c:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
  401081:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  401086:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40108b:	be a2 2a 40 00       	mov    $0x402aa2,%esi
  401090:	e8 fb fb ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401095:	83 f8 02             	cmp    $0x2,%eax
  401098:	7f 05                	jg     40109f <phase_3+0x37>
  40109a:	e8 55 07 00 00       	callq  4017f4 <explode_bomb>
  40109f:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  4010a4:	77 3c                	ja     4010e2 <phase_3+0x7a>
  4010a6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4010aa:	ff 24 c5 e0 27 40 00 	jmpq   *0x4027e0(,%rax,8)
  4010b1:	be 85 02 00 00       	mov    $0x285,%esi
  4010b6:	eb 3b                	jmp    4010f3 <phase_3+0x8b>
  4010b8:	be 95 01 00 00       	mov    $0x195,%esi
  4010bd:	eb 34                	jmp    4010f3 <phase_3+0x8b>
  4010bf:	be 4d 00 00 00       	mov    $0x4d,%esi
  4010c4:	eb 2d                	jmp    4010f3 <phase_3+0x8b>
  4010c6:	be 69 01 00 00       	mov    $0x169,%esi
  4010cb:	eb 26                	jmp    4010f3 <phase_3+0x8b>
  4010cd:	be 58 01 00 00       	mov    $0x158,%esi
  4010d2:	eb 1f                	jmp    4010f3 <phase_3+0x8b>
  4010d4:	be 75 03 00 00       	mov    $0x375,%esi
  4010d9:	eb 18                	jmp    4010f3 <phase_3+0x8b>
  4010db:	be 37 02 00 00       	mov    $0x237,%esi
  4010e0:	eb 11                	jmp    4010f3 <phase_3+0x8b>
  4010e2:	e8 0d 07 00 00       	callq  4017f4 <explode_bomb>
  4010e7:	be 00 00 00 00       	mov    $0x0,%esi
  4010ec:	eb 05                	jmp    4010f3 <phase_3+0x8b>
  4010ee:	be 09 01 00 00       	mov    $0x109,%esi
  4010f3:	8b 54 24 10          	mov    0x10(%rsp),%edx
  4010f7:	8b 7c 24 14          	mov    0x14(%rsp),%edi
  4010fb:	e8 b0 03 00 00       	callq  4014b0 <check_substraction_equal>
  401100:	85 c0                	test   %eax,%eax
  401102:	75 05                	jne    401109 <phase_3+0xa1>
  401104:	e8 eb 06 00 00       	callq  4017f4 <explode_bomb>
  401109:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40110e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401115:	00 00 
  401117:	74 05                	je     40111e <phase_3+0xb6>
  401119:	e8 c2 fa ff ff       	callq  400be0 <__stack_chk_fail@plt>
  40111e:	48 83 c4 28          	add    $0x28,%rsp
  401122:	c3                   	retq   

0000000000401123 <func4>:
  401123:	83 ff 01             	cmp    $0x1,%edi
  401126:	7f 0c                	jg     401134 <func4+0x11>
  401128:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40112e:	b8 01 00 00 00       	mov    $0x1,%eax
  401133:	c3                   	retq   
  401134:	53                   	push   %rbx
  401135:	48 89 f3             	mov    %rsi,%rbx
  401138:	83 ef 01             	sub    $0x1,%edi
  40113b:	e8 e3 ff ff ff       	callq  401123 <func4>
  401140:	89 c2                	mov    %eax,%edx
  401142:	03 13                	add    (%rbx),%edx
  401144:	89 03                	mov    %eax,(%rbx)
  401146:	89 d0                	mov    %edx,%eax
  401148:	5b                   	pop    %rbx
  401149:	c3                   	retq   

000000000040114a <phase_4>:
  40114a:	48 83 ec 28          	sub    $0x28,%rsp
  40114e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401155:	00 00 
  401157:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40115c:	31 c0                	xor    %eax,%eax
  40115e:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  401163:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401168:	be a5 2a 40 00       	mov    $0x402aa5,%esi
  40116d:	e8 1e fb ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401172:	83 f8 02             	cmp    $0x2,%eax
  401175:	75 0c                	jne    401183 <phase_4+0x39>
  401177:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40117b:	83 e8 01             	sub    $0x1,%eax
  40117e:	83 f8 13             	cmp    $0x13,%eax
  401181:	76 05                	jbe    401188 <phase_4+0x3e>
  401183:	e8 6c 06 00 00       	callq  4017f4 <explode_bomb>
  401188:	48 8d 74 24 14       	lea    0x14(%rsp),%rsi
  40118d:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  401191:	e8 8d ff ff ff       	callq  401123 <func4>
  401196:	83 7c 24 14 0d       	cmpl   $0xd,0x14(%rsp)
  40119b:	75 07                	jne    4011a4 <phase_4+0x5a>
  40119d:	83 7c 24 10 0d       	cmpl   $0xd,0x10(%rsp)
  4011a2:	74 05                	je     4011a9 <phase_4+0x5f>
  4011a4:	e8 4b 06 00 00       	callq  4017f4 <explode_bomb>
  4011a9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4011ae:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011b5:	00 00 
  4011b7:	74 05                	je     4011be <phase_4+0x74>
  4011b9:	e8 22 fa ff ff       	callq  400be0 <__stack_chk_fail@plt>
  4011be:	48 83 c4 28          	add    $0x28,%rsp
  4011c2:	c3                   	retq   

00000000004011c3 <phase_5>:
  4011c3:	55                   	push   %rbp
  4011c4:	53                   	push   %rbx
  4011c5:	48 83 ec 18          	sub    $0x18,%rsp
  4011c9:	48 89 fd             	mov    %rdi,%rbp
  4011cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4011d3:	00 00 
  4011d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4011da:	31 c0                	xor    %eax,%eax
  4011dc:	e8 95 02 00 00       	callq  401476 <string_length>
  4011e1:	83 f8 06             	cmp    $0x6,%eax
  4011e4:	74 05                	je     4011eb <phase_5+0x28>
  4011e6:	e8 09 06 00 00       	callq  4017f4 <explode_bomb>
  4011eb:	bb 00 00 00 00       	mov    $0x0,%ebx
  4011f0:	0f be 7c 1d 00       	movsbl 0x0(%rbp,%rbx,1),%edi
  4011f5:	e8 71 03 00 00       	callq  40156b <from_char_to_int>
  4011fa:	83 e0 0f             	and    $0xf,%eax
  4011fd:	0f b6 80 20 28 40 00 	movzbl 0x402820(%rax),%eax
  401204:	88 04 1c             	mov    %al,(%rsp,%rbx,1)
  401207:	48 83 c3 01          	add    $0x1,%rbx
  40120b:	48 83 fb 06          	cmp    $0x6,%rbx
  40120f:	75 df                	jne    4011f0 <phase_5+0x2d>
  401211:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  401216:	be ca 27 40 00       	mov    $0x4027ca,%esi
  40121b:	48 89 e7             	mov    %rsp,%rdi
  40121e:	e8 e1 02 00 00       	callq  401504 <strings_not_equal>
  401223:	85 c0                	test   %eax,%eax
  401225:	74 05                	je     40122c <phase_5+0x69>
  401227:	e8 c8 05 00 00       	callq  4017f4 <explode_bomb>
  40122c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401231:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401238:	00 00 
  40123a:	74 05                	je     401241 <phase_5+0x7e>
  40123c:	e8 9f f9 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401241:	48 83 c4 18          	add    $0x18,%rsp
  401245:	5b                   	pop    %rbx
  401246:	5d                   	pop    %rbp
  401247:	c3                   	retq   

0000000000401248 <phase_6>:
  401248:	41 55                	push   %r13
  40124a:	41 54                	push   %r12
  40124c:	55                   	push   %rbp
  40124d:	53                   	push   %rbx
  40124e:	48 83 ec 68          	sub    $0x68,%rsp
  401252:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401259:	00 00 
  40125b:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  401260:	31 c0                	xor    %eax,%eax
  401262:	48 89 e6             	mov    %rsp,%rsi
  401265:	e8 c0 05 00 00       	callq  40182a <read_six_numbers>
  40126a:	49 89 e4             	mov    %rsp,%r12
  40126d:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401273:	4c 89 e5             	mov    %r12,%rbp
  401276:	41 8b 04 24          	mov    (%r12),%eax
  40127a:	83 e8 01             	sub    $0x1,%eax
  40127d:	83 f8 05             	cmp    $0x5,%eax
  401280:	76 05                	jbe    401287 <phase_6+0x3f>
  401282:	e8 6d 05 00 00       	callq  4017f4 <explode_bomb>
  401287:	41 83 c5 01          	add    $0x1,%r13d
  40128b:	41 83 fd 06          	cmp    $0x6,%r13d
  40128f:	74 3d                	je     4012ce <phase_6+0x86>
  401291:	44 89 eb             	mov    %r13d,%ebx
  401294:	48 63 c3             	movslq %ebx,%rax
  401297:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  40129a:	39 45 00             	cmp    %eax,0x0(%rbp)
  40129d:	75 05                	jne    4012a4 <phase_6+0x5c>
  40129f:	e8 50 05 00 00       	callq  4017f4 <explode_bomb>
  4012a4:	83 c3 01             	add    $0x1,%ebx
  4012a7:	83 fb 05             	cmp    $0x5,%ebx
  4012aa:	7e e8                	jle    401294 <phase_6+0x4c>
  4012ac:	49 83 c4 04          	add    $0x4,%r12
  4012b0:	eb c1                	jmp    401273 <phase_6+0x2b>
  4012b2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4012b6:	83 c0 01             	add    $0x1,%eax
  4012b9:	39 c8                	cmp    %ecx,%eax
  4012bb:	75 f5                	jne    4012b2 <phase_6+0x6a>
  4012bd:	48 89 54 74 20       	mov    %rdx,0x20(%rsp,%rsi,2)
  4012c2:	48 83 c6 04          	add    $0x4,%rsi
  4012c6:	48 83 fe 18          	cmp    $0x18,%rsi
  4012ca:	75 07                	jne    4012d3 <phase_6+0x8b>
  4012cc:	eb 19                	jmp    4012e7 <phase_6+0x9f>
  4012ce:	be 00 00 00 00       	mov    $0x0,%esi
  4012d3:	8b 0c 34             	mov    (%rsp,%rsi,1),%ecx
  4012d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4012db:	ba f0 42 60 00       	mov    $0x6042f0,%edx
  4012e0:	83 f9 01             	cmp    $0x1,%ecx
  4012e3:	7f cd                	jg     4012b2 <phase_6+0x6a>
  4012e5:	eb d6                	jmp    4012bd <phase_6+0x75>
  4012e7:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  4012ec:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4012f1:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
  4012f6:	48 89 d9             	mov    %rbx,%rcx
  4012f9:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4012fd:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401301:	48 83 c0 08          	add    $0x8,%rax
  401305:	48 89 d1             	mov    %rdx,%rcx
  401308:	48 39 f0             	cmp    %rsi,%rax
  40130b:	75 ec                	jne    4012f9 <phase_6+0xb1>
  40130d:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  401314:	00 
  401315:	bd 00 00 00 00       	mov    $0x0,%ebp
  40131a:	40 f6 c5 01          	test   $0x1,%bpl
  40131e:	75 11                	jne    401331 <phase_6+0xe9>
  401320:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401324:	8b 00                	mov    (%rax),%eax
  401326:	39 03                	cmp    %eax,(%rbx)
  401328:	7d 16                	jge    401340 <phase_6+0xf8>
  40132a:	e8 c5 04 00 00       	callq  4017f4 <explode_bomb>
  40132f:	eb 0f                	jmp    401340 <phase_6+0xf8>
  401331:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401335:	8b 00                	mov    (%rax),%eax
  401337:	39 03                	cmp    %eax,(%rbx)
  401339:	7e 05                	jle    401340 <phase_6+0xf8>
  40133b:	e8 b4 04 00 00       	callq  4017f4 <explode_bomb>
  401340:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401344:	83 c5 01             	add    $0x1,%ebp
  401347:	83 fd 05             	cmp    $0x5,%ebp
  40134a:	75 ce                	jne    40131a <phase_6+0xd2>
  40134c:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  401351:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401358:	00 00 
  40135a:	74 05                	je     401361 <phase_6+0x119>
  40135c:	e8 7f f8 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401361:	48 83 c4 68          	add    $0x68,%rsp
  401365:	5b                   	pop    %rbx
  401366:	5d                   	pop    %rbp
  401367:	41 5c                	pop    %r12
  401369:	41 5d                	pop    %r13
  40136b:	c3                   	retq   

000000000040136c <fun7>:
  40136c:	48 83 ec 08          	sub    $0x8,%rsp
  401370:	48 85 ff             	test   %rdi,%rdi
  401373:	74 2b                	je     4013a0 <fun7+0x34>
  401375:	8b 17                	mov    (%rdi),%edx
  401377:	39 f2                	cmp    %esi,%edx
  401379:	7e 0d                	jle    401388 <fun7+0x1c>
  40137b:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40137f:	e8 e8 ff ff ff       	callq  40136c <fun7>
  401384:	01 c0                	add    %eax,%eax
  401386:	eb 1d                	jmp    4013a5 <fun7+0x39>
  401388:	b8 00 00 00 00       	mov    $0x0,%eax
  40138d:	39 f2                	cmp    %esi,%edx
  40138f:	74 14                	je     4013a5 <fun7+0x39>
  401391:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401395:	e8 d2 ff ff ff       	callq  40136c <fun7>
  40139a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  40139e:	eb 05                	jmp    4013a5 <fun7+0x39>
  4013a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4013a5:	48 83 c4 08          	add    $0x8,%rsp
  4013a9:	c3                   	retq   

00000000004013aa <secret_phase>:
  4013aa:	53                   	push   %rbx
  4013ab:	e8 b9 04 00 00       	callq  401869 <read_line>
  4013b0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4013b5:	be 00 00 00 00       	mov    $0x0,%esi
  4013ba:	48 89 c7             	mov    %rax,%rdi
  4013bd:	e8 ae f8 ff ff       	callq  400c70 <strtol@plt>
  4013c2:	48 89 c3             	mov    %rax,%rbx
  4013c5:	8d 40 ff             	lea    -0x1(%rax),%eax
  4013c8:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4013cd:	76 05                	jbe    4013d4 <secret_phase+0x2a>
  4013cf:	e8 20 04 00 00       	callq  4017f4 <explode_bomb>
  4013d4:	89 de                	mov    %ebx,%esi
  4013d6:	bf 10 41 60 00       	mov    $0x604110,%edi
  4013db:	e8 8c ff ff ff       	callq  40136c <fun7>
  4013e0:	83 f8 07             	cmp    $0x7,%eax
  4013e3:	74 05                	je     4013ea <secret_phase+0x40>
  4013e5:	e8 0a 04 00 00       	callq  4017f4 <explode_bomb>
  4013ea:	bf 30 28 40 00       	mov    $0x402830,%edi
  4013ef:	e8 cc f7 ff ff       	callq  400bc0 <puts@plt>
  4013f4:	e8 96 05 00 00       	callq  40198f <phase_defused>
  4013f9:	5b                   	pop    %rbx
  4013fa:	c3                   	retq   

00000000004013fb <sig_handler>:
  4013fb:	48 83 ec 08          	sub    $0x8,%rsp
  4013ff:	bf 58 28 40 00       	mov    $0x402858,%edi
  401404:	e8 b7 f7 ff ff       	callq  400bc0 <puts@plt>
  401409:	bf 03 00 00 00       	mov    $0x3,%edi
  40140e:	e8 ed f8 ff ff       	callq  400d00 <sleep@plt>
  401413:	be 21 2a 40 00       	mov    $0x402a21,%esi
  401418:	bf 01 00 00 00       	mov    $0x1,%edi
  40141d:	b8 00 00 00 00       	mov    $0x0,%eax
  401422:	e8 79 f8 ff ff       	callq  400ca0 <__printf_chk@plt>
  401427:	48 8b 3d 52 33 20 00 	mov    0x203352(%rip),%rdi        # 604780 <stdout@@GLIBC_2.2.5>
  40142e:	e8 4d f8 ff ff       	callq  400c80 <fflush@plt>
  401433:	bf 01 00 00 00       	mov    $0x1,%edi
  401438:	e8 c3 f8 ff ff       	callq  400d00 <sleep@plt>
  40143d:	bf 29 2a 40 00       	mov    $0x402a29,%edi
  401442:	e8 79 f7 ff ff       	callq  400bc0 <puts@plt>
  401447:	bf 10 00 00 00       	mov    $0x10,%edi
  40144c:	e8 7f f8 ff ff       	callq  400cd0 <exit@plt>

0000000000401451 <invalid_phase>:
  401451:	48 83 ec 08          	sub    $0x8,%rsp
  401455:	48 89 fa             	mov    %rdi,%rdx
  401458:	be 31 2a 40 00       	mov    $0x402a31,%esi
  40145d:	bf 01 00 00 00       	mov    $0x1,%edi
  401462:	b8 00 00 00 00       	mov    $0x0,%eax
  401467:	e8 34 f8 ff ff       	callq  400ca0 <__printf_chk@plt>
  40146c:	bf 08 00 00 00       	mov    $0x8,%edi
  401471:	e8 5a f8 ff ff       	callq  400cd0 <exit@plt>

0000000000401476 <string_length>:
  401476:	80 3f 00             	cmpb   $0x0,(%rdi)
  401479:	74 13                	je     40148e <string_length+0x18>
  40147b:	b8 00 00 00 00       	mov    $0x0,%eax
  401480:	48 83 c7 01          	add    $0x1,%rdi
  401484:	83 c0 01             	add    $0x1,%eax
  401487:	80 3f 00             	cmpb   $0x0,(%rdi)
  40148a:	75 f4                	jne    401480 <string_length+0xa>
  40148c:	f3 c3                	repz retq 
  40148e:	b8 00 00 00 00       	mov    $0x0,%eax
  401493:	c3                   	retq   

0000000000401494 <check_division_equal>:
  401494:	89 d1                	mov    %edx,%ecx
  401496:	89 f8                	mov    %edi,%eax
  401498:	99                   	cltd   
  401499:	f7 fe                	idiv   %esi
  40149b:	39 c8                	cmp    %ecx,%eax
  40149d:	0f 94 c0             	sete   %al
  4014a0:	0f b6 c0             	movzbl %al,%eax
  4014a3:	c3                   	retq   

00000000004014a4 <check_multiplication_equal>:
  4014a4:	0f af f7             	imul   %edi,%esi
  4014a7:	39 d6                	cmp    %edx,%esi
  4014a9:	0f 94 c0             	sete   %al
  4014ac:	0f b6 c0             	movzbl %al,%eax
  4014af:	c3                   	retq   

00000000004014b0 <check_substraction_equal>:
  4014b0:	29 f7                	sub    %esi,%edi
  4014b2:	39 d7                	cmp    %edx,%edi
  4014b4:	0f 94 c0             	sete   %al
  4014b7:	0f b6 c0             	movzbl %al,%eax
  4014ba:	c3                   	retq   

00000000004014bb <reverse_string>:
  4014bb:	48 89 fe             	mov    %rdi,%rsi
  4014be:	48 85 ff             	test   %rdi,%rdi
  4014c1:	74 3d                	je     401500 <reverse_string+0x45>
  4014c3:	80 3f 00             	cmpb   $0x0,(%rdi)
  4014c6:	74 38                	je     401500 <reverse_string+0x45>
  4014c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4014cd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4014d4:	f2 ae                	repnz scas %es:(%rdi),%al
  4014d6:	48 f7 d1             	not    %rcx
  4014d9:	48 8d 4c 0e fe       	lea    -0x2(%rsi,%rcx,1),%rcx
  4014de:	48 39 ce             	cmp    %rcx,%rsi
  4014e1:	73 1d                	jae    401500 <reverse_string+0x45>
  4014e3:	48 89 f2             	mov    %rsi,%rdx
  4014e6:	0f b6 02             	movzbl (%rdx),%eax
  4014e9:	32 01                	xor    (%rcx),%al
  4014eb:	88 02                	mov    %al,(%rdx)
  4014ed:	32 01                	xor    (%rcx),%al
  4014ef:	88 01                	mov    %al,(%rcx)
  4014f1:	30 02                	xor    %al,(%rdx)
  4014f3:	48 83 c2 01          	add    $0x1,%rdx
  4014f7:	48 83 e9 01          	sub    $0x1,%rcx
  4014fb:	48 39 ca             	cmp    %rcx,%rdx
  4014fe:	72 e6                	jb     4014e6 <reverse_string+0x2b>
  401500:	48 89 f0             	mov    %rsi,%rax
  401503:	c3                   	retq   

0000000000401504 <strings_not_equal>:
  401504:	41 54                	push   %r12
  401506:	55                   	push   %rbp
  401507:	53                   	push   %rbx
  401508:	48 89 fb             	mov    %rdi,%rbx
  40150b:	48 89 f5             	mov    %rsi,%rbp
  40150e:	e8 63 ff ff ff       	callq  401476 <string_length>
  401513:	41 89 c4             	mov    %eax,%r12d
  401516:	48 89 ef             	mov    %rbp,%rdi
  401519:	e8 58 ff ff ff       	callq  401476 <string_length>
  40151e:	ba 01 00 00 00       	mov    $0x1,%edx
  401523:	41 39 c4             	cmp    %eax,%r12d
  401526:	75 3c                	jne    401564 <strings_not_equal+0x60>
  401528:	0f b6 03             	movzbl (%rbx),%eax
  40152b:	84 c0                	test   %al,%al
  40152d:	74 22                	je     401551 <strings_not_equal+0x4d>
  40152f:	3a 45 00             	cmp    0x0(%rbp),%al
  401532:	74 07                	je     40153b <strings_not_equal+0x37>
  401534:	eb 22                	jmp    401558 <strings_not_equal+0x54>
  401536:	3a 45 00             	cmp    0x0(%rbp),%al
  401539:	75 24                	jne    40155f <strings_not_equal+0x5b>
  40153b:	48 83 c3 01          	add    $0x1,%rbx
  40153f:	48 83 c5 01          	add    $0x1,%rbp
  401543:	0f b6 03             	movzbl (%rbx),%eax
  401546:	84 c0                	test   %al,%al
  401548:	75 ec                	jne    401536 <strings_not_equal+0x32>
  40154a:	ba 00 00 00 00       	mov    $0x0,%edx
  40154f:	eb 13                	jmp    401564 <strings_not_equal+0x60>
  401551:	ba 00 00 00 00       	mov    $0x0,%edx
  401556:	eb 0c                	jmp    401564 <strings_not_equal+0x60>
  401558:	ba 01 00 00 00       	mov    $0x1,%edx
  40155d:	eb 05                	jmp    401564 <strings_not_equal+0x60>
  40155f:	ba 01 00 00 00       	mov    $0x1,%edx
  401564:	89 d0                	mov    %edx,%eax
  401566:	5b                   	pop    %rbx
  401567:	5d                   	pop    %rbp
  401568:	41 5c                	pop    %r12
  40156a:	c3                   	retq   

000000000040156b <from_char_to_int>:
  40156b:	40 0f be c7          	movsbl %dil,%eax
  40156f:	40 80 ff 69          	cmp    $0x69,%dil
  401573:	7e 04                	jle    401579 <from_char_to_int+0xe>
  401575:	83 e8 09             	sub    $0x9,%eax
  401578:	c3                   	retq   
  401579:	83 ef 33             	sub    $0x33,%edi
  40157c:	8d 50 fd             	lea    -0x3(%rax),%edx
  40157f:	40 80 ff 09          	cmp    $0x9,%dil
  401583:	0f 46 c2             	cmovbe %edx,%eax
  401586:	c3                   	retq   

0000000000401587 <initialize_bomb>:
  401587:	53                   	push   %rbx
  401588:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  40158f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401596:	00 00 
  401598:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  40159f:	00 
  4015a0:	31 c0                	xor    %eax,%eax
  4015a2:	be fb 13 40 00       	mov    $0x4013fb,%esi
  4015a7:	bf 02 00 00 00       	mov    $0x2,%edi
  4015ac:	e8 8f f6 ff ff       	callq  400c40 <signal@plt>
  4015b1:	be 40 00 00 00       	mov    $0x40,%esi
  4015b6:	48 89 e7             	mov    %rsp,%rdi
  4015b9:	e8 02 f7 ff ff       	callq  400cc0 <gethostname@plt>
  4015be:	85 c0                	test   %eax,%eax
  4015c0:	75 13                	jne    4015d5 <initialize_bomb+0x4e>
  4015c2:	48 8b 3d b7 2d 20 00 	mov    0x202db7(%rip),%rdi        # 604380 <host_table>
  4015c9:	bb 88 43 60 00       	mov    $0x604388,%ebx
  4015ce:	48 85 ff             	test   %rdi,%rdi
  4015d1:	75 16                	jne    4015e9 <initialize_bomb+0x62>
  4015d3:	eb 52                	jmp    401627 <initialize_bomb+0xa0>
  4015d5:	bf 90 28 40 00       	mov    $0x402890,%edi
  4015da:	e8 e1 f5 ff ff       	callq  400bc0 <puts@plt>
  4015df:	bf 08 00 00 00       	mov    $0x8,%edi
  4015e4:	e8 e7 f6 ff ff       	callq  400cd0 <exit@plt>
  4015e9:	48 89 e6             	mov    %rsp,%rsi
  4015ec:	e8 9f f5 ff ff       	callq  400b90 <strcasecmp@plt>
  4015f1:	85 c0                	test   %eax,%eax
  4015f3:	74 46                	je     40163b <initialize_bomb+0xb4>
  4015f5:	48 83 c3 08          	add    $0x8,%rbx
  4015f9:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  4015fd:	48 85 ff             	test   %rdi,%rdi
  401600:	75 e7                	jne    4015e9 <initialize_bomb+0x62>
  401602:	eb 23                	jmp    401627 <initialize_bomb+0xa0>
  401604:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  401609:	be 42 2a 40 00       	mov    $0x402a42,%esi
  40160e:	bf 01 00 00 00       	mov    $0x1,%edi
  401613:	b8 00 00 00 00       	mov    $0x0,%eax
  401618:	e8 83 f6 ff ff       	callq  400ca0 <__printf_chk@plt>
  40161d:	bf 08 00 00 00       	mov    $0x8,%edi
  401622:	e8 a9 f6 ff ff       	callq  400cd0 <exit@plt>
  401627:	bf c8 28 40 00       	mov    $0x4028c8,%edi
  40162c:	e8 8f f5 ff ff       	callq  400bc0 <puts@plt>
  401631:	bf 08 00 00 00       	mov    $0x8,%edi
  401636:	e8 95 f6 ff ff       	callq  400cd0 <exit@plt>
  40163b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401640:	e8 49 0d 00 00       	callq  40238e <init_driver>
  401645:	85 c0                	test   %eax,%eax
  401647:	78 bb                	js     401604 <initialize_bomb+0x7d>
  401649:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  401650:	00 
  401651:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401658:	00 00 
  40165a:	74 05                	je     401661 <initialize_bomb+0xda>
  40165c:	e8 7f f5 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401661:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  401668:	5b                   	pop    %rbx
  401669:	c3                   	retq   

000000000040166a <initialize_bomb_solve>:
  40166a:	f3 c3                	repz retq 

000000000040166c <blank_line>:
  40166c:	55                   	push   %rbp
  40166d:	53                   	push   %rbx
  40166e:	48 83 ec 08          	sub    $0x8,%rsp
  401672:	48 89 fd             	mov    %rdi,%rbp
  401675:	eb 17                	jmp    40168e <blank_line+0x22>
  401677:	e8 94 f6 ff ff       	callq  400d10 <__ctype_b_loc@plt>
  40167c:	48 83 c5 01          	add    $0x1,%rbp
  401680:	48 0f be db          	movsbq %bl,%rbx
  401684:	48 8b 00             	mov    (%rax),%rax
  401687:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  40168c:	74 0f                	je     40169d <blank_line+0x31>
  40168e:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  401692:	84 db                	test   %bl,%bl
  401694:	75 e1                	jne    401677 <blank_line+0xb>
  401696:	b8 01 00 00 00       	mov    $0x1,%eax
  40169b:	eb 05                	jmp    4016a2 <blank_line+0x36>
  40169d:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a2:	48 83 c4 08          	add    $0x8,%rsp
  4016a6:	5b                   	pop    %rbx
  4016a7:	5d                   	pop    %rbp
  4016a8:	c3                   	retq   

00000000004016a9 <skip>:
  4016a9:	53                   	push   %rbx
  4016aa:	48 63 05 fb 30 20 00 	movslq 0x2030fb(%rip),%rax        # 6047ac <num_input_strings>
  4016b1:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  4016b5:	48 c1 e7 04          	shl    $0x4,%rdi
  4016b9:	48 81 c7 c0 47 60 00 	add    $0x6047c0,%rdi
  4016c0:	48 8b 15 e9 30 20 00 	mov    0x2030e9(%rip),%rdx        # 6047b0 <infile>
  4016c7:	be 50 00 00 00       	mov    $0x50,%esi
  4016cc:	e8 5f f5 ff ff       	callq  400c30 <fgets@plt>
  4016d1:	48 89 c3             	mov    %rax,%rbx
  4016d4:	48 85 c0             	test   %rax,%rax
  4016d7:	74 0c                	je     4016e5 <skip+0x3c>
  4016d9:	48 89 c7             	mov    %rax,%rdi
  4016dc:	e8 8b ff ff ff       	callq  40166c <blank_line>
  4016e1:	85 c0                	test   %eax,%eax
  4016e3:	75 c5                	jne    4016aa <skip+0x1>
  4016e5:	48 89 d8             	mov    %rbx,%rax
  4016e8:	5b                   	pop    %rbx
  4016e9:	c3                   	retq   

00000000004016ea <send_msg>:
  4016ea:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  4016f1:	41 89 f8             	mov    %edi,%r8d
  4016f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4016fb:	00 00 
  4016fd:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401704:	00 
  401705:	31 c0                	xor    %eax,%eax
  401707:	8b 35 9f 30 20 00    	mov    0x20309f(%rip),%esi        # 6047ac <num_input_strings>
  40170d:	8d 46 ff             	lea    -0x1(%rsi),%eax
  401710:	48 98                	cltq   
  401712:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401716:	48 c1 e2 04          	shl    $0x4,%rdx
  40171a:	48 81 c2 c0 47 60 00 	add    $0x6047c0,%rdx
  401721:	b8 00 00 00 00       	mov    $0x0,%eax
  401726:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40172d:	48 89 d7             	mov    %rdx,%rdi
  401730:	f2 ae                	repnz scas %es:(%rdi),%al
  401732:	48 f7 d1             	not    %rcx
  401735:	48 83 c1 63          	add    $0x63,%rcx
  401739:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401740:	76 19                	jbe    40175b <send_msg+0x71>
  401742:	be 00 29 40 00       	mov    $0x402900,%esi
  401747:	bf 01 00 00 00       	mov    $0x1,%edi
  40174c:	e8 4f f5 ff ff       	callq  400ca0 <__printf_chk@plt>
  401751:	bf 08 00 00 00       	mov    $0x8,%edi
  401756:	e8 75 f5 ff ff       	callq  400cd0 <exit@plt>
  40175b:	45 85 c0             	test   %r8d,%r8d
  40175e:	41 b9 64 2a 40 00    	mov    $0x402a64,%r9d
  401764:	b8 5c 2a 40 00       	mov    $0x402a5c,%eax
  401769:	4c 0f 45 c8          	cmovne %rax,%r9
  40176d:	52                   	push   %rdx
  40176e:	56                   	push   %rsi
  40176f:	44 8b 05 fa 2b 20 00 	mov    0x202bfa(%rip),%r8d        # 604370 <bomb_id>
  401776:	b9 6d 2a 40 00       	mov    $0x402a6d,%ecx
  40177b:	ba 00 20 00 00       	mov    $0x2000,%edx
  401780:	be 01 00 00 00       	mov    $0x1,%esi
  401785:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  40178a:	b8 00 00 00 00       	mov    $0x0,%eax
  40178f:	e8 8c f5 ff ff       	callq  400d20 <__sprintf_chk@plt>
  401794:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
  40179b:	00 
  40179c:	b9 00 00 00 00       	mov    $0x0,%ecx
  4017a1:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  4017a6:	be 50 43 60 00       	mov    $0x604350,%esi
  4017ab:	bf 68 43 60 00       	mov    $0x604368,%edi
  4017b0:	e8 ae 0d 00 00       	callq  402563 <driver_post>
  4017b5:	48 83 c4 10          	add    $0x10,%rsp
  4017b9:	85 c0                	test   %eax,%eax
  4017bb:	79 17                	jns    4017d4 <send_msg+0xea>
  4017bd:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4017c4:	00 
  4017c5:	e8 f6 f3 ff ff       	callq  400bc0 <puts@plt>
  4017ca:	bf 00 00 00 00       	mov    $0x0,%edi
  4017cf:	e8 fc f4 ff ff       	callq  400cd0 <exit@plt>
  4017d4:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4017db:	00 
  4017dc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4017e3:	00 00 
  4017e5:	74 05                	je     4017ec <send_msg+0x102>
  4017e7:	e8 f4 f3 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  4017ec:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4017f3:	c3                   	retq   

00000000004017f4 <explode_bomb>:
  4017f4:	48 83 ec 08          	sub    $0x8,%rsp
  4017f8:	bf 79 2a 40 00       	mov    $0x402a79,%edi
  4017fd:	e8 be f3 ff ff       	callq  400bc0 <puts@plt>
  401802:	bf 82 2a 40 00       	mov    $0x402a82,%edi
  401807:	e8 b4 f3 ff ff       	callq  400bc0 <puts@plt>
  40180c:	bf 00 00 00 00       	mov    $0x0,%edi
  401811:	e8 d4 fe ff ff       	callq  4016ea <send_msg>
  401816:	bf 28 29 40 00       	mov    $0x402928,%edi
  40181b:	e8 a0 f3 ff ff       	callq  400bc0 <puts@plt>
  401820:	bf 08 00 00 00       	mov    $0x8,%edi
  401825:	e8 a6 f4 ff ff       	callq  400cd0 <exit@plt>

000000000040182a <read_six_numbers>:
  40182a:	48 83 ec 08          	sub    $0x8,%rsp
  40182e:	48 89 f2             	mov    %rsi,%rdx
  401831:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401835:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401839:	50                   	push   %rax
  40183a:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40183e:	50                   	push   %rax
  40183f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401843:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401847:	be 99 2a 40 00       	mov    $0x402a99,%esi
  40184c:	b8 00 00 00 00       	mov    $0x0,%eax
  401851:	e8 3a f4 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  401856:	48 83 c4 10          	add    $0x10,%rsp
  40185a:	83 f8 05             	cmp    $0x5,%eax
  40185d:	7f 05                	jg     401864 <read_six_numbers+0x3a>
  40185f:	e8 90 ff ff ff       	callq  4017f4 <explode_bomb>
  401864:	48 83 c4 08          	add    $0x8,%rsp
  401868:	c3                   	retq   

0000000000401869 <read_line>:
  401869:	48 83 ec 08          	sub    $0x8,%rsp
  40186d:	b8 00 00 00 00       	mov    $0x0,%eax
  401872:	e8 32 fe ff ff       	callq  4016a9 <skip>
  401877:	48 85 c0             	test   %rax,%rax
  40187a:	75 6e                	jne    4018ea <read_line+0x81>
  40187c:	48 8b 05 0d 2f 20 00 	mov    0x202f0d(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  401883:	48 39 05 26 2f 20 00 	cmp    %rax,0x202f26(%rip)        # 6047b0 <infile>
  40188a:	75 14                	jne    4018a0 <read_line+0x37>
  40188c:	bf ab 2a 40 00       	mov    $0x402aab,%edi
  401891:	e8 2a f3 ff ff       	callq  400bc0 <puts@plt>
  401896:	bf 08 00 00 00       	mov    $0x8,%edi
  40189b:	e8 30 f4 ff ff       	callq  400cd0 <exit@plt>
  4018a0:	bf c9 2a 40 00       	mov    $0x402ac9,%edi
  4018a5:	e8 d6 f2 ff ff       	callq  400b80 <getenv@plt>
  4018aa:	48 85 c0             	test   %rax,%rax
  4018ad:	74 0a                	je     4018b9 <read_line+0x50>
  4018af:	bf 00 00 00 00       	mov    $0x0,%edi
  4018b4:	e8 17 f4 ff ff       	callq  400cd0 <exit@plt>
  4018b9:	48 8b 05 d0 2e 20 00 	mov    0x202ed0(%rip),%rax        # 604790 <stdin@@GLIBC_2.2.5>
  4018c0:	48 89 05 e9 2e 20 00 	mov    %rax,0x202ee9(%rip)        # 6047b0 <infile>
  4018c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cc:	e8 d8 fd ff ff       	callq  4016a9 <skip>
  4018d1:	48 85 c0             	test   %rax,%rax
  4018d4:	75 14                	jne    4018ea <read_line+0x81>
  4018d6:	bf ab 2a 40 00       	mov    $0x402aab,%edi
  4018db:	e8 e0 f2 ff ff       	callq  400bc0 <puts@plt>
  4018e0:	bf 00 00 00 00       	mov    $0x0,%edi
  4018e5:	e8 e6 f3 ff ff       	callq  400cd0 <exit@plt>
  4018ea:	8b 35 bc 2e 20 00    	mov    0x202ebc(%rip),%esi        # 6047ac <num_input_strings>
  4018f0:	48 63 c6             	movslq %esi,%rax
  4018f3:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4018f7:	48 c1 e2 04          	shl    $0x4,%rdx
  4018fb:	48 81 c2 c0 47 60 00 	add    $0x6047c0,%rdx
  401902:	b8 00 00 00 00       	mov    $0x0,%eax
  401907:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40190e:	48 89 d7             	mov    %rdx,%rdi
  401911:	f2 ae                	repnz scas %es:(%rdi),%al
  401913:	48 f7 d1             	not    %rcx
  401916:	48 83 e9 01          	sub    $0x1,%rcx
  40191a:	83 f9 4e             	cmp    $0x4e,%ecx
  40191d:	7e 46                	jle    401965 <read_line+0xfc>
  40191f:	bf d4 2a 40 00       	mov    $0x402ad4,%edi
  401924:	e8 97 f2 ff ff       	callq  400bc0 <puts@plt>
  401929:	8b 05 7d 2e 20 00    	mov    0x202e7d(%rip),%eax        # 6047ac <num_input_strings>
  40192f:	8d 50 01             	lea    0x1(%rax),%edx
  401932:	89 15 74 2e 20 00    	mov    %edx,0x202e74(%rip)        # 6047ac <num_input_strings>
  401938:	48 98                	cltq   
  40193a:	48 6b c0 50          	imul   $0x50,%rax,%rax
  40193e:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  401945:	75 6e 63 
  401948:	48 89 b8 c0 47 60 00 	mov    %rdi,0x6047c0(%rax)
  40194f:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401956:	2a 2a 00 
  401959:	48 89 b8 c8 47 60 00 	mov    %rdi,0x6047c8(%rax)
  401960:	e8 8f fe ff ff       	callq  4017f4 <explode_bomb>
  401965:	83 e9 01             	sub    $0x1,%ecx
  401968:	48 63 c9             	movslq %ecx,%rcx
  40196b:	48 63 c6             	movslq %esi,%rax
  40196e:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401972:	48 c1 e0 04          	shl    $0x4,%rax
  401976:	c6 84 01 c0 47 60 00 	movb   $0x0,0x6047c0(%rcx,%rax,1)
  40197d:	00 
  40197e:	8d 46 01             	lea    0x1(%rsi),%eax
  401981:	89 05 25 2e 20 00    	mov    %eax,0x202e25(%rip)        # 6047ac <num_input_strings>
  401987:	48 89 d0             	mov    %rdx,%rax
  40198a:	48 83 c4 08          	add    $0x8,%rsp
  40198e:	c3                   	retq   

000000000040198f <phase_defused>:
  40198f:	48 83 ec 78          	sub    $0x78,%rsp
  401993:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40199a:	00 00 
  40199c:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4019a1:	31 c0                	xor    %eax,%eax
  4019a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a8:	e8 3d fd ff ff       	callq  4016ea <send_msg>
  4019ad:	83 3d f8 2d 20 00 06 	cmpl   $0x6,0x202df8(%rip)        # 6047ac <num_input_strings>
  4019b4:	75 6d                	jne    401a23 <phase_defused+0x94>
  4019b6:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4019bb:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4019c0:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4019c5:	be ef 2a 40 00       	mov    $0x402aef,%esi
  4019ca:	bf b0 48 60 00       	mov    $0x6048b0,%edi
  4019cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4019d4:	e8 b7 f2 ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  4019d9:	83 f8 03             	cmp    $0x3,%eax
  4019dc:	75 31                	jne    401a0f <phase_defused+0x80>
  4019de:	be f8 2a 40 00       	mov    $0x402af8,%esi
  4019e3:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4019e8:	e8 17 fb ff ff       	callq  401504 <strings_not_equal>
  4019ed:	85 c0                	test   %eax,%eax
  4019ef:	75 1e                	jne    401a0f <phase_defused+0x80>
  4019f1:	bf 50 29 40 00       	mov    $0x402950,%edi
  4019f6:	e8 c5 f1 ff ff       	callq  400bc0 <puts@plt>
  4019fb:	bf 78 29 40 00       	mov    $0x402978,%edi
  401a00:	e8 bb f1 ff ff       	callq  400bc0 <puts@plt>
  401a05:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0a:	e8 9b f9 ff ff       	callq  4013aa <secret_phase>
  401a0f:	bf b0 29 40 00       	mov    $0x4029b0,%edi
  401a14:	e8 a7 f1 ff ff       	callq  400bc0 <puts@plt>
  401a19:	bf e0 29 40 00       	mov    $0x4029e0,%edi
  401a1e:	e8 9d f1 ff ff       	callq  400bc0 <puts@plt>
  401a23:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  401a28:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401a2f:	00 00 
  401a31:	74 05                	je     401a38 <phase_defused+0xa9>
  401a33:	e8 a8 f1 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401a38:	48 83 c4 78          	add    $0x78,%rsp
  401a3c:	c3                   	retq   

0000000000401a3d <sigalrm_handler>:
  401a3d:	48 83 ec 08          	sub    $0x8,%rsp
  401a41:	b9 00 00 00 00       	mov    $0x0,%ecx
  401a46:	ba d0 2d 40 00       	mov    $0x402dd0,%edx
  401a4b:	be 01 00 00 00       	mov    $0x1,%esi
  401a50:	48 8b 3d 49 2d 20 00 	mov    0x202d49(%rip),%rdi        # 6047a0 <stderr@@GLIBC_2.2.5>
  401a57:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5c:	e8 8f f2 ff ff       	callq  400cf0 <__fprintf_chk@plt>
  401a61:	bf 01 00 00 00       	mov    $0x1,%edi
  401a66:	e8 65 f2 ff ff       	callq  400cd0 <exit@plt>

0000000000401a6b <rio_readlineb>:
  401a6b:	41 56                	push   %r14
  401a6d:	41 55                	push   %r13
  401a6f:	41 54                	push   %r12
  401a71:	55                   	push   %rbp
  401a72:	53                   	push   %rbx
  401a73:	48 83 ec 10          	sub    $0x10,%rsp
  401a77:	48 89 fb             	mov    %rdi,%rbx
  401a7a:	49 89 f5             	mov    %rsi,%r13
  401a7d:	49 89 d6             	mov    %rdx,%r14
  401a80:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a87:	00 00 
  401a89:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a8e:	31 c0                	xor    %eax,%eax
  401a90:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401a96:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
  401a9a:	48 83 fa 01          	cmp    $0x1,%rdx
  401a9e:	77 2c                	ja     401acc <rio_readlineb+0x61>
  401aa0:	eb 6d                	jmp    401b0f <rio_readlineb+0xa4>
  401aa2:	ba 00 20 00 00       	mov    $0x2000,%edx
  401aa7:	48 89 ee             	mov    %rbp,%rsi
  401aaa:	8b 3b                	mov    (%rbx),%edi
  401aac:	e8 5f f1 ff ff       	callq  400c10 <read@plt>
  401ab1:	89 43 04             	mov    %eax,0x4(%rbx)
  401ab4:	85 c0                	test   %eax,%eax
  401ab6:	79 0c                	jns    401ac4 <rio_readlineb+0x59>
  401ab8:	e8 e3 f0 ff ff       	callq  400ba0 <__errno_location@plt>
  401abd:	83 38 04             	cmpl   $0x4,(%rax)
  401ac0:	74 0a                	je     401acc <rio_readlineb+0x61>
  401ac2:	eb 6c                	jmp    401b30 <rio_readlineb+0xc5>
  401ac4:	85 c0                	test   %eax,%eax
  401ac6:	74 71                	je     401b39 <rio_readlineb+0xce>
  401ac8:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401acc:	8b 43 04             	mov    0x4(%rbx),%eax
  401acf:	85 c0                	test   %eax,%eax
  401ad1:	7e cf                	jle    401aa2 <rio_readlineb+0x37>
  401ad3:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401ad7:	0f b6 0a             	movzbl (%rdx),%ecx
  401ada:	88 4c 24 07          	mov    %cl,0x7(%rsp)
  401ade:	48 83 c2 01          	add    $0x1,%rdx
  401ae2:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  401ae6:	83 e8 01             	sub    $0x1,%eax
  401ae9:	89 43 04             	mov    %eax,0x4(%rbx)
  401aec:	49 83 c5 01          	add    $0x1,%r13
  401af0:	41 88 4d ff          	mov    %cl,-0x1(%r13)
  401af4:	80 f9 0a             	cmp    $0xa,%cl
  401af7:	75 0a                	jne    401b03 <rio_readlineb+0x98>
  401af9:	eb 14                	jmp    401b0f <rio_readlineb+0xa4>
  401afb:	41 83 fc 01          	cmp    $0x1,%r12d
  401aff:	75 0e                	jne    401b0f <rio_readlineb+0xa4>
  401b01:	eb 16                	jmp    401b19 <rio_readlineb+0xae>
  401b03:	41 83 c4 01          	add    $0x1,%r12d
  401b07:	49 63 c4             	movslq %r12d,%rax
  401b0a:	4c 39 f0             	cmp    %r14,%rax
  401b0d:	72 bd                	jb     401acc <rio_readlineb+0x61>
  401b0f:	41 c6 45 00 00       	movb   $0x0,0x0(%r13)
  401b14:	49 63 c4             	movslq %r12d,%rax
  401b17:	eb 05                	jmp    401b1e <rio_readlineb+0xb3>
  401b19:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401b23:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401b2a:	00 00 
  401b2c:	74 22                	je     401b50 <rio_readlineb+0xe5>
  401b2e:	eb 1b                	jmp    401b4b <rio_readlineb+0xe0>
  401b30:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b37:	eb 05                	jmp    401b3e <rio_readlineb+0xd3>
  401b39:	b8 00 00 00 00       	mov    $0x0,%eax
  401b3e:	85 c0                	test   %eax,%eax
  401b40:	74 b9                	je     401afb <rio_readlineb+0x90>
  401b42:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401b49:	eb d3                	jmp    401b1e <rio_readlineb+0xb3>
  401b4b:	e8 90 f0 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401b50:	48 83 c4 10          	add    $0x10,%rsp
  401b54:	5b                   	pop    %rbx
  401b55:	5d                   	pop    %rbp
  401b56:	41 5c                	pop    %r12
  401b58:	41 5d                	pop    %r13
  401b5a:	41 5e                	pop    %r14
  401b5c:	c3                   	retq   

0000000000401b5d <submitr>:
  401b5d:	41 57                	push   %r15
  401b5f:	41 56                	push   %r14
  401b61:	41 55                	push   %r13
  401b63:	41 54                	push   %r12
  401b65:	55                   	push   %rbp
  401b66:	53                   	push   %rbx
  401b67:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  401b6e:	49 89 fd             	mov    %rdi,%r13
  401b71:	89 f5                	mov    %esi,%ebp
  401b73:	48 89 14 24          	mov    %rdx,(%rsp)
  401b77:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  401b7c:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  401b81:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
  401b86:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  401b8d:	00 
  401b8e:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
  401b95:	00 
  401b96:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b9d:	00 00 
  401b9f:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  401ba6:	00 
  401ba7:	31 c0                	xor    %eax,%eax
  401ba9:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  401bb0:	00 
  401bb1:	ba 00 00 00 00       	mov    $0x0,%edx
  401bb6:	be 01 00 00 00       	mov    $0x1,%esi
  401bbb:	bf 02 00 00 00       	mov    $0x2,%edi
  401bc0:	e8 6b f1 ff ff       	callq  400d30 <socket@plt>
  401bc5:	85 c0                	test   %eax,%eax
  401bc7:	79 50                	jns    401c19 <submitr+0xbc>
  401bc9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401bd0:	3a 20 43 
  401bd3:	49 89 07             	mov    %rax,(%r15)
  401bd6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401bdd:	20 75 6e 
  401be0:	49 89 47 08          	mov    %rax,0x8(%r15)
  401be4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401beb:	74 6f 20 
  401bee:	49 89 47 10          	mov    %rax,0x10(%r15)
  401bf2:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401bf9:	65 20 73 
  401bfc:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c00:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401c07:	65 
  401c08:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401c0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c14:	e9 12 06 00 00       	jmpq   40222b <submitr+0x6ce>
  401c19:	41 89 c4             	mov    %eax,%r12d
  401c1c:	4c 89 ef             	mov    %r13,%rdi
  401c1f:	e8 2c f0 ff ff       	callq  400c50 <gethostbyname@plt>
  401c24:	48 85 c0             	test   %rax,%rax
  401c27:	75 6b                	jne    401c94 <submitr+0x137>
  401c29:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401c30:	3a 20 44 
  401c33:	49 89 07             	mov    %rax,(%r15)
  401c36:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401c3d:	20 75 6e 
  401c40:	49 89 47 08          	mov    %rax,0x8(%r15)
  401c44:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401c4b:	74 6f 20 
  401c4e:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c52:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401c59:	76 65 20 
  401c5c:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c60:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401c67:	72 20 61 
  401c6a:	49 89 47 20          	mov    %rax,0x20(%r15)
  401c6e:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401c75:	65 
  401c76:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401c7d:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401c82:	44 89 e7             	mov    %r12d,%edi
  401c85:	e8 76 ef ff ff       	callq  400c00 <close@plt>
  401c8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c8f:	e9 97 05 00 00       	jmpq   40222b <submitr+0x6ce>
  401c94:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  401c9b:	00 00 
  401c9d:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  401ca4:	00 00 
  401ca6:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  401cad:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401cb1:	48 8b 40 18          	mov    0x18(%rax),%rax
  401cb5:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  401cba:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401cbf:	48 8b 30             	mov    (%rax),%rsi
  401cc2:	e8 99 ef ff ff       	callq  400c60 <__memmove_chk@plt>
  401cc7:	66 c1 cd 08          	ror    $0x8,%bp
  401ccb:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
  401cd0:	ba 10 00 00 00       	mov    $0x10,%edx
  401cd5:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401cda:	44 89 e7             	mov    %r12d,%edi
  401cdd:	e8 fe ef ff ff       	callq  400ce0 <connect@plt>
  401ce2:	85 c0                	test   %eax,%eax
  401ce4:	79 5d                	jns    401d43 <submitr+0x1e6>
  401ce6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401ced:	3a 20 55 
  401cf0:	49 89 07             	mov    %rax,(%r15)
  401cf3:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401cfa:	20 74 6f 
  401cfd:	49 89 47 08          	mov    %rax,0x8(%r15)
  401d01:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401d08:	65 63 74 
  401d0b:	49 89 47 10          	mov    %rax,0x10(%r15)
  401d0f:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401d16:	68 65 20 
  401d19:	49 89 47 18          	mov    %rax,0x18(%r15)
  401d1d:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401d24:	76 
  401d25:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401d2c:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401d31:	44 89 e7             	mov    %r12d,%edi
  401d34:	e8 c7 ee ff ff       	callq  400c00 <close@plt>
  401d39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d3e:	e9 e8 04 00 00       	jmpq   40222b <submitr+0x6ce>
  401d43:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401d4a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4f:	4c 89 c9             	mov    %r9,%rcx
  401d52:	48 89 df             	mov    %rbx,%rdi
  401d55:	f2 ae                	repnz scas %es:(%rdi),%al
  401d57:	48 f7 d1             	not    %rcx
  401d5a:	48 89 ce             	mov    %rcx,%rsi
  401d5d:	4c 89 c9             	mov    %r9,%rcx
  401d60:	48 8b 3c 24          	mov    (%rsp),%rdi
  401d64:	f2 ae                	repnz scas %es:(%rdi),%al
  401d66:	49 89 c8             	mov    %rcx,%r8
  401d69:	4c 89 c9             	mov    %r9,%rcx
  401d6c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  401d71:	f2 ae                	repnz scas %es:(%rdi),%al
  401d73:	48 f7 d1             	not    %rcx
  401d76:	48 89 ca             	mov    %rcx,%rdx
  401d79:	4c 89 c9             	mov    %r9,%rcx
  401d7c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401d81:	f2 ae                	repnz scas %es:(%rdi),%al
  401d83:	4c 29 c2             	sub    %r8,%rdx
  401d86:	48 29 ca             	sub    %rcx,%rdx
  401d89:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401d8e:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
  401d93:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401d99:	76 73                	jbe    401e0e <submitr+0x2b1>
  401d9b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401da2:	3a 20 52 
  401da5:	49 89 07             	mov    %rax,(%r15)
  401da8:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401daf:	20 73 74 
  401db2:	49 89 47 08          	mov    %rax,0x8(%r15)
  401db6:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401dbd:	74 6f 6f 
  401dc0:	49 89 47 10          	mov    %rax,0x10(%r15)
  401dc4:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401dcb:	65 2e 20 
  401dce:	49 89 47 18          	mov    %rax,0x18(%r15)
  401dd2:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401dd9:	61 73 65 
  401ddc:	49 89 47 20          	mov    %rax,0x20(%r15)
  401de0:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401de7:	49 54 52 
  401dea:	49 89 47 28          	mov    %rax,0x28(%r15)
  401dee:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401df5:	55 46 00 
  401df8:	49 89 47 30          	mov    %rax,0x30(%r15)
  401dfc:	44 89 e7             	mov    %r12d,%edi
  401dff:	e8 fc ed ff ff       	callq  400c00 <close@plt>
  401e04:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e09:	e9 1d 04 00 00       	jmpq   40222b <submitr+0x6ce>
  401e0e:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
  401e15:	00 
  401e16:	b9 00 04 00 00       	mov    $0x400,%ecx
  401e1b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e20:	48 89 d7             	mov    %rdx,%rdi
  401e23:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401e26:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401e2d:	48 89 df             	mov    %rbx,%rdi
  401e30:	f2 ae                	repnz scas %es:(%rdi),%al
  401e32:	48 89 c8             	mov    %rcx,%rax
  401e35:	48 f7 d0             	not    %rax
  401e38:	48 83 e8 01          	sub    $0x1,%rax
  401e3c:	85 c0                	test   %eax,%eax
  401e3e:	0f 84 90 04 00 00    	je     4022d4 <submitr+0x777>
  401e44:	8d 40 ff             	lea    -0x1(%rax),%eax
  401e47:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401e4c:	48 89 d5             	mov    %rdx,%rbp
  401e4f:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
  401e56:	00 20 00 
  401e59:	44 0f b6 03          	movzbl (%rbx),%r8d
  401e5d:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
  401e61:	3c 35                	cmp    $0x35,%al
  401e63:	77 06                	ja     401e6b <submitr+0x30e>
  401e65:	49 0f a3 c5          	bt     %rax,%r13
  401e69:	72 0d                	jb     401e78 <submitr+0x31b>
  401e6b:	44 89 c0             	mov    %r8d,%eax
  401e6e:	83 e0 df             	and    $0xffffffdf,%eax
  401e71:	83 e8 41             	sub    $0x41,%eax
  401e74:	3c 19                	cmp    $0x19,%al
  401e76:	77 0a                	ja     401e82 <submitr+0x325>
  401e78:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401e7c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e80:	eb 6c                	jmp    401eee <submitr+0x391>
  401e82:	41 80 f8 20          	cmp    $0x20,%r8b
  401e86:	75 0a                	jne    401e92 <submitr+0x335>
  401e88:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401e8c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401e90:	eb 5c                	jmp    401eee <submitr+0x391>
  401e92:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401e96:	3c 5f                	cmp    $0x5f,%al
  401e98:	76 0a                	jbe    401ea4 <submitr+0x347>
  401e9a:	41 80 f8 09          	cmp    $0x9,%r8b
  401e9e:	0f 85 a3 03 00 00    	jne    402247 <submitr+0x6ea>
  401ea4:	45 0f b6 c0          	movzbl %r8b,%r8d
  401ea8:	b9 a8 2e 40 00       	mov    $0x402ea8,%ecx
  401ead:	ba 08 00 00 00       	mov    $0x8,%edx
  401eb2:	be 01 00 00 00       	mov    $0x1,%esi
  401eb7:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401ebe:	00 
  401ebf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec4:	e8 57 ee ff ff       	callq  400d20 <__sprintf_chk@plt>
  401ec9:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
  401ed0:	00 
  401ed1:	88 45 00             	mov    %al,0x0(%rbp)
  401ed4:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
  401edb:	00 
  401edc:	88 45 01             	mov    %al,0x1(%rbp)
  401edf:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
  401ee6:	00 
  401ee7:	88 45 02             	mov    %al,0x2(%rbp)
  401eea:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401eee:	48 83 c3 01          	add    $0x1,%rbx
  401ef2:	49 39 de             	cmp    %rbx,%r14
  401ef5:	0f 85 5e ff ff ff    	jne    401e59 <submitr+0x2fc>
  401efb:	e9 d4 03 00 00       	jmpq   4022d4 <submitr+0x777>
  401f00:	48 89 da             	mov    %rbx,%rdx
  401f03:	48 89 ee             	mov    %rbp,%rsi
  401f06:	44 89 e7             	mov    %r12d,%edi
  401f09:	e8 c2 ec ff ff       	callq  400bd0 <write@plt>
  401f0e:	48 85 c0             	test   %rax,%rax
  401f11:	7f 0f                	jg     401f22 <submitr+0x3c5>
  401f13:	e8 88 ec ff ff       	callq  400ba0 <__errno_location@plt>
  401f18:	83 38 04             	cmpl   $0x4,(%rax)
  401f1b:	75 12                	jne    401f2f <submitr+0x3d2>
  401f1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f22:	48 01 c5             	add    %rax,%rbp
  401f25:	48 29 c3             	sub    %rax,%rbx
  401f28:	75 d6                	jne    401f00 <submitr+0x3a3>
  401f2a:	4d 85 ed             	test   %r13,%r13
  401f2d:	79 5f                	jns    401f8e <submitr+0x431>
  401f2f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f36:	3a 20 43 
  401f39:	49 89 07             	mov    %rax,(%r15)
  401f3c:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f43:	20 75 6e 
  401f46:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f4a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f51:	74 6f 20 
  401f54:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f58:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401f5f:	20 74 6f 
  401f62:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f66:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401f6d:	73 65 72 
  401f70:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f74:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401f7b:	00 
  401f7c:	44 89 e7             	mov    %r12d,%edi
  401f7f:	e8 7c ec ff ff       	callq  400c00 <close@plt>
  401f84:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f89:	e9 9d 02 00 00       	jmpq   40222b <submitr+0x6ce>
  401f8e:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
  401f93:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  401f9a:	00 
  401f9b:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
  401fa0:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  401fa5:	ba 00 20 00 00       	mov    $0x2000,%edx
  401faa:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  401fb1:	00 
  401fb2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401fb7:	e8 af fa ff ff       	callq  401a6b <rio_readlineb>
  401fbc:	48 85 c0             	test   %rax,%rax
  401fbf:	7f 74                	jg     402035 <submitr+0x4d8>
  401fc1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401fc8:	3a 20 43 
  401fcb:	49 89 07             	mov    %rax,(%r15)
  401fce:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401fd5:	20 75 6e 
  401fd8:	49 89 47 08          	mov    %rax,0x8(%r15)
  401fdc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401fe3:	74 6f 20 
  401fe6:	49 89 47 10          	mov    %rax,0x10(%r15)
  401fea:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401ff1:	66 69 72 
  401ff4:	49 89 47 18          	mov    %rax,0x18(%r15)
  401ff8:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401fff:	61 64 65 
  402002:	49 89 47 20          	mov    %rax,0x20(%r15)
  402006:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  40200d:	6d 20 73 
  402010:	49 89 47 28          	mov    %rax,0x28(%r15)
  402014:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  40201b:	65 
  40201c:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  402023:	44 89 e7             	mov    %r12d,%edi
  402026:	e8 d5 eb ff ff       	callq  400c00 <close@plt>
  40202b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402030:	e9 f6 01 00 00       	jmpq   40222b <submitr+0x6ce>
  402035:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40203c:	00 
  40203d:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402042:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402049:	00 
  40204a:	be af 2e 40 00       	mov    $0x402eaf,%esi
  40204f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402056:	00 
  402057:	b8 00 00 00 00       	mov    $0x0,%eax
  40205c:	e8 2f ec ff ff       	callq  400c90 <__isoc99_sscanf@plt>
  402061:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402066:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40206d:	0f 84 be 00 00 00    	je     402131 <submitr+0x5d4>
  402073:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40207a:	00 
  40207b:	b9 f8 2d 40 00       	mov    $0x402df8,%ecx
  402080:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402087:	be 01 00 00 00       	mov    $0x1,%esi
  40208c:	4c 89 ff             	mov    %r15,%rdi
  40208f:	b8 00 00 00 00       	mov    $0x0,%eax
  402094:	e8 87 ec ff ff       	callq  400d20 <__sprintf_chk@plt>
  402099:	44 89 e7             	mov    %r12d,%edi
  40209c:	e8 5f eb ff ff       	callq  400c00 <close@plt>
  4020a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020a6:	e9 80 01 00 00       	jmpq   40222b <submitr+0x6ce>
  4020ab:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020b0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4020b7:	00 
  4020b8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4020bd:	e8 a9 f9 ff ff       	callq  401a6b <rio_readlineb>
  4020c2:	48 85 c0             	test   %rax,%rax
  4020c5:	7f 6a                	jg     402131 <submitr+0x5d4>
  4020c7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4020ce:	3a 20 43 
  4020d1:	49 89 07             	mov    %rax,(%r15)
  4020d4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020db:	20 75 6e 
  4020de:	49 89 47 08          	mov    %rax,0x8(%r15)
  4020e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020e9:	74 6f 20 
  4020ec:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020f0:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4020f7:	68 65 61 
  4020fa:	49 89 47 18          	mov    %rax,0x18(%r15)
  4020fe:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402105:	66 72 6f 
  402108:	49 89 47 20          	mov    %rax,0x20(%r15)
  40210c:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  402113:	76 65 72 
  402116:	49 89 47 28          	mov    %rax,0x28(%r15)
  40211a:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  40211f:	44 89 e7             	mov    %r12d,%edi
  402122:	e8 d9 ea ff ff       	callq  400c00 <close@plt>
  402127:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40212c:	e9 fa 00 00 00       	jmpq   40222b <submitr+0x6ce>
  402131:	80 bc 24 50 20 00 00 	cmpb   $0xd,0x2050(%rsp)
  402138:	0d 
  402139:	0f 85 6c ff ff ff    	jne    4020ab <submitr+0x54e>
  40213f:	80 bc 24 51 20 00 00 	cmpb   $0xa,0x2051(%rsp)
  402146:	0a 
  402147:	0f 85 5e ff ff ff    	jne    4020ab <submitr+0x54e>
  40214d:	80 bc 24 52 20 00 00 	cmpb   $0x0,0x2052(%rsp)
  402154:	00 
  402155:	0f 85 50 ff ff ff    	jne    4020ab <submitr+0x54e>
  40215b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402160:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402167:	00 
  402168:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40216d:	e8 f9 f8 ff ff       	callq  401a6b <rio_readlineb>
  402172:	48 85 c0             	test   %rax,%rax
  402175:	7f 70                	jg     4021e7 <submitr+0x68a>
  402177:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40217e:	3a 20 43 
  402181:	49 89 07             	mov    %rax,(%r15)
  402184:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40218b:	20 75 6e 
  40218e:	49 89 47 08          	mov    %rax,0x8(%r15)
  402192:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402199:	74 6f 20 
  40219c:	49 89 47 10          	mov    %rax,0x10(%r15)
  4021a0:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4021a7:	73 74 61 
  4021aa:	49 89 47 18          	mov    %rax,0x18(%r15)
  4021ae:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4021b5:	65 73 73 
  4021b8:	49 89 47 20          	mov    %rax,0x20(%r15)
  4021bc:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4021c3:	72 6f 6d 
  4021c6:	49 89 47 28          	mov    %rax,0x28(%r15)
  4021ca:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  4021d1:	65 72 00 
  4021d4:	49 89 47 30          	mov    %rax,0x30(%r15)
  4021d8:	44 89 e7             	mov    %r12d,%edi
  4021db:	e8 20 ea ff ff       	callq  400c00 <close@plt>
  4021e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021e5:	eb 44                	jmp    40222b <submitr+0x6ce>
  4021e7:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4021ee:	00 
  4021ef:	4c 89 ff             	mov    %r15,%rdi
  4021f2:	e8 b9 e9 ff ff       	callq  400bb0 <strcpy@plt>
  4021f7:	44 89 e7             	mov    %r12d,%edi
  4021fa:	e8 01 ea ff ff       	callq  400c00 <close@plt>
  4021ff:	41 0f b6 17          	movzbl (%r15),%edx
  402203:	b8 4f 00 00 00       	mov    $0x4f,%eax
  402208:	29 d0                	sub    %edx,%eax
  40220a:	75 15                	jne    402221 <submitr+0x6c4>
  40220c:	41 0f b6 57 01       	movzbl 0x1(%r15),%edx
  402211:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402216:	29 d0                	sub    %edx,%eax
  402218:	75 07                	jne    402221 <submitr+0x6c4>
  40221a:	41 0f b6 47 02       	movzbl 0x2(%r15),%eax
  40221f:	f7 d8                	neg    %eax
  402221:	85 c0                	test   %eax,%eax
  402223:	0f 95 c0             	setne  %al
  402226:	0f b6 c0             	movzbl %al,%eax
  402229:	f7 d8                	neg    %eax
  40222b:	48 8b 8c 24 58 a0 00 	mov    0xa058(%rsp),%rcx
  402232:	00 
  402233:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40223a:	00 00 
  40223c:	0f 84 12 01 00 00    	je     402354 <submitr+0x7f7>
  402242:	e9 08 01 00 00       	jmpq   40234f <submitr+0x7f2>
  402247:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40224e:	3a 20 52 
  402251:	49 89 07             	mov    %rax,(%r15)
  402254:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40225b:	20 73 74 
  40225e:	49 89 47 08          	mov    %rax,0x8(%r15)
  402262:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402269:	63 6f 6e 
  40226c:	49 89 47 10          	mov    %rax,0x10(%r15)
  402270:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402277:	20 61 6e 
  40227a:	49 89 47 18          	mov    %rax,0x18(%r15)
  40227e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402285:	67 61 6c 
  402288:	49 89 47 20          	mov    %rax,0x20(%r15)
  40228c:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402293:	6e 70 72 
  402296:	49 89 47 28          	mov    %rax,0x28(%r15)
  40229a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4022a1:	6c 65 20 
  4022a4:	49 89 47 30          	mov    %rax,0x30(%r15)
  4022a8:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4022af:	63 74 65 
  4022b2:	49 89 47 38          	mov    %rax,0x38(%r15)
  4022b6:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  4022bd:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  4022c2:	44 89 e7             	mov    %r12d,%edi
  4022c5:	e8 36 e9 ff ff       	callq  400c00 <close@plt>
  4022ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022cf:	e9 57 ff ff ff       	jmpq   40222b <submitr+0x6ce>
  4022d4:	48 8d 9c 24 50 20 00 	lea    0x2050(%rsp),%rbx
  4022db:	00 
  4022dc:	48 83 ec 08          	sub    $0x8,%rsp
  4022e0:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  4022e7:	00 
  4022e8:	50                   	push   %rax
  4022e9:	ff 74 24 20          	pushq  0x20(%rsp)
  4022ed:	ff 74 24 30          	pushq  0x30(%rsp)
  4022f1:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
  4022f6:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  4022fb:	b9 28 2e 40 00       	mov    $0x402e28,%ecx
  402300:	ba 00 20 00 00       	mov    $0x2000,%edx
  402305:	be 01 00 00 00       	mov    $0x1,%esi
  40230a:	48 89 df             	mov    %rbx,%rdi
  40230d:	b8 00 00 00 00       	mov    $0x0,%eax
  402312:	e8 09 ea ff ff       	callq  400d20 <__sprintf_chk@plt>
  402317:	b8 00 00 00 00       	mov    $0x0,%eax
  40231c:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402323:	48 89 df             	mov    %rbx,%rdi
  402326:	f2 ae                	repnz scas %es:(%rdi),%al
  402328:	48 89 c8             	mov    %rcx,%rax
  40232b:	48 f7 d0             	not    %rax
  40232e:	4c 8d 68 ff          	lea    -0x1(%rax),%r13
  402332:	48 83 c4 20          	add    $0x20,%rsp
  402336:	4c 89 eb             	mov    %r13,%rbx
  402339:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
  402340:	00 
  402341:	4d 85 ed             	test   %r13,%r13
  402344:	0f 85 b6 fb ff ff    	jne    401f00 <submitr+0x3a3>
  40234a:	e9 3f fc ff ff       	jmpq   401f8e <submitr+0x431>
  40234f:	e8 8c e8 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  402354:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40235b:	5b                   	pop    %rbx
  40235c:	5d                   	pop    %rbp
  40235d:	41 5c                	pop    %r12
  40235f:	41 5d                	pop    %r13
  402361:	41 5e                	pop    %r14
  402363:	41 5f                	pop    %r15
  402365:	c3                   	retq   

0000000000402366 <init_timeout>:
  402366:	85 ff                	test   %edi,%edi
  402368:	74 22                	je     40238c <init_timeout+0x26>
  40236a:	53                   	push   %rbx
  40236b:	89 fb                	mov    %edi,%ebx
  40236d:	be 3d 1a 40 00       	mov    $0x401a3d,%esi
  402372:	bf 0e 00 00 00       	mov    $0xe,%edi
  402377:	e8 c4 e8 ff ff       	callq  400c40 <signal@plt>
  40237c:	85 db                	test   %ebx,%ebx
  40237e:	bf 00 00 00 00       	mov    $0x0,%edi
  402383:	0f 49 fb             	cmovns %ebx,%edi
  402386:	e8 65 e8 ff ff       	callq  400bf0 <alarm@plt>
  40238b:	5b                   	pop    %rbx
  40238c:	f3 c3                	repz retq 

000000000040238e <init_driver>:
  40238e:	55                   	push   %rbp
  40238f:	53                   	push   %rbx
  402390:	48 83 ec 28          	sub    $0x28,%rsp
  402394:	48 89 fd             	mov    %rdi,%rbp
  402397:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40239e:	00 00 
  4023a0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4023a5:	31 c0                	xor    %eax,%eax
  4023a7:	be 01 00 00 00       	mov    $0x1,%esi
  4023ac:	bf 0d 00 00 00       	mov    $0xd,%edi
  4023b1:	e8 8a e8 ff ff       	callq  400c40 <signal@plt>
  4023b6:	be 01 00 00 00       	mov    $0x1,%esi
  4023bb:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4023c0:	e8 7b e8 ff ff       	callq  400c40 <signal@plt>
  4023c5:	be 01 00 00 00       	mov    $0x1,%esi
  4023ca:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4023cf:	e8 6c e8 ff ff       	callq  400c40 <signal@plt>
  4023d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4023d9:	be 01 00 00 00       	mov    $0x1,%esi
  4023de:	bf 02 00 00 00       	mov    $0x2,%edi
  4023e3:	e8 48 e9 ff ff       	callq  400d30 <socket@plt>
  4023e8:	85 c0                	test   %eax,%eax
  4023ea:	79 4f                	jns    40243b <init_driver+0xad>
  4023ec:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4023f3:	3a 20 43 
  4023f6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4023fa:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402401:	20 75 6e 
  402404:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402408:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40240f:	74 6f 20 
  402412:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402416:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40241d:	65 20 73 
  402420:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402424:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40242b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402431:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402436:	e9 0c 01 00 00       	jmpq   402547 <init_driver+0x1b9>
  40243b:	89 c3                	mov    %eax,%ebx
  40243d:	bf c0 2e 40 00       	mov    $0x402ec0,%edi
  402442:	e8 09 e8 ff ff       	callq  400c50 <gethostbyname@plt>
  402447:	48 85 c0             	test   %rax,%rax
  40244a:	75 68                	jne    4024b4 <init_driver+0x126>
  40244c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402453:	3a 20 44 
  402456:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40245a:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402461:	20 75 6e 
  402464:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402468:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40246f:	74 6f 20 
  402472:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402476:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  40247d:	76 65 20 
  402480:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402484:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40248b:	72 20 61 
  40248e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402492:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402499:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40249f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4024a3:	89 df                	mov    %ebx,%edi
  4024a5:	e8 56 e7 ff ff       	callq  400c00 <close@plt>
  4024aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024af:	e9 93 00 00 00       	jmpq   402547 <init_driver+0x1b9>
  4024b4:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4024bb:	00 
  4024bc:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4024c3:	00 00 
  4024c5:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4024cb:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4024cf:	48 8b 40 18          	mov    0x18(%rax),%rax
  4024d3:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4024d8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4024dd:	48 8b 30             	mov    (%rax),%rsi
  4024e0:	e8 7b e7 ff ff       	callq  400c60 <__memmove_chk@plt>
  4024e5:	66 c7 44 24 02 1f 94 	movw   $0x941f,0x2(%rsp)
  4024ec:	ba 10 00 00 00       	mov    $0x10,%edx
  4024f1:	48 89 e6             	mov    %rsp,%rsi
  4024f4:	89 df                	mov    %ebx,%edi
  4024f6:	e8 e5 e7 ff ff       	callq  400ce0 <connect@plt>
  4024fb:	85 c0                	test   %eax,%eax
  4024fd:	79 32                	jns    402531 <init_driver+0x1a3>
  4024ff:	41 b8 c0 2e 40 00    	mov    $0x402ec0,%r8d
  402505:	b9 80 2e 40 00       	mov    $0x402e80,%ecx
  40250a:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402511:	be 01 00 00 00       	mov    $0x1,%esi
  402516:	48 89 ef             	mov    %rbp,%rdi
  402519:	b8 00 00 00 00       	mov    $0x0,%eax
  40251e:	e8 fd e7 ff ff       	callq  400d20 <__sprintf_chk@plt>
  402523:	89 df                	mov    %ebx,%edi
  402525:	e8 d6 e6 ff ff       	callq  400c00 <close@plt>
  40252a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40252f:	eb 16                	jmp    402547 <init_driver+0x1b9>
  402531:	89 df                	mov    %ebx,%edi
  402533:	e8 c8 e6 ff ff       	callq  400c00 <close@plt>
  402538:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40253e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402542:	b8 00 00 00 00       	mov    $0x0,%eax
  402547:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40254c:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402553:	00 00 
  402555:	74 05                	je     40255c <init_driver+0x1ce>
  402557:	e8 84 e6 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  40255c:	48 83 c4 28          	add    $0x28,%rsp
  402560:	5b                   	pop    %rbx
  402561:	5d                   	pop    %rbp
  402562:	c3                   	retq   

0000000000402563 <driver_post>:
  402563:	53                   	push   %rbx
  402564:	4c 89 c3             	mov    %r8,%rbx
  402567:	85 c9                	test   %ecx,%ecx
  402569:	74 24                	je     40258f <driver_post+0x2c>
  40256b:	be d8 2e 40 00       	mov    $0x402ed8,%esi
  402570:	bf 01 00 00 00       	mov    $0x1,%edi
  402575:	b8 00 00 00 00       	mov    $0x0,%eax
  40257a:	e8 21 e7 ff ff       	callq  400ca0 <__printf_chk@plt>
  40257f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402584:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402588:	b8 00 00 00 00       	mov    $0x0,%eax
  40258d:	eb 41                	jmp    4025d0 <driver_post+0x6d>
  40258f:	48 85 ff             	test   %rdi,%rdi
  402592:	74 2e                	je     4025c2 <driver_post+0x5f>
  402594:	80 3f 00             	cmpb   $0x0,(%rdi)
  402597:	74 29                	je     4025c2 <driver_post+0x5f>
  402599:	41 50                	push   %r8
  40259b:	52                   	push   %rdx
  40259c:	41 b9 ef 2e 40 00    	mov    $0x402eef,%r9d
  4025a2:	49 89 f0             	mov    %rsi,%r8
  4025a5:	48 89 f9             	mov    %rdi,%rcx
  4025a8:	ba f3 2e 40 00       	mov    $0x402ef3,%edx
  4025ad:	be 94 1f 00 00       	mov    $0x1f94,%esi
  4025b2:	bf c0 2e 40 00       	mov    $0x402ec0,%edi
  4025b7:	e8 a1 f5 ff ff       	callq  401b5d <submitr>
  4025bc:	48 83 c4 10          	add    $0x10,%rsp
  4025c0:	eb 0e                	jmp    4025d0 <driver_post+0x6d>
  4025c2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4025c7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4025cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d0:	5b                   	pop    %rbx
  4025d1:	c3                   	retq   
  4025d2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4025d9:	00 00 00 
  4025dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004025e0 <__libc_csu_init>:
  4025e0:	41 57                	push   %r15
  4025e2:	41 56                	push   %r14
  4025e4:	41 89 ff             	mov    %edi,%r15d
  4025e7:	41 55                	push   %r13
  4025e9:	41 54                	push   %r12
  4025eb:	4c 8d 25 1e 18 20 00 	lea    0x20181e(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  4025f2:	55                   	push   %rbp
  4025f3:	48 8d 2d 1e 18 20 00 	lea    0x20181e(%rip),%rbp        # 603e18 <__init_array_end>
  4025fa:	53                   	push   %rbx
  4025fb:	49 89 f6             	mov    %rsi,%r14
  4025fe:	49 89 d5             	mov    %rdx,%r13
  402601:	4c 29 e5             	sub    %r12,%rbp
  402604:	48 83 ec 08          	sub    $0x8,%rsp
  402608:	48 c1 fd 03          	sar    $0x3,%rbp
  40260c:	e8 27 e5 ff ff       	callq  400b38 <_init>
  402611:	48 85 ed             	test   %rbp,%rbp
  402614:	74 20                	je     402636 <__libc_csu_init+0x56>
  402616:	31 db                	xor    %ebx,%ebx
  402618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40261f:	00 
  402620:	4c 89 ea             	mov    %r13,%rdx
  402623:	4c 89 f6             	mov    %r14,%rsi
  402626:	44 89 ff             	mov    %r15d,%edi
  402629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40262d:	48 83 c3 01          	add    $0x1,%rbx
  402631:	48 39 eb             	cmp    %rbp,%rbx
  402634:	75 ea                	jne    402620 <__libc_csu_init+0x40>
  402636:	48 83 c4 08          	add    $0x8,%rsp
  40263a:	5b                   	pop    %rbx
  40263b:	5d                   	pop    %rbp
  40263c:	41 5c                	pop    %r12
  40263e:	41 5d                	pop    %r13
  402640:	41 5e                	pop    %r14
  402642:	41 5f                	pop    %r15
  402644:	c3                   	retq   
  402645:	90                   	nop
  402646:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40264d:	00 00 00 

0000000000402650 <__libc_csu_fini>:
  402650:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402654 <_fini>:
  402654:	48 83 ec 08          	sub    $0x8,%rsp
  402658:	48 83 c4 08          	add    $0x8,%rsp
  40265c:	c3                   	retq   
