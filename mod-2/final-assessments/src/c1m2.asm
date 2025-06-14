
c1m2.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 c5 2f 00 00 	mov    0x2fc5(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <putchar@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <putchar@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <putchar@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	49 89 d1             	mov    %rdx,%r9
    1055:	5e                   	pop    %rsi
    1056:	48 89 e2             	mov    %rsp,%rdx
    1059:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    105d:	50                   	push   %rax
    105e:	54                   	push   %rsp
    105f:	45 31 c0             	xor    %r8d,%r8d
    1062:	31 c9                	xor    %ecx,%ecx
    1064:	48 8d 3d ce 00 00 00 	lea    0xce(%rip),%rdi        # 1139 <main>
    106b:	ff 15 4f 2f 00 00    	call   *0x2f4f(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1071:	f4                   	hlt
    1072:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1079:	00 00 00 
    107c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4018 <__TMC_END__>
    1087:	48 8d 05 8a 2f 00 00 	lea    0x2f8a(%rip),%rax        # 4018 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 61 2f 00 00 	lea    0x2f61(%rip),%rdi        # 4018 <__TMC_END__>
    10b7:	48 8d 35 5a 2f 00 00 	lea    0x2f5a(%rip),%rsi        # 4018 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    %rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 1d 2f 00 00 00 	cmpb   $0x0,0x2f1d(%rip)        # 4018 <__TMC_END__>
    10fb:	75 2b                	jne    1128 <__do_global_dtors_aux+0x38>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0c                	je     1117 <__do_global_dtors_aux+0x27>
    110b:	48 8b 3d fe 2e 00 00 	mov    0x2efe(%rip),%rdi        # 4010 <__dso_handle>
    1112:	e8 29 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1117:	e8 64 ff ff ff       	call   1080 <deregister_tm_clones>
    111c:	c6 05 f5 2e 00 00 01 	movb   $0x1,0x2ef5(%rip)        # 4018 <__TMC_END__>
    1123:	5d                   	pop    %rbp
    1124:	c3                   	ret
    1125:	0f 1f 00             	nopl   (%rax)
    1128:	c3                   	ret
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	e9 77 ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001139 <main>:
    1139:	55                   	push   %rbp
    113a:	48 89 e5             	mov    %rsp,%rbp
    113d:	48 83 ec 10          	sub    $0x10,%rsp
    1141:	be 0a 00 00 00       	mov    $0xa,%esi
    1146:	48 8d 05 d3 2e 00 00 	lea    0x2ed3(%rip),%rax        # 4020 <buffer>
    114d:	48 89 c7             	mov    %rax,%rdi
    1150:	e8 00 02 00 00       	call   1355 <clear_all>
    1155:	48 8d 05 cc 2e 00 00 	lea    0x2ecc(%rip),%rax        # 4028 <buffer+0x8>
    115c:	ba 02 00 00 00       	mov    $0x2,%edx
    1161:	be 2b 00 00 00       	mov    $0x2b,%esi
    1166:	48 89 c7             	mov    %rax,%rdi
    1169:	e8 a5 01 00 00       	call   1313 <set_all>
    116e:	ba 61 00 00 00       	mov    $0x61,%edx
    1173:	be 00 00 00 00       	mov    $0x0,%esi
    1178:	48 8d 05 a1 2e 00 00 	lea    0x2ea1(%rip),%rax        # 4020 <buffer>
    117f:	48 89 c7             	mov    %rax,%rdi
    1182:	e8 27 01 00 00       	call   12ae <set_value>
    1187:	be 09 00 00 00       	mov    $0x9,%esi
    118c:	48 8d 05 8d 2e 00 00 	lea    0x2e8d(%rip),%rax        # 4020 <buffer>
    1193:	48 89 c7             	mov    %rax,%rdi
    1196:	e8 5e 01 00 00       	call   12f9 <get_value>
    119b:	88 45 fb             	mov    %al,-0x5(%rbp)
    119e:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    11a2:	83 c0 27             	add    $0x27,%eax
    11a5:	0f be c0             	movsbl %al,%eax
    11a8:	89 c2                	mov    %eax,%edx
    11aa:	be 09 00 00 00       	mov    $0x9,%esi
    11af:	48 8d 05 6a 2e 00 00 	lea    0x2e6a(%rip),%rax        # 4020 <buffer>
    11b6:	48 89 c7             	mov    %rax,%rdi
    11b9:	e8 f0 00 00 00       	call   12ae <set_value>
    11be:	ba 37 00 00 00       	mov    $0x37,%edx
    11c3:	be 03 00 00 00       	mov    $0x3,%esi
    11c8:	48 8d 05 51 2e 00 00 	lea    0x2e51(%rip),%rax        # 4020 <buffer>
    11cf:	48 89 c7             	mov    %rax,%rdi
    11d2:	e8 d7 00 00 00       	call   12ae <set_value>
    11d7:	ba 58 00 00 00       	mov    $0x58,%edx
    11dc:	be 01 00 00 00       	mov    $0x1,%esi
    11e1:	48 8d 05 38 2e 00 00 	lea    0x2e38(%rip),%rax        # 4020 <buffer>
    11e8:	48 89 c7             	mov    %rax,%rdi
    11eb:	e8 be 00 00 00       	call   12ae <set_value>
    11f0:	ba 32 00 00 00       	mov    $0x32,%edx
    11f5:	be 04 00 00 00       	mov    $0x4,%esi
    11fa:	48 8d 05 1f 2e 00 00 	lea    0x2e1f(%rip),%rax        # 4020 <buffer>
    1201:	48 89 c7             	mov    %rax,%rdi
    1204:	e8 a5 00 00 00       	call   12ae <set_value>
    1209:	be 01 00 00 00       	mov    $0x1,%esi
    120e:	48 8d 05 0b 2e 00 00 	lea    0x2e0b(%rip),%rax        # 4020 <buffer>
    1215:	48 89 c7             	mov    %rax,%rdi
    1218:	e8 dc 00 00 00       	call   12f9 <get_value>
    121d:	88 45 fb             	mov    %al,-0x5(%rbp)
    1220:	ba 79 00 00 00       	mov    $0x79,%edx
    1225:	be 02 00 00 00       	mov    $0x2,%esi
    122a:	48 8d 05 ef 2d 00 00 	lea    0x2def(%rip),%rax        # 4020 <buffer>
    1231:	48 89 c7             	mov    %rax,%rdi
    1234:	e8 75 00 00 00       	call   12ae <set_value>
    1239:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
    123d:	83 e8 0c             	sub    $0xc,%eax
    1240:	0f be c0             	movsbl %al,%eax
    1243:	89 c2                	mov    %eax,%edx
    1245:	be 07 00 00 00       	mov    $0x7,%esi
    124a:	48 8d 05 cf 2d 00 00 	lea    0x2dcf(%rip),%rax        # 4020 <buffer>
    1251:	48 89 c7             	mov    %rax,%rdi
    1254:	e8 55 00 00 00       	call   12ae <set_value>
    1259:	ba 5f 00 00 00       	mov    $0x5f,%edx
    125e:	be 05 00 00 00       	mov    $0x5,%esi
    1263:	48 8d 05 b6 2d 00 00 	lea    0x2db6(%rip),%rax        # 4020 <buffer>
    126a:	48 89 c7             	mov    %rax,%rdi
    126d:	e8 3c 00 00 00       	call   12ae <set_value>
    1272:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1279:	eb 1c                	jmp    1297 <main+0x15e>
    127b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    127e:	48 8d 15 9b 2d 00 00 	lea    0x2d9b(%rip),%rdx        # 4020 <buffer>
    1285:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1289:	0f be c0             	movsbl %al,%eax
    128c:	89 c7                	mov    %eax,%edi
    128e:	e8 9d fd ff ff       	call   1030 <putchar@plt>
    1293:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1297:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    129b:	76 de                	jbe    127b <main+0x142>
    129d:	bf 0a 00 00 00       	mov    $0xa,%edi
    12a2:	e8 89 fd ff ff       	call   1030 <putchar@plt>
    12a7:	b8 00 00 00 00       	mov    $0x0,%eax
    12ac:	c9                   	leave
    12ad:	c3                   	ret

00000000000012ae <set_value>:
    12ae:	55                   	push   %rbp
    12af:	48 89 e5             	mov    %rsp,%rbp
    12b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12b6:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12b9:	89 d0                	mov    %edx,%eax
    12bb:	88 45 f0             	mov    %al,-0x10(%rbp)
    12be:	8b 55 f4             	mov    -0xc(%rbp),%edx
    12c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12c5:	48 01 c2             	add    %rax,%rdx
    12c8:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
    12cc:	88 02                	mov    %al,(%rdx)
    12ce:	90                   	nop
    12cf:	5d                   	pop    %rbp
    12d0:	c3                   	ret

00000000000012d1 <clear_value>:
    12d1:	55                   	push   %rbp
    12d2:	48 89 e5             	mov    %rsp,%rbp
    12d5:	48 83 ec 10          	sub    $0x10,%rsp
    12d9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12dd:	89 75 f4             	mov    %esi,-0xc(%rbp)
    12e0:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    12e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12e7:	ba 00 00 00 00       	mov    $0x0,%edx
    12ec:	89 ce                	mov    %ecx,%esi
    12ee:	48 89 c7             	mov    %rax,%rdi
    12f1:	e8 b8 ff ff ff       	call   12ae <set_value>
    12f6:	90                   	nop
    12f7:	c9                   	leave
    12f8:	c3                   	ret

00000000000012f9 <get_value>:
    12f9:	55                   	push   %rbp
    12fa:	48 89 e5             	mov    %rsp,%rbp
    12fd:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1301:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1304:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1307:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    130b:	48 01 d0             	add    %rdx,%rax
    130e:	0f b6 00             	movzbl (%rax),%eax
    1311:	5d                   	pop    %rbp
    1312:	c3                   	ret

0000000000001313 <set_all>:
    1313:	55                   	push   %rbp
    1314:	48 89 e5             	mov    %rsp,%rbp
    1317:	48 83 ec 20          	sub    $0x20,%rsp
    131b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    131f:	89 f0                	mov    %esi,%eax
    1321:	89 55 e0             	mov    %edx,-0x20(%rbp)
    1324:	88 45 e4             	mov    %al,-0x1c(%rbp)
    1327:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    132e:	eb 19                	jmp    1349 <set_all+0x36>
    1330:	0f be 55 e4          	movsbl -0x1c(%rbp),%edx
    1334:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    1337:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    133b:	89 ce                	mov    %ecx,%esi
    133d:	48 89 c7             	mov    %rax,%rdi
    1340:	e8 69 ff ff ff       	call   12ae <set_value>
    1345:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1349:	8b 45 fc             	mov    -0x4(%rbp),%eax
    134c:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    134f:	72 df                	jb     1330 <set_all+0x1d>
    1351:	90                   	nop
    1352:	90                   	nop
    1353:	c9                   	leave
    1354:	c3                   	ret

0000000000001355 <clear_all>:
    1355:	55                   	push   %rbp
    1356:	48 89 e5             	mov    %rsp,%rbp
    1359:	48 83 ec 10          	sub    $0x10,%rsp
    135d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1361:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1364:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1367:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    136b:	be 00 00 00 00       	mov    $0x0,%esi
    1370:	48 89 c7             	mov    %rax,%rdi
    1373:	e8 9b ff ff ff       	call   1313 <set_all>
    1378:	90                   	nop
    1379:	c9                   	leave
    137a:	c3                   	ret

Disassembly of section .fini:

000000000000137c <_fini>:
    137c:	48 83 ec 08          	sub    $0x8,%rsp
    1380:	48 83 c4 08          	add    $0x8,%rsp
    1384:	c3                   	ret
