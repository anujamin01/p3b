
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
  14:	e8 da 08 00 00       	call   8f3 <getpid>

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
  36:	83 3d d4 11 00 00 00 	cmpl   $0x0,0x11d4
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
  60:	a1 d4 11 00 00       	mov    0x11d4,%eax
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
  84:	68 08 0d 00 00       	push   $0xd08
  89:	68 12 0d 00 00       	push   $0xd12
  8e:	6a 01                	push   $0x1
  90:	e8 4b 09 00 00       	call   9e0 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 b0 0d 00 00       	push   $0xdb0
  9d:	68 25 0d 00 00       	push   $0xd25
  a2:	6a 01                	push   $0x1
  a4:	e8 37 09 00 00       	call   9e0 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 39 0d 00 00       	push   $0xd39
  b0:	6a 01                	push   $0x1
  b2:	e8 29 09 00 00       	call   9e0 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 e0 11 00 00    	push   0x11e0
  be:	e8 e0 07 00 00       	call   8a3 <kill>
  c3:	e8 ab 07 00 00       	call   873 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 08 0d 00 00       	push   $0xd08
  cf:	68 12 0d 00 00       	push   $0xd12
  d4:	6a 01                	push   $0x1
  d6:	e8 05 09 00 00       	call   9e0 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 91 0d 00 00       	push   $0xd91
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d d4 11 00 00    	cmp    %ebx,0x11d4
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 60 04 00 00       	call   560 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 08 0d 00 00       	push   $0xd08
 10b:	68 12 0d 00 00       	push   $0xd12
 110:	6a 01                	push   $0x1
 112:	e8 c9 08 00 00       	call   9e0 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 bf 0d 00 00       	push   $0xdbf
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 a3 0d 00 00       	push   $0xda3
 12b:	6a 01                	push   $0x1
 12d:	e8 ae 08 00 00       	call   9e0 <printf>
   exit();
 132:	e8 3c 07 00 00       	call   873 <exit>
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
 368:	83 3d d8 11 00 00 01 	cmpl   $0x1,0x11d8
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 08 0d 00 00       	push   $0xd08
 37c:	68 12 0d 00 00       	push   $0xd12
 381:	6a 01                	push   $0x1
 383:	e8 58 06 00 00       	call   9e0 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 51 0d 00 00       	push   $0xd51
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 08 0d 00 00       	push   $0xd08
 399:	68 12 0d 00 00       	push   $0xd12
 39e:	6a 01                	push   $0x1
 3a0:	e8 3b 06 00 00       	call   9e0 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 46 0d 00 00       	push   $0xd46
 3ad:	68 25 0d 00 00       	push   $0xd25
 3b2:	6a 01                	push   $0x1
 3b4:	e8 27 06 00 00       	call   9e0 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 39 0d 00 00       	push   $0xd39
 3c0:	6a 01                	push   $0x1
 3c2:	e8 19 06 00 00       	call   9e0 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 e0 11 00 00    	push   0x11e0
 3ce:	e8 d0 04 00 00       	call   8a3 <kill>
 3d3:	e8 9b 04 00 00       	call   873 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 08 0d 00 00       	push   $0xd08
 3df:	68 12 0d 00 00       	push   $0xd12
 3e4:	6a 01                	push   $0x1
 3e6:	e8 f5 05 00 00       	call   9e0 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 1a 0d 00 00       	push   $0xd1a
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 08 0d 00 00       	push   $0xd08
 40e:	68 12 0d 00 00       	push   $0xd12
 413:	6a 01                	push   $0x1
 415:	e8 c6 05 00 00       	call   9e0 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 5d 0d 00 00       	push   $0xd5d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 08 0d 00 00       	push   $0xd08
 43d:	68 12 0d 00 00       	push   $0xd12
 442:	6a 01                	push   $0x1
 444:	e8 97 05 00 00       	call   9e0 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 69 0d 00 00       	push   $0xd69
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 08 0d 00 00       	push   $0xd08
 46f:	68 12 0d 00 00       	push   $0xd12
 474:	6a 01                	push   $0x1
 476:	e8 65 05 00 00       	call   9e0 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 75 0d 00 00       	push   $0xd75
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 08 0d 00 00       	push   $0xd08
 4a3:	68 12 0d 00 00       	push   $0xd12
 4a8:	6a 01                	push   $0x1
 4aa:	e8 31 05 00 00       	call   9e0 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 82 0d 00 00       	push   $0xd82
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 b2 03 00 00       	call   873 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 4d7:	a1 dc 11 00 00       	mov    0x11dc,%eax
 4dc:	01 c0                	add    %eax,%eax
 4de:	50                   	push   %eax
 4df:	e8 2c 07 00 00       	call   c10 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 4e4:	8b 0d dc 11 00 00    	mov    0x11dc,%ecx
 4ea:	31 d2                	xor    %edx,%edx
 4ec:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 4ef:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 4f1:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 4f3:	89 c8                	mov    %ecx,%eax
 4f5:	01 d9                	add    %ebx,%ecx
 4f7:	29 d0                	sub    %edx,%eax
 4f9:	01 d8                	add    %ebx,%eax
 4fb:	85 d2                	test   %edx,%edx
 4fd:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 500:	31 d2                	xor    %edx,%edx
 502:	eb 0c                	jmp    510 <thread_create+0x40>
 504:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 508:	83 c2 01             	add    $0x1,%edx
 50b:	83 fa 40             	cmp    $0x40,%edx
 50e:	74 2f                	je     53f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 510:	8b 04 95 00 14 00 00 	mov    0x1400(,%edx,4),%eax
 517:	85 c0                	test   %eax,%eax
 519:	75 ed                	jne    508 <thread_create+0x38>
 51b:	8b 04 95 00 12 00 00 	mov    0x1200(,%edx,4),%eax
 522:	85 c0                	test   %eax,%eax
 524:	75 e2                	jne    508 <thread_create+0x38>
      inUse[i] = 1;
 526:	c7 04 95 00 12 00 00 	movl   $0x1,0x1200(,%edx,4)
 52d:	01 00 00 00 
      malloc_addrs[i] = original;
 531:	89 1c 95 00 13 00 00 	mov    %ebx,0x1300(,%edx,4)
      stack_addrs[i] = stack;
 538:	89 0c 95 00 14 00 00 	mov    %ecx,0x1400(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 53f:	51                   	push   %ecx
 540:	ff 75 10             	push   0x10(%ebp)
 543:	ff 75 0c             	push   0xc(%ebp)
 546:	ff 75 08             	push   0x8(%ebp)
 549:	e8 c5 03 00 00       	call   913 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 54e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 551:	c9                   	leave  
 552:	c3                   	ret    
 553:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000560 <thread_join>:

int 
thread_join()
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 564:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 566:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 569:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 56c:	50                   	push   %eax
 56d:	e8 a9 03 00 00       	call   91b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 572:	8b 55 f4             	mov    -0xc(%ebp),%edx
 575:	83 c4 10             	add    $0x10,%esp
 578:	eb 0e                	jmp    588 <thread_join+0x28>
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 580:	83 c3 01             	add    $0x1,%ebx
 583:	83 fb 40             	cmp    $0x40,%ebx
 586:	74 4c                	je     5d4 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 588:	83 3c 9d 00 12 00 00 	cmpl   $0x1,0x1200(,%ebx,4)
 58f:	01 
 590:	75 ee                	jne    580 <thread_join+0x20>
 592:	39 14 9d 00 14 00 00 	cmp    %edx,0x1400(,%ebx,4)
 599:	75 e5                	jne    580 <thread_join+0x20>
      free(malloc_addrs[i]);
 59b:	83 ec 0c             	sub    $0xc,%esp
 59e:	ff 34 9d 00 13 00 00 	push   0x1300(,%ebx,4)
 5a5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 5a8:	e8 d3 05 00 00       	call   b80 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 5ad:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 5b0:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 5b3:	c7 04 9d 00 13 00 00 	movl   $0x0,0x1300(,%ebx,4)
 5ba:	00 00 00 00 
      stack_addrs[i] = 0;
 5be:	c7 04 9d 00 14 00 00 	movl   $0x0,0x1400(,%ebx,4)
 5c5:	00 00 00 00 
      inUse[i] = 0;
 5c9:	c7 04 9d 00 12 00 00 	movl   $0x0,0x1200(,%ebx,4)
 5d0:	00 00 00 00 
    }
  }
  return threadId; 
}
 5d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5d7:	c9                   	leave  
 5d8:	c3                   	ret    
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005e0 <lock_init>:

