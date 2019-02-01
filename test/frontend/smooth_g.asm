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
  4005ae:	8b 45 dc             	mov    -0x24(%rbp),%eax             // load i to %eax
  4005b1:	8b 4d fc             	mov    -0x4(%rbp),%ecx              // load mpsi to %ecx
  4005b4:	39 c8                	cmp    %ecx,%eax                    // i < mpsi ?
  4005b6:	89 45 d8             	mov    %eax,-0x28(%rbp)             // save i to stack
  4005b9:	0f 8d 44 00 00 00    	jge    400603 <smooth+0x73>         // terminate the loop if i >= mpsi
  4005bf:	8b 45 d8             	mov    -0x28(%rbp),%eax             // %eax = i
  4005c2:	48 63 c8             	movslq %eax,%rcx                    // %rcx = %eax = i
  4005c5:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx             // load igrid to %rdx (the base addr of igrid)
  4005c9:	8b 34 8a             	mov    (%rdx,%rcx,4),%esi           // %esi = igrid[i]
  4005cc:	89 f7                	mov    %esi,%edi                    // %edi = %esi = igrid[i]
  4005ce:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8              // %r8 = mtheta
  4005d2:	41 03 3c 88          	add    (%r8,%rcx,4),%edi            // %edi = mtheta[i] + igrid[i]
  4005d6:	c1 e7 01             	shl    $0x1,%edi                    // %edi = %edi * 2 = (mtheta[i] + igrid[i]) * 2
  4005d9:	83 ef 01             	sub    $0x1,%edi                    // %edi = %edi - 1 = (mtheta[i] + igrid[i]) *2 - 1
  4005dc:	48 63 cf             	movslq %edi,%rcx                    // %rcx = (mtheta[i] + igrid[i]) *2 - 1
  4005df:	4c 8b 4d f0          	mov    -0x10(%rbp),%r9              // %r9 = phitmp
  4005e3:	f2 41 0f 10 04 c9    	movsd  (%r9,%rcx,8),%xmm0           // %xmm0 = phitmp[(mtheta[i] + igrid[i]) *2 - 1]
  4005e9:	c1 e6 01             	shl    $0x1,%esi                    // %esi = %esi * 2 = igrid[i] * 2
  4005ec:	83 ee 01             	sub    $0x1,%esi                    // %esi = %esi - 1 = igrid[i] * 2 - 1
  4005ef:	48 63 ce             	movslq %esi,%rcx                    // %rcx = %esi = igrid[i] * 2 - 1
  4005f2:	f2 41 0f 11 04 c9    	movsd  %xmm0,(%r9,%rcx,8)           // phitmp[igrid[i] * 2 - 1] = %xmm0 = phitmp[(mtheta[i] + igrid[i]) *2 - 1]
  4005f8:	83 c0 01             	add    $0x1,%eax                    // %eax = %eax + 1, i = i + 1
  4005fb:	89 45 dc             	mov    %eax,-0x24(%rbp)             // store i to memory
  4005fe:	e9 ab ff ff ff       	jmpq   4005ae <smooth+0x1e>
  400603:	31 c0                	xor    %eax,%eax
  400605:	5d                   	pop    %rbp
  400606:	c3                   	retq   
  400607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40060e:	00 00
