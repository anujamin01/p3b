
_test_13:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}


int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 ba 08 00 00       	call   8d3 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 e0 11 00 00       	mov    %eax,0x11e0
   assert(fib(28) == 317811);
  23:	e8 18 01 00 00       	call   140 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 92 00 00 00    	jne    c8 <main+0xc8>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d c8 11 00 00 00 	cmpl   $0x0,0x11c8
   int arg1 = 11, arg2 = 22;
  3d:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
  44:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   for (int i = 0; i < num_threads; i++) {
  4b:	0f 8e d3 00 00 00    	jle    124 <main+0x124>
  51:	31 db                	xor    %ebx,%ebx
  53:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  56:	8d 75 e0             	lea    -0x20(%ebp),%esi
  59:	eb 11                	jmp    6c <main+0x6c>
  5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  5f:	90                   	nop
  60:	a1 c8 11 00 00       	mov    0x11c8,%eax
  65:	83 c3 01             	add    $0x1,%ebx
  68:	39 d8                	cmp    %ebx,%eax
  6a:	7e 79                	jle    e5 <main+0xe5>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  6c:	83 ec 04             	sub    $0x4,%esp
  6f:	57                   	push   %edi
  70:	56                   	push   %esi
  71:	68 50 03 00 00       	push   $0x350
  76:	e8 55 04 00 00       	call   4d0 <thread_create>
      assert(thread_pid > 0);
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	7f de                	jg     60 <main+0x60>
  82:	6a 2e                	push   $0x2e
  84:	68 e8 0c 00 00       	push   $0xce8
  89:	68 f2 0c 00 00       	push   $0xcf2
  8e:	6a 01                	push   $0x1
  90:	e8 2b 09 00 00       	call   9c0 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 90 0d 00 00       	push   $0xd90
  9d:	68 05 0d 00 00       	push   $0xd05
  a2:	6a 01                	push   $0x1
  a4:	e8 17 09 00 00       	call   9c0 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 19 0d 00 00       	push   $0xd19
  b0:	6a 01                	push   $0x1
  b2:	e8 09 09 00 00       	call   9c0 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 e0 11 00 00    	push   0x11e0
  be:	e8 c0 07 00 00       	call   883 <kill>
  c3:	e8 8b 07 00 00       	call   853 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 e8 0c 00 00       	push   $0xce8
  cf:	68 f2 0c 00 00       	push   $0xcf2
  d4:	6a 01                	push   $0x1
  d6:	e8 e5 08 00 00       	call   9c0 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 71 0d 00 00       	push   $0xd71
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d c8 11 00 00    	cmp    %ebx,0x11c8
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 60 04 00 00       	call   560 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 e8 0c 00 00       	push   $0xce8
 10b:	68 f2 0c 00 00       	push   $0xcf2
 110:	6a 01                	push   $0x1
 112:	e8 a9 08 00 00       	call   9c0 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 9f 0d 00 00       	push   $0xd9f
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 83 0d 00 00       	push   $0xd83
 12b:	6a 01                	push   $0x1
 12d:	e8 8e 08 00 00       	call   9c0 <printf>
   exit();
 132:	e8 1c 07 00 00       	call   853 <exit>
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <fib>:
unsigned int fib(unsigned int n) {
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	83 ec 4c             	sub    $0x4c,%esp
   if (n == 0) {
 149:	8b 45 08             	mov    0x8(%ebp),%eax
 14c:	85 c0                	test   %eax,%eax
 14e:	0f 84 7d 01 00 00    	je     2d1 <fib+0x191>
   } else if (n == 1) {
 154:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 158:	0f 84 73 01 00 00    	je     2d1 <fib+0x191>
 15e:	8b 45 08             	mov    0x8(%ebp),%eax
 161:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
 168:	89 45 d8             	mov    %eax,-0x28(%ebp)
      return fib(n - 1) + fib(n - 2);
 16b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 16e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 175:	83 e8 01             	sub    $0x1,%eax
 178:	89 45 b8             	mov    %eax,-0x48(%ebp)
   } else if (n == 1) {
 17b:	8b 45 b8             	mov    -0x48(%ebp),%eax
 17e:	83 f8 01             	cmp    $0x1,%eax
 181:	0f 84 2c 01 00 00    	je     2b3 <fib+0x173>
      return fib(n - 1) + fib(n - 2);
 187:	83 e8 01             	sub    $0x1,%eax
 18a:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 191:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   } else if (n == 1) {
 194:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 197:	83 f8 01             	cmp    $0x1,%eax
 19a:	0f 84 90 01 00 00    	je     330 <fib+0x1f0>
      return fib(n - 1) + fib(n - 2);
 1a0:	83 e8 01             	sub    $0x1,%eax
 1a3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 1aa:	89 45 ac             	mov    %eax,-0x54(%ebp)
   } else if (n == 1) {
 1ad:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1b0:	83 f8 01             	cmp    $0x1,%eax
 1b3:	0f 84 5e 01 00 00    	je     317 <fib+0x1d7>
      return fib(n - 1) + fib(n - 2);
 1b9:	83 e8 01             	sub    $0x1,%eax
 1bc:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 1c3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   } else if (n == 1) {
 1c6:	8b 45 b0             	mov    -0x50(%ebp),%eax
 1c9:	83 f8 01             	cmp    $0x1,%eax
 1cc:	0f 84 3c 01 00 00    	je     30e <fib+0x1ce>
      return fib(n - 1) + fib(n - 2);
 1d2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 1d9:	8d 48 ff             	lea    -0x1(%eax),%ecx
 1dc:	89 cb                	mov    %ecx,%ebx
   } else if (n == 1) {
 1de:	83 fb 01             	cmp    $0x1,%ebx
 1e1:	0f 84 13 01 00 00    	je     2fa <fib+0x1ba>
      return fib(n - 1) + fib(n - 2);
 1e7:	8d 43 ff             	lea    -0x1(%ebx),%eax
 1ea:	83 eb 02             	sub    $0x2,%ebx
 1ed:	31 c9                	xor    %ecx,%ecx
 1ef:	89 45 e0             	mov    %eax,-0x20(%ebp)
 1f2:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 1f5:	89 5d c4             	mov    %ebx,-0x3c(%ebp)
   } else if (n == 1) {
 1f8:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 1fc:	0f 84 01 01 00 00    	je     303 <fib+0x1c3>
 202:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 205:	31 c0                	xor    %eax,%eax
 207:	89 d7                	mov    %edx,%edi
 209:	89 c2                	mov    %eax,%edx
 20b:	83 ff 01             	cmp    $0x1,%edi
 20e:	0f 84 dc 00 00 00    	je     2f0 <fib+0x1b0>
      return fib(n - 1) + fib(n - 2);
 214:	89 7d c0             	mov    %edi,-0x40(%ebp)
 217:	8d 5f ff             	lea    -0x1(%edi),%ebx
 21a:	31 f6                	xor    %esi,%esi
 21c:	89 cf                	mov    %ecx,%edi
   } else if (n == 1) {
 21e:	83 fb 01             	cmp    $0x1,%ebx
 221:	0f 84 b9 00 00 00    	je     2e0 <fib+0x1a0>
      return fib(n - 1) + fib(n - 2);
 227:	83 ec 0c             	sub    $0xc,%esp
 22a:	8d 43 ff             	lea    -0x1(%ebx),%eax
 22d:	89 55 bc             	mov    %edx,-0x44(%ebp)
 230:	50                   	push   %eax
 231:	e8 0a ff ff ff       	call   140 <fib>
 236:	83 c4 10             	add    $0x10,%esp
   if (n == 0) {
 239:	8b 55 bc             	mov    -0x44(%ebp),%edx
 23c:	01 c6                	add    %eax,%esi
 23e:	83 eb 02             	sub    $0x2,%ebx
 241:	75 db                	jne    21e <fib+0xde>
 243:	89 f9                	mov    %edi,%ecx
 245:	8b 7d c0             	mov    -0x40(%ebp),%edi
 248:	01 f2                	add    %esi,%edx
 24a:	83 ef 02             	sub    $0x2,%edi
 24d:	75 bc                	jne    20b <fib+0xcb>
 24f:	89 d7                	mov    %edx,%edi
 251:	83 6d e4 02          	subl   $0x2,-0x1c(%ebp)
 255:	01 f9                	add    %edi,%ecx
 257:	83 6d e0 02          	subl   $0x2,-0x20(%ebp)
 25b:	75 9b                	jne    1f8 <fib+0xb8>
 25d:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 260:	01 4d dc             	add    %ecx,-0x24(%ebp)
 263:	85 db                	test   %ebx,%ebx
 265:	0f 85 73 ff ff ff    	jne    1de <fib+0x9e>
 26b:	8b 75 dc             	mov    -0x24(%ebp),%esi
 26e:	01 75 c8             	add    %esi,-0x38(%ebp)
 271:	83 6d b0 02          	subl   $0x2,-0x50(%ebp)
 275:	0f 85 4b ff ff ff    	jne    1c6 <fib+0x86>
 27b:	8b 75 c8             	mov    -0x38(%ebp),%esi
 27e:	01 75 cc             	add    %esi,-0x34(%ebp)
 281:	83 6d ac 02          	subl   $0x2,-0x54(%ebp)
 285:	0f 85 22 ff ff ff    	jne    1ad <fib+0x6d>
 28b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 28e:	01 75 d0             	add    %esi,-0x30(%ebp)
 291:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 295:	0f 85 f9 fe ff ff    	jne    194 <fib+0x54>
 29b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 29e:	01 75 d4             	add    %esi,-0x2c(%ebp)
 2a1:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 2a5:	74 10                	je     2b7 <fib+0x177>
   } else if (n == 1) {
 2a7:	8b 45 b8             	mov    -0x48(%ebp),%eax
 2aa:	83 f8 01             	cmp    $0x1,%eax
 2ad:	0f 85 d4 fe ff ff    	jne    187 <fib+0x47>
 2b3:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 2b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 2ba:	01 45 08             	add    %eax,0x8(%ebp)
   if (n == 0) {
 2bd:	83 6d d8 02          	subl   $0x2,-0x28(%ebp)
 2c1:	74 0e                	je     2d1 <fib+0x191>
   } else if (n == 1) {
 2c3:	83 7d d8 01          	cmpl   $0x1,-0x28(%ebp)
 2c7:	0f 85 9e fe ff ff    	jne    16b <fib+0x2b>
 2cd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
}
 2d1:	8b 45 08             	mov    0x8(%ebp),%eax
 2d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d7:	5b                   	pop    %ebx
 2d8:	5e                   	pop    %esi
 2d9:	5f                   	pop    %edi
 2da:	5d                   	pop    %ebp
 2db:	c3                   	ret    
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	89 f9                	mov    %edi,%ecx
 2e2:	83 c6 01             	add    $0x1,%esi
 2e5:	8b 7d c0             	mov    -0x40(%ebp),%edi
 2e8:	e9 5b ff ff ff       	jmp    248 <fib+0x108>
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	89 d7                	mov    %edx,%edi
 2f2:	83 c7 01             	add    $0x1,%edi
 2f5:	e9 57 ff ff ff       	jmp    251 <fib+0x111>
 2fa:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 2fe:	e9 68 ff ff ff       	jmp    26b <fib+0x12b>
 303:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 306:	83 c1 01             	add    $0x1,%ecx
 309:	e9 52 ff ff ff       	jmp    260 <fib+0x120>
 30e:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 312:	e9 64 ff ff ff       	jmp    27b <fib+0x13b>
 317:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 31b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 31e:	01 75 d0             	add    %esi,-0x30(%ebp)
   if (n == 0) {
 321:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 325:	0f 85 69 fe ff ff    	jne    194 <fib+0x54>
 32b:	e9 6b ff ff ff       	jmp    29b <fib+0x15b>
 330:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 334:	8b 75 d0             	mov    -0x30(%ebp),%esi
 337:	01 75 d4             	add    %esi,-0x2c(%ebp)
 33a:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 33e:	0f 85 63 ff ff ff    	jne    2a7 <fib+0x167>
 344:	e9 6e ff ff ff       	jmp    2b7 <fib+0x177>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <worker>:
}

void
worker(void *arg1, void *arg2) {
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 356:	8b 45 0c             	mov    0xc(%ebp),%eax
 359:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 11);
 35b:	8b 45 08             	mov    0x8(%ebp),%eax
 35e:	83 38 0b             	cmpl   $0xb,(%eax)
 361:	75 75                	jne    3d8 <worker+0x88>
   assert(tmp2 == 22);
 363:	83 fa 16             	cmp    $0x16,%edx
 366:	75 2a                	jne    392 <worker+0x42>
   assert(global == 1);
 368:	83 3d cc 11 00 00 01 	cmpl   $0x1,0x11cc
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 e8 0c 00 00       	push   $0xce8
 37c:	68 f2 0c 00 00       	push   $0xcf2
 381:	6a 01                	push   $0x1
 383:	e8 38 06 00 00       	call   9c0 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 31 0d 00 00       	push   $0xd31
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 e8 0c 00 00       	push   $0xce8
 399:	68 f2 0c 00 00       	push   $0xcf2
 39e:	6a 01                	push   $0x1
 3a0:	e8 1b 06 00 00       	call   9c0 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 26 0d 00 00       	push   $0xd26
 3ad:	68 05 0d 00 00       	push   $0xd05
 3b2:	6a 01                	push   $0x1
 3b4:	e8 07 06 00 00       	call   9c0 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 19 0d 00 00       	push   $0xd19
 3c0:	6a 01                	push   $0x1
 3c2:	e8 f9 05 00 00       	call   9c0 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 e0 11 00 00    	push   0x11e0
 3ce:	e8 b0 04 00 00       	call   883 <kill>
 3d3:	e8 7b 04 00 00       	call   853 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 e8 0c 00 00       	push   $0xce8
 3df:	68 f2 0c 00 00       	push   $0xcf2
 3e4:	6a 01                	push   $0x1
 3e6:	e8 d5 05 00 00       	call   9c0 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 fa 0c 00 00       	push   $0xcfa
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 e8 0c 00 00       	push   $0xce8
 40e:	68 f2 0c 00 00       	push   $0xcf2
 413:	6a 01                	push   $0x1
 415:	e8 a6 05 00 00       	call   9c0 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 3d 0d 00 00       	push   $0xd3d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 e8 0c 00 00       	push   $0xce8
 43d:	68 f2 0c 00 00       	push   $0xcf2
 442:	6a 01                	push   $0x1
 444:	e8 77 05 00 00       	call   9c0 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 49 0d 00 00       	push   $0xd49
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 e8 0c 00 00       	push   $0xce8
 46f:	68 f2 0c 00 00       	push   $0xcf2
 474:	6a 01                	push   $0x1
 476:	e8 45 05 00 00       	call   9c0 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 55 0d 00 00       	push   $0xd55
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 e8 0c 00 00       	push   $0xce8
 4a3:	68 f2 0c 00 00       	push   $0xcf2
 4a8:	6a 01                	push   $0x1
 4aa:	e8 11 05 00 00       	call   9c0 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 62 0d 00 00       	push   $0xd62
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 92 03 00 00       	call   853 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 4d5:	31 db                	xor    %ebx,%ebx
 4d7:	eb 0f                	jmp    4e8 <thread_create+0x18>
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e0:	83 c3 01             	add    $0x1,%ebx
 4e3:	83 fb 40             	cmp    $0x40,%ebx
 4e6:	74 60                	je     548 <thread_create+0x78>
    if (inUse[i] == 0){
 4e8:	8b 04 9d 00 12 00 00 	mov    0x1200(,%ebx,4),%eax
 4ef:	85 c0                	test   %eax,%eax
 4f1:	75 ed                	jne    4e0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 4f3:	a1 d0 11 00 00       	mov    0x11d0,%eax
 4f8:	83 ec 0c             	sub    $0xc,%esp
 4fb:	01 c0                	add    %eax,%eax
 4fd:	50                   	push   %eax
 4fe:	e8 ed 06 00 00       	call   bf0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 503:	8b 35 d0 11 00 00    	mov    0x11d0,%esi
 509:	83 c4 10             	add    $0x10,%esp
 50c:	99                   	cltd   
      malloc_addrs[i] = stack;
 50d:	89 04 9d 00 13 00 00 	mov    %eax,0x1300(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 514:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 516:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 518:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 51b:	29 d6                	sub    %edx,%esi
 51d:	01 f1                	add    %esi,%ecx
 51f:	85 d2                	test   %edx,%edx
 521:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 524:	51                   	push   %ecx
 525:	ff 75 10             	push   0x10(%ebp)
 528:	ff 75 0c             	push   0xc(%ebp)
 52b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 52e:	89 0c 9d 00 14 00 00 	mov    %ecx,0x1400(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 535:	e8 b9 03 00 00       	call   8f3 <clone>
 53a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 53d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 540:	5b                   	pop    %ebx
 541:	5e                   	pop    %esi
 542:	5d                   	pop    %ebp
 543:	c3                   	ret    
 544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 548:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 54b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 550:	5b                   	pop    %ebx
 551:	5e                   	pop    %esi
 552:	5d                   	pop    %ebp
 553:	c3                   	ret    
 554:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <thread_join>:

int 
thread_join()
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	56                   	push   %esi
 564:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 565:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 568:	31 db                	xor    %ebx,%ebx
{
 56a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 56d:	50                   	push   %eax
 56e:	e8 88 03 00 00       	call   8fb <join>
 573:	83 c4 10             	add    $0x10,%esp
 576:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 578:	eb 0e                	jmp    588 <thread_join+0x28>
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 580:	83 c3 01             	add    $0x1,%ebx
 583:	83 fb 40             	cmp    $0x40,%ebx
 586:	74 27                	je     5af <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 588:	83 3c 9d 00 12 00 00 	cmpl   $0x1,0x1200(,%ebx,4)
 58f:	01 
 590:	75 ee                	jne    580 <thread_join+0x20>
      free(malloc_addrs[i]);
 592:	83 ec 0c             	sub    $0xc,%esp
 595:	ff 34 9d 00 13 00 00 	push   0x1300(,%ebx,4)
 59c:	e8 bf 05 00 00       	call   b60 <free>
      inUse[i] = 0;
      break;
 5a1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 5a4:	c7 04 9d 00 12 00 00 	movl   $0x0,0x1200(,%ebx,4)
 5ab:	00 00 00 00 
    }
  }
  return id;
}
 5af:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5b2:	89 f0                	mov    %esi,%eax
 5b4:	5b                   	pop    %ebx
 5b5:	5e                   	pop    %esi
 5b6:	5d                   	pop    %ebp
 5b7:	c3                   	ret    
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <lock_init>:

void lock_init(lock_t *lock){
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 5c3:	8b 45 08             	mov    0x8(%ebp),%eax
 5c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 5cc:	5d                   	pop    %ebp
 5cd:	c3                   	ret    
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 5d0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5d1:	b9 01 00 00 00       	mov    $0x1,%ecx
 5d6:	89 e5                	mov    %esp,%ebp
 5d8:	8b 55 08             	mov    0x8(%ebp),%edx
 5db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop
 5e0:	89 c8                	mov    %ecx,%eax
 5e2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 5e5:	85 c0                	test   %eax,%eax
 5e7:	75 f7                	jne    5e0 <lock_acquire+0x10>
}
 5e9:	5d                   	pop    %ebp
 5ea:	c3                   	ret    
 5eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5ef:	90                   	nop

000005f0 <lock_release>:

void lock_release(lock_t *lock){
 5f0:	55                   	push   %ebp
 5f1:	31 c0                	xor    %eax,%eax
 5f3:	89 e5                	mov    %esp,%ebp
 5f5:	8b 55 08             	mov    0x8(%ebp),%edx
 5f8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 5fb:	5d                   	pop    %ebp
 5fc:	c3                   	ret    
 5fd:	8d 76 00             	lea    0x0(%esi),%esi

00000600 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 600:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 601:	31 c0                	xor    %eax,%eax
{
 603:	89 e5                	mov    %esp,%ebp
 605:	53                   	push   %ebx
 606:	8b 4d 08             	mov    0x8(%ebp),%ecx
 609:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 610:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 614:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 617:	83 c0 01             	add    $0x1,%eax
 61a:	84 d2                	test   %dl,%dl
 61c:	75 f2                	jne    610 <strcpy+0x10>
    ;
  return os;
}
 61e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 621:	89 c8                	mov    %ecx,%eax
 623:	c9                   	leave  
 624:	c3                   	ret    
 625:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	53                   	push   %ebx
 634:	8b 55 08             	mov    0x8(%ebp),%edx
 637:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 63a:	0f b6 02             	movzbl (%edx),%eax
 63d:	84 c0                	test   %al,%al
 63f:	75 17                	jne    658 <strcmp+0x28>
 641:	eb 3a                	jmp    67d <strcmp+0x4d>
 643:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 647:	90                   	nop
 648:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 64c:	83 c2 01             	add    $0x1,%edx
 64f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 652:	84 c0                	test   %al,%al
 654:	74 1a                	je     670 <strcmp+0x40>
    p++, q++;
 656:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 658:	0f b6 19             	movzbl (%ecx),%ebx
 65b:	38 c3                	cmp    %al,%bl
 65d:	74 e9                	je     648 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 65f:	29 d8                	sub    %ebx,%eax
}
 661:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 664:	c9                   	leave  
 665:	c3                   	ret    
 666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 670:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 674:	31 c0                	xor    %eax,%eax
 676:	29 d8                	sub    %ebx,%eax
}
 678:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 67b:	c9                   	leave  
 67c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 67d:	0f b6 19             	movzbl (%ecx),%ebx
 680:	31 c0                	xor    %eax,%eax
 682:	eb db                	jmp    65f <strcmp+0x2f>
 684:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <strlen>:

uint
strlen(const char *s)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 696:	80 3a 00             	cmpb   $0x0,(%edx)
 699:	74 15                	je     6b0 <strlen+0x20>
 69b:	31 c0                	xor    %eax,%eax
 69d:	8d 76 00             	lea    0x0(%esi),%esi
 6a0:	83 c0 01             	add    $0x1,%eax
 6a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 6a7:	89 c1                	mov    %eax,%ecx
 6a9:	75 f5                	jne    6a0 <strlen+0x10>
    ;
  return n;
}
 6ab:	89 c8                	mov    %ecx,%eax
 6ad:	5d                   	pop    %ebp
 6ae:	c3                   	ret    
 6af:	90                   	nop
  for(n = 0; s[n]; n++)
 6b0:	31 c9                	xor    %ecx,%ecx
}
 6b2:	5d                   	pop    %ebp
 6b3:	89 c8                	mov    %ecx,%eax
 6b5:	c3                   	ret    
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi

000006c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 6c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 6ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 6cd:	89 d7                	mov    %edx,%edi
 6cf:	fc                   	cld    
 6d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 6d5:	89 d0                	mov    %edx,%eax
 6d7:	c9                   	leave  
 6d8:	c3                   	ret    
 6d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006e0 <strchr>:

char*
strchr(const char *s, char c)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	8b 45 08             	mov    0x8(%ebp),%eax
 6e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 6ea:	0f b6 10             	movzbl (%eax),%edx
 6ed:	84 d2                	test   %dl,%dl
 6ef:	75 12                	jne    703 <strchr+0x23>
 6f1:	eb 1d                	jmp    710 <strchr+0x30>
 6f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6f7:	90                   	nop
 6f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 6fc:	83 c0 01             	add    $0x1,%eax
 6ff:	84 d2                	test   %dl,%dl
 701:	74 0d                	je     710 <strchr+0x30>
    if(*s == c)
 703:	38 d1                	cmp    %dl,%cl
 705:	75 f1                	jne    6f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 707:	5d                   	pop    %ebp
 708:	c3                   	ret    
 709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 710:	31 c0                	xor    %eax,%eax
}
 712:	5d                   	pop    %ebp
 713:	c3                   	ret    
 714:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop

00000720 <gets>:

char*
gets(char *buf, int max)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 725:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 728:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 729:	31 db                	xor    %ebx,%ebx
{
 72b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 72e:	eb 27                	jmp    757 <gets+0x37>
    cc = read(0, &c, 1);
 730:	83 ec 04             	sub    $0x4,%esp
 733:	6a 01                	push   $0x1
 735:	57                   	push   %edi
 736:	6a 00                	push   $0x0
 738:	e8 2e 01 00 00       	call   86b <read>
    if(cc < 1)
 73d:	83 c4 10             	add    $0x10,%esp
 740:	85 c0                	test   %eax,%eax
 742:	7e 1d                	jle    761 <gets+0x41>
      break;
    buf[i++] = c;
 744:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 748:	8b 55 08             	mov    0x8(%ebp),%edx
 74b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 74f:	3c 0a                	cmp    $0xa,%al
 751:	74 1d                	je     770 <gets+0x50>
 753:	3c 0d                	cmp    $0xd,%al
 755:	74 19                	je     770 <gets+0x50>
  for(i=0; i+1 < max; ){
 757:	89 de                	mov    %ebx,%esi
 759:	83 c3 01             	add    $0x1,%ebx
 75c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 75f:	7c cf                	jl     730 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 761:	8b 45 08             	mov    0x8(%ebp),%eax
 764:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 768:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76b:	5b                   	pop    %ebx
 76c:	5e                   	pop    %esi
 76d:	5f                   	pop    %edi
 76e:	5d                   	pop    %ebp
 76f:	c3                   	ret    
  buf[i] = '\0';
 770:	8b 45 08             	mov    0x8(%ebp),%eax
 773:	89 de                	mov    %ebx,%esi
 775:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 779:	8d 65 f4             	lea    -0xc(%ebp),%esp
 77c:	5b                   	pop    %ebx
 77d:	5e                   	pop    %esi
 77e:	5f                   	pop    %edi
 77f:	5d                   	pop    %ebp
 780:	c3                   	ret    
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop

00000790 <stat>:

int
stat(const char *n, struct stat *st)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	56                   	push   %esi
 794:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 795:	83 ec 08             	sub    $0x8,%esp
 798:	6a 00                	push   $0x0
 79a:	ff 75 08             	push   0x8(%ebp)
 79d:	e8 f1 00 00 00       	call   893 <open>
  if(fd < 0)
 7a2:	83 c4 10             	add    $0x10,%esp
 7a5:	85 c0                	test   %eax,%eax
 7a7:	78 27                	js     7d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 7a9:	83 ec 08             	sub    $0x8,%esp
 7ac:	ff 75 0c             	push   0xc(%ebp)
 7af:	89 c3                	mov    %eax,%ebx
 7b1:	50                   	push   %eax
 7b2:	e8 f4 00 00 00       	call   8ab <fstat>
  close(fd);
 7b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 7ba:	89 c6                	mov    %eax,%esi
  close(fd);
 7bc:	e8 ba 00 00 00       	call   87b <close>
  return r;
 7c1:	83 c4 10             	add    $0x10,%esp
}
 7c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 7c7:	89 f0                	mov    %esi,%eax
 7c9:	5b                   	pop    %ebx
 7ca:	5e                   	pop    %esi
 7cb:	5d                   	pop    %ebp
 7cc:	c3                   	ret    
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 7d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 7d5:	eb ed                	jmp    7c4 <stat+0x34>
 7d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7de:	66 90                	xchg   %ax,%ax

000007e0 <atoi>:

int
atoi(const char *s)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	53                   	push   %ebx
 7e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7e7:	0f be 02             	movsbl (%edx),%eax
 7ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 7ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 7f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 7f5:	77 1e                	ja     815 <atoi+0x35>
 7f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 800:	83 c2 01             	add    $0x1,%edx
 803:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 806:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 80a:	0f be 02             	movsbl (%edx),%eax
 80d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 810:	80 fb 09             	cmp    $0x9,%bl
 813:	76 eb                	jbe    800 <atoi+0x20>
  return n;
}
 815:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 818:	89 c8                	mov    %ecx,%eax
 81a:	c9                   	leave  
 81b:	c3                   	ret    
 81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000820 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	8b 45 10             	mov    0x10(%ebp),%eax
 827:	8b 55 08             	mov    0x8(%ebp),%edx
 82a:	56                   	push   %esi
 82b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 82e:	85 c0                	test   %eax,%eax
 830:	7e 13                	jle    845 <memmove+0x25>
 832:	01 d0                	add    %edx,%eax
  dst = vdst;
 834:	89 d7                	mov    %edx,%edi
 836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 840:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 841:	39 f8                	cmp    %edi,%eax
 843:	75 fb                	jne    840 <memmove+0x20>
  return vdst;
}
 845:	5e                   	pop    %esi
 846:	89 d0                	mov    %edx,%eax
 848:	5f                   	pop    %edi
 849:	5d                   	pop    %ebp
 84a:	c3                   	ret    