void lock_init(lock_t *lock){
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 5e3:	8b 45 08             	mov    0x8(%ebp),%eax
 5e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 5ec:	5d                   	pop    %ebp
 5ed:	c3                   	ret    
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 5f0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5f1:	b9 01 00 00 00       	mov    $0x1,%ecx
 5f6:	89 e5                	mov    %esp,%ebp
 5f8:	8b 55 08             	mov    0x8(%ebp),%edx
 5fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop
 600:	89 c8                	mov    %ecx,%eax
 602:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 605:	85 c0                	test   %eax,%eax
 607:	75 f7                	jne    600 <lock_acquire+0x10>
}
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret    
 60b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop

00000610 <lock_release>:

void lock_release(lock_t *lock){
 610:	55                   	push   %ebp
 611:	31 c0                	xor    %eax,%eax
 613:	89 e5                	mov    %esp,%ebp
 615:	8b 55 08             	mov    0x8(%ebp),%edx
 618:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 61b:	5d                   	pop    %ebp
 61c:	c3                   	ret    
 61d:	8d 76 00             	lea    0x0(%esi),%esi

00000620 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 620:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 621:	31 c0                	xor    %eax,%eax
{
 623:	89 e5                	mov    %esp,%ebp
 625:	53                   	push   %ebx
 626:	8b 4d 08             	mov    0x8(%ebp),%ecx
 629:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 630:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 634:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 637:	83 c0 01             	add    $0x1,%eax
 63a:	84 d2                	test   %dl,%dl
 63c:	75 f2                	jne    630 <strcpy+0x10>
    ;
  return os;
}
 63e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 641:	89 c8                	mov    %ecx,%eax
 643:	c9                   	leave  
 644:	c3                   	ret    
 645:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000650 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	53                   	push   %ebx
 654:	8b 55 08             	mov    0x8(%ebp),%edx
 657:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 65a:	0f b6 02             	movzbl (%edx),%eax
 65d:	84 c0                	test   %al,%al
 65f:	75 17                	jne    678 <strcmp+0x28>
 661:	eb 3a                	jmp    69d <strcmp+0x4d>
 663:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 667:	90                   	nop
 668:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 66c:	83 c2 01             	add    $0x1,%edx
 66f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 672:	84 c0                	test   %al,%al
 674:	74 1a                	je     690 <strcmp+0x40>
    p++, q++;
 676:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 678:	0f b6 19             	movzbl (%ecx),%ebx
 67b:	38 c3                	cmp    %al,%bl
 67d:	74 e9                	je     668 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 67f:	29 d8                	sub    %ebx,%eax
}
 681:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 684:	c9                   	leave  
 685:	c3                   	ret    
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 690:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 694:	31 c0                	xor    %eax,%eax
 696:	29 d8                	sub    %ebx,%eax
}
 698:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 69b:	c9                   	leave  
 69c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 69d:	0f b6 19             	movzbl (%ecx),%ebx
 6a0:	31 c0                	xor    %eax,%eax
 6a2:	eb db                	jmp    67f <strcmp+0x2f>
 6a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <strlen>:

uint
strlen(const char *s)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 6b6:	80 3a 00             	cmpb   $0x0,(%edx)
 6b9:	74 15                	je     6d0 <strlen+0x20>
 6bb:	31 c0                	xor    %eax,%eax
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
 6c0:	83 c0 01             	add    $0x1,%eax
 6c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 6c7:	89 c1                	mov    %eax,%ecx
 6c9:	75 f5                	jne    6c0 <strlen+0x10>
    ;
  return n;
}
 6cb:	89 c8                	mov    %ecx,%eax
 6cd:	5d                   	pop    %ebp
 6ce:	c3                   	ret    
 6cf:	90                   	nop
  for(n = 0; s[n]; n++)
 6d0:	31 c9                	xor    %ecx,%ecx
}
 6d2:	5d                   	pop    %ebp
 6d3:	89 c8                	mov    %ecx,%eax
 6d5:	c3                   	ret    
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi

000006e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 6e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 6ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 6ed:	89 d7                	mov    %edx,%edi
 6ef:	fc                   	cld    
 6f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 6f5:	89 d0                	mov    %edx,%eax
 6f7:	c9                   	leave  
 6f8:	c3                   	ret    
 6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000700 <strchr>:

char*
strchr(const char *s, char c)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	8b 45 08             	mov    0x8(%ebp),%eax
 706:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 70a:	0f b6 10             	movzbl (%eax),%edx
 70d:	84 d2                	test   %dl,%dl
 70f:	75 12                	jne    723 <strchr+0x23>
 711:	eb 1d                	jmp    730 <strchr+0x30>
 713:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 717:	90                   	nop
 718:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 71c:	83 c0 01             	add    $0x1,%eax
 71f:	84 d2                	test   %dl,%dl
 721:	74 0d                	je     730 <strchr+0x30>
    if(*s == c)
 723:	38 d1                	cmp    %dl,%cl
 725:	75 f1                	jne    718 <strchr+0x18>
      return (char*)s;
  return 0;
}
 727:	5d                   	pop    %ebp
 728:	c3                   	ret    
 729:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 730:	31 c0                	xor    %eax,%eax
}
 732:	5d                   	pop    %ebp
 733:	c3                   	ret    
 734:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop

00000740 <gets>:

