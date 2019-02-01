0000000000400590 <smooth>:
  400590:	55                   	push   %rbp
  400591:	48 89 e5             	mov    %rsp,%rbp
  400594:	8b 45 10             	mov    0x10(%rbp),%eax
  400597:	b9 01 00 00 00       	mov    $0x1,%ecx
  40059c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40059f:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  4005a3:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
  4005a7:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  4005ab:	89 4d dc             	mov    %ecx,-0x24(%rbp)
  4005ae:	e9 00 00 00 00       	jmpq   4005b3 <smooth+0x23>
  4005b3:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4005b6:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  4005b9:	39 c8                	cmp    %ecx,%eax
  4005bb:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4005be:	0f 8d 44 00 00 00    	jge    400608 <smooth+0x78>
  4005c4:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4005c7:	48 63 c8             	movslq %eax,%rcx
  4005ca:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4005ce:	8b 34 8a             	mov    (%rdx,%rcx,4),%esi
  4005d1:	89 f7                	mov    %esi,%edi
  4005d3:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4005d7:	41 03 3c 88          	add    (%r8,%rcx,4),%edi
  4005db:	c1 e7 01             	shl    $0x1,%edi
  4005de:	83 ef 01             	sub    $0x1,%edi
  4005e1:	48 63 cf             	movslq %edi,%rcx
  4005e4:	4c 8b 4d f0          	mov    -0x10(%rbp),%r9
  4005e8:	f2 41 0f 10 04 c9    	movsd  (%r9,%rcx,8),%xmm0
  4005ee:	c1 e6 01             	shl    $0x1,%esi
  4005f1:	83 ee 01             	sub    $0x1,%esi
  4005f4:	48 63 ce             	movslq %esi,%rcx
  4005f7:	f2 41 0f 11 04 c9    	movsd  %xmm0,(%r9,%rcx,8)
  4005fd:	83 c0 01             	add    $0x1,%eax
  400600:	89 45 dc             	mov    %eax,-0x24(%rbp)
  400603:	e9 ab ff ff ff       	jmpq   4005b3 <smooth+0x23>
  400608:	31 c0                	xor    %eax,%eax
  40060a:	5d                   	pop    %rbp
  40060b:	c3                   	retq   
  40060c:	0f 1f 40 00          	nopl   0x0(%rax)