0000084b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 84b:	b8 01 00 00 00       	mov    $0x1,%eax
 850:	cd 40                	int    $0x40
 852:	c3                   	ret    

00000853 <exit>:
SYSCALL(exit)
 853:	b8 02 00 00 00       	mov    $0x2,%eax
 858:	cd 40                	int    $0x40
 85a:	c3                   	ret    

0000085b <wait>:
SYSCALL(wait)
 85b:	b8 03 00 00 00       	mov    $0x3,%eax
 860:	cd 40                	int    $0x40
 862:	c3                   	ret    

00000863 <pipe>:
SYSCALL(pipe)
 863:	b8 04 00 00 00       	mov    $0x4,%eax
 868:	cd 40                	int    $0x40
 86a:	c3                   	ret    

0000086b <read>:
SYSCALL(read)
 86b:	b8 05 00 00 00       	mov    $0x5,%eax
 870:	cd 40                	int    $0x40
 872:	c3                   	ret    

00000873 <write>:
SYSCALL(write)
 873:	b8 10 00 00 00       	mov    $0x10,%eax
 878:	cd 40                	int    $0x40
 87a:	c3                   	ret    

0000087b <close>:
SYSCALL(close)
 87b:	b8 15 00 00 00       	mov    $0x15,%eax
 880:	cd 40                	int    $0x40
 882:	c3                   	ret    