char*
gets(char *buf, int max)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 745:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 748:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 749:	31 db                	xor    %ebx,%ebx
{
 74b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 74e:	eb 27                	jmp    777 <gets+0x37>
    cc = read(0, &c, 1);
 750:	83 ec 04             	sub    $0x4,%esp
 753:	6a 01                	push   $0x1
 755:	57                   	push   %edi
 756:	6a 00                	push   $0x0
 758:	e8 2e 01 00 00       	call   88b <read>
    if(cc < 1)
 75d:	83 c4 10             	add    $0x10,%esp
 760:	85 c0                	test   %eax,%eax
 762:	7e 1d                	jle    781 <gets+0x41>
      break;
    buf[i++] = c;
 764:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 768:	8b 55 08             	mov    0x8(%ebp),%edx
 76b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 76f:	3c 0a                	cmp    $0xa,%al
 771:	74 1d                	je     790 <gets+0x50>
 773:	3c 0d                	cmp    $0xd,%al
 775:	74 19                	je     790 <gets+0x50>
  for(i=0; i+1 < max; ){
 777:	89 de                	mov    %ebx,%esi
 779:	83 c3 01             	add    $0x1,%ebx
 77c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 77f:	7c cf                	jl     750 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 781:	8b 45 08             	mov    0x8(%ebp),%eax
 784:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 788:	8d 65 f4             	lea    -0xc(%ebp),%esp
 78b:	5b                   	pop    %ebx
 78c:	5e                   	pop    %esi
 78d:	5f                   	pop    %edi
 78e:	5d                   	pop    %ebp
 78f:	c3                   	ret    
  buf[i] = '\0';
 790:	8b 45 08             	mov    0x8(%ebp),%eax
 793:	89 de                	mov    %ebx,%esi
 795:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 799:	8d 65 f4             	lea    -0xc(%ebp),%esp
 79c:	5b                   	pop    %ebx
 79d:	5e                   	pop    %esi
 79e:	5f                   	pop    %edi
 79f:	5d                   	pop    %ebp
 7a0:	c3                   	ret    
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7af:	90                   	nop

000007b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	56                   	push   %esi
 7b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 7b5:	83 ec 08             	sub    $0x8,%esp
 7b8:	6a 00                	push   $0x0
 7ba:	ff 75 08             	push   0x8(%ebp)
 7bd:	e8 f1 00 00 00       	call   8b3 <open>
  if(fd < 0)
 7c2:	83 c4 10             	add    $0x10,%esp
 7c5:	85 c0                	test   %eax,%eax
 7c7:	78 27                	js     7f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 7c9:	83 ec 08             	sub    $0x8,%esp
 7cc:	ff 75 0c             	push   0xc(%ebp)
 7cf:	89 c3                	mov    %eax,%ebx
 7d1:	50                   	push   %eax
 7d2:	e8 f4 00 00 00       	call   8cb <fstat>
  close(fd);
 7d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 7da:	89 c6                	mov    %eax,%esi
  close(fd);
 7dc:	e8 ba 00 00 00       	call   89b <close>
  return r;
 7e1:	83 c4 10             	add    $0x10,%esp
}
 7e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 7e7:	89 f0                	mov    %esi,%eax
 7e9:	5b                   	pop    %ebx
 7ea:	5e                   	pop    %esi
 7eb:	5d                   	pop    %ebp
 7ec:	c3                   	ret    
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 7f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 7f5:	eb ed                	jmp    7e4 <stat+0x34>
 7f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fe:	66 90                	xchg   %ax,%ax

00000800 <atoi>:

int
atoi(const char *s)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	53                   	push   %ebx
 804:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 807:	0f be 02             	movsbl (%edx),%eax
 80a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 80d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 810:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 815:	77 1e                	ja     835 <atoi+0x35>
 817:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 820:	83 c2 01             	add    $0x1,%edx
 823:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 826:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 82a:	0f be 02             	movsbl (%edx),%eax
 82d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 830:	80 fb 09             	cmp    $0x9,%bl
 833:	76 eb                	jbe    820 <atoi+0x20>
  return n;
}
 835:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 838:	89 c8                	mov    %ecx,%eax
 83a:	c9                   	leave  
 83b:	c3                   	ret    
 83c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000840 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	8b 45 10             	mov    0x10(%ebp),%eax
 847:	8b 55 08             	mov    0x8(%ebp),%edx
 84a:	56                   	push   %esi
 84b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 84e:	85 c0                	test   %eax,%eax
 850:	7e 13                	jle    865 <memmove+0x25>
 852:	01 d0                	add    %edx,%eax
  dst = vdst;
 854:	89 d7                	mov    %edx,%edi
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 860:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 861:	39 f8                	cmp    %edi,%eax
 863:	75 fb                	jne    860 <memmove+0x20>
  return vdst;
}
 865:	5e                   	pop    %esi
 866:	89 d0                	mov    %edx,%eax
 868:	5f                   	pop    %edi
 869:	5d                   	pop    %ebp
 86a:	c3                   	ret    

0000086b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 86b:	b8 01 00 00 00       	mov    $0x1,%eax
 870:	cd 40                	int    $0x40
 872:	c3                   	ret    

00000873 <exit>:
SYSCALL(exit)
 873:	b8 02 00 00 00       	mov    $0x2,%eax
 878:	cd 40                	int    $0x40
 87a:	c3                   	ret    

0000087b <wait>:
SYSCALL(wait)
 87b:	b8 03 00 00 00       	mov    $0x3,%eax
 880:	cd 40                	int    $0x40
 882:	c3                   	ret    

00000883 <pipe>:
SYSCALL(pipe)
 883:	b8 04 00 00 00       	mov    $0x4,%eax
 888:	cd 40                	int    $0x40
 88a:	c3                   	ret    

0000088b <read>:
SYSCALL(read)
 88b:	b8 05 00 00 00       	mov    $0x5,%eax
 890:	cd 40                	int    $0x40
 892:	c3                   	ret    

00000893 <write>:
SYSCALL(write)
 893:	b8 10 00 00 00       	mov    $0x10,%eax
 898:	cd 40                	int    $0x40
 89a:	c3                   	ret    