00000883 <kill>:
SYSCALL(kill)
 883:	b8 06 00 00 00       	mov    $0x6,%eax
 888:	cd 40                	int    $0x40
 88a:	c3                   	ret    

0000088b <exec>:
SYSCALL(exec)
 88b:	b8 07 00 00 00       	mov    $0x7,%eax
 890:	cd 40                	int    $0x40
 892:	c3                   	ret    

00000893 <open>:
SYSCALL(open)
 893:	b8 0f 00 00 00       	mov    $0xf,%eax
 898:	cd 40                	int    $0x40
 89a:	c3                   	ret    

0000089b <mknod>:
SYSCALL(mknod)
 89b:	b8 11 00 00 00       	mov    $0x11,%eax
 8a0:	cd 40                	int    $0x40
 8a2:	c3                   	ret    

000008a3 <unlink>:
SYSCALL(unlink)
 8a3:	b8 12 00 00 00       	mov    $0x12,%eax
 8a8:	cd 40                	int    $0x40
 8aa:	c3                   	ret    

000008ab <fstat>:
SYSCALL(fstat)
 8ab:	b8 08 00 00 00       	mov    $0x8,%eax
 8b0:	cd 40                	int    $0x40
 8b2:	c3                   	ret    

000008b3 <link>:
SYSCALL(link)
 8b3:	b8 13 00 00 00       	mov    $0x13,%eax
 8b8:	cd 40                	int    $0x40
 8ba:	c3                   	ret    

000008bb <mkdir>:
SYSCALL(mkdir)
 8bb:	b8 14 00 00 00       	mov    $0x14,%eax
 8c0:	cd 40                	int    $0x40
 8c2:	c3                   	ret    

000008c3 <chdir>:
SYSCALL(chdir)
 8c3:	b8 09 00 00 00       	mov    $0x9,%eax
 8c8:	cd 40                	int    $0x40
 8ca:	c3                   	ret    

000008cb <dup>:
SYSCALL(dup)
 8cb:	b8 0a 00 00 00       	mov    $0xa,%eax
 8d0:	cd 40                	int    $0x40
 8d2:	c3                   	ret    

000008d3 <getpid>:
SYSCALL(getpid)
 8d3:	b8 0b 00 00 00       	mov    $0xb,%eax
 8d8:	cd 40                	int    $0x40
 8da:	c3                   	ret    

000008db <sbrk>:
SYSCALL(sbrk)
 8db:	b8 0c 00 00 00       	mov    $0xc,%eax
 8e0:	cd 40                	int    $0x40
 8e2:	c3                   	ret    

000008e3 <sleep>:
SYSCALL(sleep)
 8e3:	b8 0d 00 00 00       	mov    $0xd,%eax
 8e8:	cd 40                	int    $0x40
 8ea:	c3                   	ret    