0000089b <close>:
SYSCALL(close)
 89b:	b8 15 00 00 00       	mov    $0x15,%eax
 8a0:	cd 40                	int    $0x40
 8a2:	c3                   	ret    

000008a3 <kill>:
SYSCALL(kill)
 8a3:	b8 06 00 00 00       	mov    $0x6,%eax
 8a8:	cd 40                	int    $0x40
 8aa:	c3                   	ret    

000008ab <exec>:
SYSCALL(exec)
 8ab:	b8 07 00 00 00       	mov    $0x7,%eax
 8b0:	cd 40                	int    $0x40
 8b2:	c3                   	ret    

000008b3 <open>:
SYSCALL(open)
 8b3:	b8 0f 00 00 00       	mov    $0xf,%eax
 8b8:	cd 40                	int    $0x40
 8ba:	c3                   	ret    

000008bb <mknod>:
SYSCALL(mknod)
 8bb:	b8 11 00 00 00       	mov    $0x11,%eax
 8c0:	cd 40                	int    $0x40
 8c2:	c3                   	ret    

000008c3 <unlink>:
SYSCALL(unlink)
 8c3:	b8 12 00 00 00       	mov    $0x12,%eax
 8c8:	cd 40                	int    $0x40
 8ca:	c3                   	ret    

000008cb <fstat>:
SYSCALL(fstat)
 8cb:	b8 08 00 00 00       	mov    $0x8,%eax
 8d0:	cd 40                	int    $0x40
 8d2:	c3                   	ret    

000008d3 <link>:
SYSCALL(link)
 8d3:	b8 13 00 00 00       	mov    $0x13,%eax
 8d8:	cd 40                	int    $0x40
 8da:	c3                   	ret    

000008db <mkdir>:
SYSCALL(mkdir)
 8db:	b8 14 00 00 00       	mov    $0x14,%eax
 8e0:	cd 40                	int    $0x40
 8e2:	c3                   	ret    

000008e3 <chdir>:
SYSCALL(chdir)
 8e3:	b8 09 00 00 00       	mov    $0x9,%eax
 8e8:	cd 40                	int    $0x40
 8ea:	c3                   	ret    

000008eb <dup>:
SYSCALL(dup)
 8eb:	b8 0a 00 00 00       	mov    $0xa,%eax
 8f0:	cd 40                	int    $0x40
 8f2:	c3                   	ret    

000008f3 <getpid>:
SYSCALL(getpid)
 8f3:	b8 0b 00 00 00       	mov    $0xb,%eax
 8f8:	cd 40                	int    $0x40
 8fa:	c3                   	ret    

000008fb <sbrk>:
SYSCALL(sbrk)
 8fb:	b8 0c 00 00 00       	mov    $0xc,%eax
 900:	cd 40                	int    $0x40
 902:	c3                   	ret    

00000903 <sleep>:
SYSCALL(sleep)
 903:	b8 0d 00 00 00       	mov    $0xd,%eax
 908:	cd 40                	int    $0x40
 90a:	c3                   	ret    

0000090b <uptime>:
SYSCALL(uptime)
 90b:	b8 0e 00 00 00       	mov    $0xe,%eax
 910:	cd 40                	int    $0x40
 912:	c3                   	ret    

00000913 <clone>:
SYSCALL(clone)
 913:	b8 16 00 00 00       	mov    $0x16,%eax
 918:	cd 40                	int    $0x40
 91a:	c3                   	ret    

0000091b <join>:
SYSCALL(join)
 91b:	b8 17 00 00 00       	mov    $0x17,%eax
 920:	cd 40                	int    $0x40
 922:	c3                   	ret    
 923:	66 90                	xchg   %ax,%ax
 925:	66 90                	xchg   %ax,%ax
 927:	66 90                	xchg   %ax,%ax
 929:	66 90                	xchg   %ax,%ax
 92b:	66 90                	xchg   %ax,%ax
 92d:	66 90                	xchg   %ax,%ax
 92f:	90                   	nop