000008eb <uptime>:
SYSCALL(uptime)
 8eb:	b8 0e 00 00 00       	mov    $0xe,%eax
 8f0:	cd 40                	int    $0x40
 8f2:	c3                   	ret    

000008f3 <clone>:
SYSCALL(clone)
 8f3:	b8 16 00 00 00       	mov    $0x16,%eax
 8f8:	cd 40                	int    $0x40
 8fa:	c3                   	ret    

000008fb <join>:
SYSCALL(join)
 8fb:	b8 17 00 00 00       	mov    $0x17,%eax
 900:	cd 40                	int    $0x40
 902:	c3                   	ret    
 903:	66 90                	xchg   %ax,%ax
 905:	66 90                	xchg   %ax,%ax
 907:	66 90                	xchg   %ax,%ax
 909:	66 90                	xchg   %ax,%ax
 90b:	66 90                	xchg   %ax,%ax
 90d:	66 90                	xchg   %ax,%ax
 90f:	90                   	nop

00000910 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 910:	55                   	push   %ebp
 911:	89 e5                	mov    %esp,%ebp
 913:	57                   	push   %edi
 914:	56                   	push   %esi
 915:	53                   	push   %ebx
 916:	83 ec 3c             	sub    $0x3c,%esp
 919:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 91c:	89 d1                	mov    %edx,%ecx
{
 91e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 921:	85 d2                	test   %edx,%edx
 923:	0f 89 7f 00 00 00    	jns    9a8 <printint+0x98>
 929:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 92d:	74 79                	je     9a8 <printint+0x98>
    neg = 1;
 92f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 936:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 938:	31 db                	xor    %ebx,%ebx
 93a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 93d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 940:	89 c8                	mov    %ecx,%eax
 942:	31 d2                	xor    %edx,%edx
 944:	89 cf                	mov    %ecx,%edi
 946:	f7 75 c4             	divl   -0x3c(%ebp)
 949:	0f b6 92 0c 0e 00 00 	movzbl 0xe0c(%edx),%edx
 950:	89 45 c0             	mov    %eax,-0x40(%ebp)
 953:	89 d8                	mov    %ebx,%eax
 955:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 958:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 95b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 95e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 961:	76 dd                	jbe    940 <printint+0x30>
  if(neg)
 963:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 966:	85 c9                	test   %ecx,%ecx
 968:	74 0c                	je     976 <printint+0x66>
    buf[i++] = '-';
 96a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 96f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 971:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 976:	8b 7d b8             	mov    -0x48(%ebp),%edi
 979:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 97d:	eb 07                	jmp    986 <printint+0x76>
 97f:	90                   	nop
    putc(fd, buf[i]);
 980:	0f b6 13             	movzbl (%ebx),%edx
 983:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 986:	83 ec 04             	sub    $0x4,%esp
 989:	88 55 d7             	mov    %dl,-0x29(%ebp)
 98c:	6a 01                	push   $0x1
 98e:	56                   	push   %esi
 98f:	57                   	push   %edi
 990:	e8 de fe ff ff       	call   873 <write>
  while(--i >= 0)
 995:	83 c4 10             	add    $0x10,%esp
 998:	39 de                	cmp    %ebx,%esi
 99a:	75 e4                	jne    980 <printint+0x70>
}
 99c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 99f:	5b                   	pop    %ebx
 9a0:	5e                   	pop    %esi
 9a1:	5f                   	pop    %edi
 9a2:	5d                   	pop    %ebp
 9a3:	c3                   	ret    
 9a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 9af:	eb 87                	jmp    938 <printint+0x28>
 9b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9bf:	90                   	nop