00000930 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 3c             	sub    $0x3c,%esp
 939:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 93c:	89 d1                	mov    %edx,%ecx
{
 93e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 941:	85 d2                	test   %edx,%edx
 943:	0f 89 7f 00 00 00    	jns    9c8 <printint+0x98>
 949:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 94d:	74 79                	je     9c8 <printint+0x98>
    neg = 1;
 94f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 956:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 958:	31 db                	xor    %ebx,%ebx
 95a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 95d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 960:	89 c8                	mov    %ecx,%eax
 962:	31 d2                	xor    %edx,%edx
 964:	89 cf                	mov    %ecx,%edi
 966:	f7 75 c4             	divl   -0x3c(%ebp)
 969:	0f b6 92 2c 0e 00 00 	movzbl 0xe2c(%edx),%edx
 970:	89 45 c0             	mov    %eax,-0x40(%ebp)
 973:	89 d8                	mov    %ebx,%eax
 975:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 978:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 97b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 97e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 981:	76 dd                	jbe    960 <printint+0x30>
  if(neg)
 983:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 986:	85 c9                	test   %ecx,%ecx
 988:	74 0c                	je     996 <printint+0x66>
    buf[i++] = '-';
 98a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 98f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 991:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 996:	8b 7d b8             	mov    -0x48(%ebp),%edi
 999:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 99d:	eb 07                	jmp    9a6 <printint+0x76>
 99f:	90                   	nop
    putc(fd, buf[i]);
 9a0:	0f b6 13             	movzbl (%ebx),%edx
 9a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 9a6:	83 ec 04             	sub    $0x4,%esp
 9a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 9ac:	6a 01                	push   $0x1
 9ae:	56                   	push   %esi
 9af:	57                   	push   %edi
 9b0:	e8 de fe ff ff       	call   893 <write>
  while(--i >= 0)
 9b5:	83 c4 10             	add    $0x10,%esp
 9b8:	39 de                	cmp    %ebx,%esi
 9ba:	75 e4                	jne    9a0 <printint+0x70>
}
 9bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9bf:	5b                   	pop    %ebx
 9c0:	5e                   	pop    %esi
 9c1:	5f                   	pop    %edi
 9c2:	5d                   	pop    %ebp
 9c3:	c3                   	ret    
 9c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 9cf:	eb 87                	jmp    958 <printint+0x28>
 9d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9df:	90                   	nop