000009c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 9cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 9cf:	0f b6 13             	movzbl (%ebx),%edx
 9d2:	84 d2                	test   %dl,%dl
 9d4:	74 6a                	je     a40 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 9d6:	8d 45 10             	lea    0x10(%ebp),%eax
 9d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 9e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9e4:	eb 36                	jmp    a1c <printf+0x5c>
 9e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
 9f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 9f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 9f8:	83 f8 25             	cmp    $0x25,%eax
 9fb:	74 15                	je     a12 <printf+0x52>
  write(fd, &c, 1);
 9fd:	83 ec 04             	sub    $0x4,%esp
 a00:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a03:	6a 01                	push   $0x1
 a05:	57                   	push   %edi
 a06:	56                   	push   %esi
 a07:	e8 67 fe ff ff       	call   873 <write>
 a0c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a0f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a12:	0f b6 13             	movzbl (%ebx),%edx
 a15:	83 c3 01             	add    $0x1,%ebx
 a18:	84 d2                	test   %dl,%dl
 a1a:	74 24                	je     a40 <printf+0x80>
    c = fmt[i] & 0xff;
 a1c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a1f:	85 c9                	test   %ecx,%ecx
 a21:	74 cd                	je     9f0 <printf+0x30>
      }
    } else if(state == '%'){
 a23:	83 f9 25             	cmp    $0x25,%ecx
 a26:	75 ea                	jne    a12 <printf+0x52>
      if(c == 'd'){
 a28:	83 f8 25             	cmp    $0x25,%eax
 a2b:	0f 84 07 01 00 00    	je     b38 <printf+0x178>
 a31:	83 e8 63             	sub    $0x63,%eax
 a34:	83 f8 15             	cmp    $0x15,%eax
 a37:	77 17                	ja     a50 <printf+0x90>
 a39:	ff 24 85 b4 0d 00 00 	jmp    *0xdb4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a40:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a43:	5b                   	pop    %ebx
 a44:	5e                   	pop    %esi
 a45:	5f                   	pop    %edi
 a46:	5d                   	pop    %ebp
 a47:	c3                   	ret    
 a48:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a4f:	90                   	nop
  write(fd, &c, 1);
 a50:	83 ec 04             	sub    $0x4,%esp
 a53:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 a56:	6a 01                	push   $0x1
 a58:	57                   	push   %edi
 a59:	56                   	push   %esi
 a5a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a5e:	e8 10 fe ff ff       	call   873 <write>
        putc(fd, c);
 a63:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 a67:	83 c4 0c             	add    $0xc,%esp
 a6a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a6d:	6a 01                	push   $0x1
 a6f:	57                   	push   %edi
 a70:	56                   	push   %esi
 a71:	e8 fd fd ff ff       	call   873 <write>
        putc(fd, c);
 a76:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a79:	31 c9                	xor    %ecx,%ecx
 a7b:	eb 95                	jmp    a12 <printf+0x52>
 a7d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a80:	83 ec 0c             	sub    $0xc,%esp
 a83:	b9 10 00 00 00       	mov    $0x10,%ecx
 a88:	6a 00                	push   $0x0
 a8a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a8d:	8b 10                	mov    (%eax),%edx
 a8f:	89 f0                	mov    %esi,%eax
 a91:	e8 7a fe ff ff       	call   910 <printint>
        ap++;
 a96:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a9a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a9d:	31 c9                	xor    %ecx,%ecx
 a9f:	e9 6e ff ff ff       	jmp    a12 <printf+0x52>
 aa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 aa8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 aab:	8b 10                	mov    (%eax),%edx
        ap++;
 aad:	83 c0 04             	add    $0x4,%eax
 ab0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 ab3:	85 d2                	test   %edx,%edx
 ab5:	0f 84 8d 00 00 00    	je     b48 <printf+0x188>
        while(*s != 0){
 abb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 abe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 ac0:	84 c0                	test   %al,%al
 ac2:	0f 84 4a ff ff ff    	je     a12 <printf+0x52>
 ac8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 acb:	89 d3                	mov    %edx,%ebx
 acd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 ad0:	83 ec 04             	sub    $0x4,%esp
          s++;
 ad3:	83 c3 01             	add    $0x1,%ebx
 ad6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ad9:	6a 01                	push   $0x1
 adb:	57                   	push   %edi
 adc:	56                   	push   %esi
 add:	e8 91 fd ff ff       	call   873 <write>
        while(*s != 0){
 ae2:	0f b6 03             	movzbl (%ebx),%eax
 ae5:	83 c4 10             	add    $0x10,%esp
 ae8:	84 c0                	test   %al,%al
 aea:	75 e4                	jne    ad0 <printf+0x110>
      state = 0;
 aec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 aef:	31 c9                	xor    %ecx,%ecx
 af1:	e9 1c ff ff ff       	jmp    a12 <printf+0x52>
 af6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 afd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b00:	83 ec 0c             	sub    $0xc,%esp
 b03:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b08:	6a 01                	push   $0x1
 b0a:	e9 7b ff ff ff       	jmp    a8a <printf+0xca>
 b0f:	90                   	nop
        putc(fd, *ap);
 b10:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b13:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b16:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b18:	6a 01                	push   $0x1
 b1a:	57                   	push   %edi
 b1b:	56                   	push   %esi
        putc(fd, *ap);
 b1c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b1f:	e8 4f fd ff ff       	call   873 <write>
        ap++;
 b24:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b28:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b2b:	31 c9                	xor    %ecx,%ecx
 b2d:	e9 e0 fe ff ff       	jmp    a12 <printf+0x52>
 b32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b38:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b3b:	83 ec 04             	sub    $0x4,%esp
 b3e:	e9 2a ff ff ff       	jmp    a6d <printf+0xad>
 b43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b47:	90                   	nop
          s = "(null)";
 b48:	ba ac 0d 00 00       	mov    $0xdac,%edx
        while(*s != 0){
 b4d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b50:	b8 28 00 00 00       	mov    $0x28,%eax
 b55:	89 d3                	mov    %edx,%ebx
 b57:	e9 74 ff ff ff       	jmp    ad0 <printf+0x110>
 b5c:	66 90                	xchg   %ax,%ax
 b5e:	66 90                	xchg   %ax,%ax

00000b60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b61:	a1 00 15 00 00       	mov    0x1500,%eax
{
 b66:	89 e5                	mov    %esp,%ebp
 b68:	57                   	push   %edi
 b69:	56                   	push   %esi
 b6a:	53                   	push   %ebx
 b6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b78:	89 c2                	mov    %eax,%edx
 b7a:	8b 00                	mov    (%eax),%eax
 b7c:	39 ca                	cmp    %ecx,%edx
 b7e:	73 30                	jae    bb0 <free+0x50>
 b80:	39 c1                	cmp    %eax,%ecx
 b82:	72 04                	jb     b88 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b84:	39 c2                	cmp    %eax,%edx
 b86:	72 f0                	jb     b78 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b88:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b8b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b8e:	39 f8                	cmp    %edi,%eax
 b90:	74 30                	je     bc2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 b92:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b95:	8b 42 04             	mov    0x4(%edx),%eax
 b98:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b9b:	39 f1                	cmp    %esi,%ecx
 b9d:	74 3a                	je     bd9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 b9f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ba1:	5b                   	pop    %ebx
  freep = p;
 ba2:	89 15 00 15 00 00    	mov    %edx,0x1500
}
 ba8:	5e                   	pop    %esi
 ba9:	5f                   	pop    %edi
 baa:	5d                   	pop    %ebp
 bab:	c3                   	ret    
 bac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bb0:	39 c2                	cmp    %eax,%edx
 bb2:	72 c4                	jb     b78 <free+0x18>
 bb4:	39 c1                	cmp    %eax,%ecx
 bb6:	73 c0                	jae    b78 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 bb8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bbb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bbe:	39 f8                	cmp    %edi,%eax
 bc0:	75 d0                	jne    b92 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 bc2:	03 70 04             	add    0x4(%eax),%esi
 bc5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 bc8:	8b 02                	mov    (%edx),%eax
 bca:	8b 00                	mov    (%eax),%eax
 bcc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 bcf:	8b 42 04             	mov    0x4(%edx),%eax
 bd2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bd5:	39 f1                	cmp    %esi,%ecx
 bd7:	75 c6                	jne    b9f <free+0x3f>
    p->s.size += bp->s.size;
 bd9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 bdc:	89 15 00 15 00 00    	mov    %edx,0x1500
    p->s.size += bp->s.size;
 be2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 be5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 be8:	89 0a                	mov    %ecx,(%edx)
}
 bea:	5b                   	pop    %ebx
 beb:	5e                   	pop    %esi
 bec:	5f                   	pop    %edi
 bed:	5d                   	pop    %ebp
 bee:	c3                   	ret    
 bef:	90                   	nop

00000bf0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 bf0:	55                   	push   %ebp
 bf1:	89 e5                	mov    %esp,%ebp
 bf3:	57                   	push   %edi
 bf4:	56                   	push   %esi
 bf5:	53                   	push   %ebx
 bf6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bf9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 bfc:	8b 3d 00 15 00 00    	mov    0x1500,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c02:	8d 70 07             	lea    0x7(%eax),%esi
 c05:	c1 ee 03             	shr    $0x3,%esi
 c08:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c0b:	85 ff                	test   %edi,%edi
 c0d:	0f 84 9d 00 00 00    	je     cb0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c13:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c15:	8b 4a 04             	mov    0x4(%edx),%ecx
 c18:	39 f1                	cmp    %esi,%ecx
 c1a:	73 6a                	jae    c86 <malloc+0x96>
 c1c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c21:	39 de                	cmp    %ebx,%esi
 c23:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c26:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c30:	eb 17                	jmp    c49 <malloc+0x59>
 c32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c38:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c3a:	8b 48 04             	mov    0x4(%eax),%ecx
 c3d:	39 f1                	cmp    %esi,%ecx
 c3f:	73 4f                	jae    c90 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c41:	8b 3d 00 15 00 00    	mov    0x1500,%edi
 c47:	89 c2                	mov    %eax,%edx
 c49:	39 d7                	cmp    %edx,%edi
 c4b:	75 eb                	jne    c38 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c4d:	83 ec 0c             	sub    $0xc,%esp
 c50:	ff 75 e4             	push   -0x1c(%ebp)
 c53:	e8 83 fc ff ff       	call   8db <sbrk>
  if(p == (char*)-1)
 c58:	83 c4 10             	add    $0x10,%esp
 c5b:	83 f8 ff             	cmp    $0xffffffff,%eax
 c5e:	74 1c                	je     c7c <malloc+0x8c>
  hp->s.size = nu;
 c60:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c63:	83 ec 0c             	sub    $0xc,%esp
 c66:	83 c0 08             	add    $0x8,%eax
 c69:	50                   	push   %eax
 c6a:	e8 f1 fe ff ff       	call   b60 <free>
  return freep;
 c6f:	8b 15 00 15 00 00    	mov    0x1500,%edx
      if((p = morecore(nunits)) == 0)
 c75:	83 c4 10             	add    $0x10,%esp
 c78:	85 d2                	test   %edx,%edx
 c7a:	75 bc                	jne    c38 <malloc+0x48>
        return 0;
  }
}
 c7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c7f:	31 c0                	xor    %eax,%eax
}
 c81:	5b                   	pop    %ebx
 c82:	5e                   	pop    %esi
 c83:	5f                   	pop    %edi
 c84:	5d                   	pop    %ebp
 c85:	c3                   	ret    
    if(p->s.size >= nunits){
 c86:	89 d0                	mov    %edx,%eax
 c88:	89 fa                	mov    %edi,%edx
 c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 c90:	39 ce                	cmp    %ecx,%esi
 c92:	74 4c                	je     ce0 <malloc+0xf0>
        p->s.size -= nunits;
 c94:	29 f1                	sub    %esi,%ecx
 c96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c9c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 c9f:	89 15 00 15 00 00    	mov    %edx,0x1500
}
 ca5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ca8:	83 c0 08             	add    $0x8,%eax
}
 cab:	5b                   	pop    %ebx
 cac:	5e                   	pop    %esi
 cad:	5f                   	pop    %edi
 cae:	5d                   	pop    %ebp
 caf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 cb0:	c7 05 00 15 00 00 04 	movl   $0x1504,0x1500
 cb7:	15 00 00 
    base.s.size = 0;
 cba:	bf 04 15 00 00       	mov    $0x1504,%edi
    base.s.ptr = freep = prevp = &base;
 cbf:	c7 05 04 15 00 00 04 	movl   $0x1504,0x1504
 cc6:	15 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 cc9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 ccb:	c7 05 08 15 00 00 00 	movl   $0x0,0x1508
 cd2:	00 00 00 
    if(p->s.size >= nunits){
 cd5:	e9 42 ff ff ff       	jmp    c1c <malloc+0x2c>
 cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ce0:	8b 08                	mov    (%eax),%ecx
 ce2:	89 0a                	mov    %ecx,(%edx)
 ce4:	eb b9                	jmp    c9f <malloc+0xaf>