000009e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9e0:	55                   	push   %ebp
 9e1:	89 e5                	mov    %esp,%ebp
 9e3:	57                   	push   %edi
 9e4:	56                   	push   %esi
 9e5:	53                   	push   %ebx
 9e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 9ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 9ef:	0f b6 13             	movzbl (%ebx),%edx
 9f2:	84 d2                	test   %dl,%dl
 9f4:	74 6a                	je     a60 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 9f6:	8d 45 10             	lea    0x10(%ebp),%eax
 9f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 a01:	89 45 d0             	mov    %eax,-0x30(%ebp)
 a04:	eb 36                	jmp    a3c <printf+0x5c>
 a06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a0d:	8d 76 00             	lea    0x0(%esi),%esi
 a10:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a13:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 a18:	83 f8 25             	cmp    $0x25,%eax
 a1b:	74 15                	je     a32 <printf+0x52>
  write(fd, &c, 1);
 a1d:	83 ec 04             	sub    $0x4,%esp
 a20:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a23:	6a 01                	push   $0x1
 a25:	57                   	push   %edi
 a26:	56                   	push   %esi
 a27:	e8 67 fe ff ff       	call   893 <write>
 a2c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a2f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a32:	0f b6 13             	movzbl (%ebx),%edx
 a35:	83 c3 01             	add    $0x1,%ebx
 a38:	84 d2                	test   %dl,%dl
 a3a:	74 24                	je     a60 <printf+0x80>
    c = fmt[i] & 0xff;
 a3c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a3f:	85 c9                	test   %ecx,%ecx
 a41:	74 cd                	je     a10 <printf+0x30>
      }
    } else if(state == '%'){
 a43:	83 f9 25             	cmp    $0x25,%ecx
 a46:	75 ea                	jne    a32 <printf+0x52>
      if(c == 'd'){
 a48:	83 f8 25             	cmp    $0x25,%eax
 a4b:	0f 84 07 01 00 00    	je     b58 <printf+0x178>
 a51:	83 e8 63             	sub    $0x63,%eax
 a54:	83 f8 15             	cmp    $0x15,%eax
 a57:	77 17                	ja     a70 <printf+0x90>
 a59:	ff 24 85 d4 0d 00 00 	jmp    *0xdd4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a60:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a63:	5b                   	pop    %ebx
 a64:	5e                   	pop    %esi
 a65:	5f                   	pop    %edi
 a66:	5d                   	pop    %ebp
 a67:	c3                   	ret    
 a68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a6f:	90                   	nop
  write(fd, &c, 1);
 a70:	83 ec 04             	sub    $0x4,%esp
 a73:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 a76:	6a 01                	push   $0x1
 a78:	57                   	push   %edi
 a79:	56                   	push   %esi
 a7a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a7e:	e8 10 fe ff ff       	call   893 <write>
        putc(fd, c);
 a83:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 a87:	83 c4 0c             	add    $0xc,%esp
 a8a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a8d:	6a 01                	push   $0x1
 a8f:	57                   	push   %edi
 a90:	56                   	push   %esi
 a91:	e8 fd fd ff ff       	call   893 <write>
        putc(fd, c);
 a96:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a99:	31 c9                	xor    %ecx,%ecx
 a9b:	eb 95                	jmp    a32 <printf+0x52>
 a9d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 aa0:	83 ec 0c             	sub    $0xc,%esp
 aa3:	b9 10 00 00 00       	mov    $0x10,%ecx
 aa8:	6a 00                	push   $0x0
 aaa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 aad:	8b 10                	mov    (%eax),%edx
 aaf:	89 f0                	mov    %esi,%eax
 ab1:	e8 7a fe ff ff       	call   930 <printint>
        ap++;
 ab6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 aba:	83 c4 10             	add    $0x10,%esp
      state = 0;
 abd:	31 c9                	xor    %ecx,%ecx
 abf:	e9 6e ff ff ff       	jmp    a32 <printf+0x52>
 ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 ac8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 acb:	8b 10                	mov    (%eax),%edx
        ap++;
 acd:	83 c0 04             	add    $0x4,%eax
 ad0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 ad3:	85 d2                	test   %edx,%edx
 ad5:	0f 84 8d 00 00 00    	je     b68 <printf+0x188>
        while(*s != 0){
 adb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 ade:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 ae0:	84 c0                	test   %al,%al
 ae2:	0f 84 4a ff ff ff    	je     a32 <printf+0x52>
 ae8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 aeb:	89 d3                	mov    %edx,%ebx
 aed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 af0:	83 ec 04             	sub    $0x4,%esp
          s++;
 af3:	83 c3 01             	add    $0x1,%ebx
 af6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 af9:	6a 01                	push   $0x1
 afb:	57                   	push   %edi
 afc:	56                   	push   %esi
 afd:	e8 91 fd ff ff       	call   893 <write>
        while(*s != 0){
 b02:	0f b6 03             	movzbl (%ebx),%eax
 b05:	83 c4 10             	add    $0x10,%esp
 b08:	84 c0                	test   %al,%al
 b0a:	75 e4                	jne    af0 <printf+0x110>
      state = 0;
 b0c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 b0f:	31 c9                	xor    %ecx,%ecx
 b11:	e9 1c ff ff ff       	jmp    a32 <printf+0x52>
 b16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b1d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b20:	83 ec 0c             	sub    $0xc,%esp
 b23:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b28:	6a 01                	push   $0x1
 b2a:	e9 7b ff ff ff       	jmp    aaa <printf+0xca>
 b2f:	90                   	nop
        putc(fd, *ap);
 b30:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b33:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b36:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b38:	6a 01                	push   $0x1
 b3a:	57                   	push   %edi
 b3b:	56                   	push   %esi
        putc(fd, *ap);
 b3c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b3f:	e8 4f fd ff ff       	call   893 <write>
        ap++;
 b44:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b48:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b4b:	31 c9                	xor    %ecx,%ecx
 b4d:	e9 e0 fe ff ff       	jmp    a32 <printf+0x52>
 b52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b58:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b5b:	83 ec 04             	sub    $0x4,%esp
 b5e:	e9 2a ff ff ff       	jmp    a8d <printf+0xad>
 b63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b67:	90                   	nop
          s = "(null)";
 b68:	ba cc 0d 00 00       	mov    $0xdcc,%edx
        while(*s != 0){
 b6d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b70:	b8 28 00 00 00       	mov    $0x28,%eax
 b75:	89 d3                	mov    %edx,%ebx
 b77:	e9 74 ff ff ff       	jmp    af0 <printf+0x110>
 b7c:	66 90                	xchg   %ax,%ax
 b7e:	66 90                	xchg   %ax,%ax

00000b80 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b80:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b81:	a1 00 15 00 00       	mov    0x1500,%eax
{
 b86:	89 e5                	mov    %esp,%ebp
 b88:	57                   	push   %edi
 b89:	56                   	push   %esi
 b8a:	53                   	push   %ebx
 b8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b8e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b98:	89 c2                	mov    %eax,%edx
 b9a:	8b 00                	mov    (%eax),%eax
 b9c:	39 ca                	cmp    %ecx,%edx
 b9e:	73 30                	jae    bd0 <free+0x50>
 ba0:	39 c1                	cmp    %eax,%ecx
 ba2:	72 04                	jb     ba8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ba4:	39 c2                	cmp    %eax,%edx
 ba6:	72 f0                	jb     b98 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ba8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bae:	39 f8                	cmp    %edi,%eax
 bb0:	74 30                	je     be2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 bb2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 bb5:	8b 42 04             	mov    0x4(%edx),%eax
 bb8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bbb:	39 f1                	cmp    %esi,%ecx
 bbd:	74 3a                	je     bf9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 bbf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 bc1:	5b                   	pop    %ebx
  freep = p;
 bc2:	89 15 00 15 00 00    	mov    %edx,0x1500
}
 bc8:	5e                   	pop    %esi
 bc9:	5f                   	pop    %edi
 bca:	5d                   	pop    %ebp
 bcb:	c3                   	ret    
 bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bd0:	39 c2                	cmp    %eax,%edx
 bd2:	72 c4                	jb     b98 <free+0x18>
 bd4:	39 c1                	cmp    %eax,%ecx
 bd6:	73 c0                	jae    b98 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 bd8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bdb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bde:	39 f8                	cmp    %edi,%eax
 be0:	75 d0                	jne    bb2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 be2:	03 70 04             	add    0x4(%eax),%esi
 be5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 be8:	8b 02                	mov    (%edx),%eax
 bea:	8b 00                	mov    (%eax),%eax
 bec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 bef:	8b 42 04             	mov    0x4(%edx),%eax
 bf2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bf5:	39 f1                	cmp    %esi,%ecx
 bf7:	75 c6                	jne    bbf <free+0x3f>
    p->s.size += bp->s.size;
 bf9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 bfc:	89 15 00 15 00 00    	mov    %edx,0x1500
    p->s.size += bp->s.size;
 c02:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 c05:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 c08:	89 0a                	mov    %ecx,(%edx)
}
 c0a:	5b                   	pop    %ebx
 c0b:	5e                   	pop    %esi
 c0c:	5f                   	pop    %edi
 c0d:	5d                   	pop    %ebp
 c0e:	c3                   	ret    
 c0f:	90                   	nop

00000c10 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c10:	55                   	push   %ebp
 c11:	89 e5                	mov    %esp,%ebp
 c13:	57                   	push   %edi
 c14:	56                   	push   %esi
 c15:	53                   	push   %ebx
 c16:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c19:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c1c:	8b 3d 00 15 00 00    	mov    0x1500,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c22:	8d 70 07             	lea    0x7(%eax),%esi
 c25:	c1 ee 03             	shr    $0x3,%esi
 c28:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c2b:	85 ff                	test   %edi,%edi
 c2d:	0f 84 9d 00 00 00    	je     cd0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c33:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c35:	8b 4a 04             	mov    0x4(%edx),%ecx
 c38:	39 f1                	cmp    %esi,%ecx
 c3a:	73 6a                	jae    ca6 <malloc+0x96>
 c3c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c41:	39 de                	cmp    %ebx,%esi
 c43:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c46:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c4d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c50:	eb 17                	jmp    c69 <malloc+0x59>
 c52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c58:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c5a:	8b 48 04             	mov    0x4(%eax),%ecx
 c5d:	39 f1                	cmp    %esi,%ecx
 c5f:	73 4f                	jae    cb0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c61:	8b 3d 00 15 00 00    	mov    0x1500,%edi
 c67:	89 c2                	mov    %eax,%edx
 c69:	39 d7                	cmp    %edx,%edi
 c6b:	75 eb                	jne    c58 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c6d:	83 ec 0c             	sub    $0xc,%esp
 c70:	ff 75 e4             	push   -0x1c(%ebp)
 c73:	e8 83 fc ff ff       	call   8fb <sbrk>
  if(p == (char*)-1)
 c78:	83 c4 10             	add    $0x10,%esp
 c7b:	83 f8 ff             	cmp    $0xffffffff,%eax
 c7e:	74 1c                	je     c9c <malloc+0x8c>
  hp->s.size = nu;
 c80:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c83:	83 ec 0c             	sub    $0xc,%esp
 c86:	83 c0 08             	add    $0x8,%eax
 c89:	50                   	push   %eax
 c8a:	e8 f1 fe ff ff       	call   b80 <free>
  return freep;
 c8f:	8b 15 00 15 00 00    	mov    0x1500,%edx
      if((p = morecore(nunits)) == 0)
 c95:	83 c4 10             	add    $0x10,%esp
 c98:	85 d2                	test   %edx,%edx
 c9a:	75 bc                	jne    c58 <malloc+0x48>
        return 0;
  }
}
 c9c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c9f:	31 c0                	xor    %eax,%eax
}
 ca1:	5b                   	pop    %ebx
 ca2:	5e                   	pop    %esi
 ca3:	5f                   	pop    %edi
 ca4:	5d                   	pop    %ebp
 ca5:	c3                   	ret    
    if(p->s.size >= nunits){
 ca6:	89 d0                	mov    %edx,%eax
 ca8:	89 fa                	mov    %edi,%edx
 caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 cb0:	39 ce                	cmp    %ecx,%esi
 cb2:	74 4c                	je     d00 <malloc+0xf0>
        p->s.size -= nunits;
 cb4:	29 f1                	sub    %esi,%ecx
 cb6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 cb9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 cbc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 cbf:	89 15 00 15 00 00    	mov    %edx,0x1500
}
 cc5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 cc8:	83 c0 08             	add    $0x8,%eax
}
 ccb:	5b                   	pop    %ebx
 ccc:	5e                   	pop    %esi
 ccd:	5f                   	pop    %edi
 cce:	5d                   	pop    %ebp
 ccf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 cd0:	c7 05 00 15 00 00 04 	movl   $0x1504,0x1500
 cd7:	15 00 00 
    base.s.size = 0;
 cda:	bf 04 15 00 00       	mov    $0x1504,%edi
    base.s.ptr = freep = prevp = &base;
 cdf:	c7 05 04 15 00 00 04 	movl   $0x1504,0x1504
 ce6:	15 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ce9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 ceb:	c7 05 08 15 00 00 00 	movl   $0x0,0x1508
 cf2:	00 00 00 
    if(p->s.size >= nunits){
 cf5:	e9 42 ff ff ff       	jmp    c3c <malloc+0x2c>
 cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 d00:	8b 08                	mov    (%eax),%ecx
 d02:	89 0a                	mov    %ecx,(%edx)
 d04:	eb b9                	jmp    cbf <malloc+0xaf>
