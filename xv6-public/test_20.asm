
_test_20:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 4d 07 00 00       	call   763 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 30 10 00 00       	mov    %eax,0x1030
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 38 07 00 00       	call   76b <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 28 10 00 00       	mov    %eax,0x1028
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  3e:	50                   	push   %eax
  3f:	8d 45 f0             	lea    -0x10(%ebp),%eax
  42:	50                   	push   %eax
  43:	68 b0 01 00 00       	push   $0x1b0
  48:	e8 13 03 00 00       	call   360 <thread_create>
   assert(thread_pid > 0);
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	7e 62                	jle    b6 <main+0xb6>
   
   int join_pid = thread_join();
  54:	e8 97 03 00 00       	call   3f0 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 01 0c 00 00       	push   $0xc01
  64:	6a 01                	push   $0x1
  66:	e8 e5 07 00 00       	call   850 <printf>
   exit();
  6b:	e8 73 06 00 00       	call   6e3 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 78 0b 00 00       	push   $0xb78
  77:	68 82 0b 00 00       	push   $0xb82
  7c:	6a 01                	push   $0x1
  7e:	e8 cd 07 00 00       	call   850 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 e5 0b 00 00       	push   $0xbe5
  8b:	68 a8 0b 00 00       	push   $0xba8
  90:	6a 01                	push   $0x1
  92:	e8 b9 07 00 00       	call   850 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 bc 0b 00 00       	push   $0xbbc
  9e:	6a 01                	push   $0x1
  a0:	e8 ab 07 00 00       	call   850 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 30 10 00 00    	push   0x1030
  ac:	e8 62 06 00 00       	call   713 <kill>
  b1:	e8 2d 06 00 00       	call   6e3 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 78 0b 00 00       	push   $0xb78
  bd:	68 82 0b 00 00       	push   $0xb82
  c2:	6a 01                	push   $0x1
  c4:	e8 87 07 00 00       	call   850 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 f2 0b 00 00       	push   $0xbf2
  d1:	eb b8                	jmp    8b <main+0x8b>
  d3:	66 90                	xchg   %ax,%ax
  d5:	66 90                	xchg   %ax,%ax
  d7:	66 90                	xchg   %ax,%ax
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <worker2>:
}

void worker2(void *arg1, void *arg2)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
  e6:	68 24 10 00 00       	push   $0x1024
  eb:	e8 70 03 00 00       	call   460 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 6f 06 00 00       	call   76b <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 28 10 00 00    	cmp    0x1028,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 78 0b 00 00       	push   $0xb78
 10e:	68 82 0b 00 00       	push   $0xb82
 113:	6a 01                	push   $0x1
 115:	e8 36 07 00 00       	call   850 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 8a 0b 00 00       	push   $0xb8a
 122:	68 a8 0b 00 00       	push   $0xba8
 127:	6a 01                	push   $0x1
 129:	e8 22 07 00 00       	call   850 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 bc 0b 00 00       	push   $0xbbc
 135:	6a 01                	push   $0x1
 137:	e8 14 07 00 00       	call   850 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 30 10 00 00    	push   0x1030
 143:	e8 cb 05 00 00       	call   713 <kill>
 148:	e8 96 05 00 00       	call   6e3 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 2c 10 00 00 01 	addl   $0x1,0x102c
   lock_release(&lock);
 157:	68 24 10 00 00       	push   $0x1024
 15c:	e8 1f 03 00 00       	call   480 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 168:	e8 f3 02 00 00       	call   460 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 f2 05 00 00       	call   76b <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 28 10 00 00    	cmp    0x1028,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 2c 10 00 00 01 	addl   $0x1,0x102c
   lock_release(&lock2);
 192:	68 20 10 00 00       	push   $0x1020
 197:	e8 e4 02 00 00       	call   480 <lock_release>

   
   exit();
 19c:	e8 42 05 00 00       	call   6e3 <exit>
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <worker>:
}


void worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 14             	sub    $0x14,%esp
   lock_init(&lock);
 1b6:	68 24 10 00 00       	push   $0x1024
 1bb:	e8 90 02 00 00       	call   450 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1c7:	e8 84 02 00 00       	call   450 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 1d3:	e8 88 02 00 00       	call   460 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1df:	e8 7c 02 00 00       	call   460 <lock_acquire>

   int nested_thread_id = thread_create(worker2, 0, 0);
 1e4:	83 c4 0c             	add    $0xc,%esp
 1e7:	6a 00                	push   $0x0
 1e9:	6a 00                	push   $0x0
 1eb:	68 e0 00 00 00       	push   $0xe0
 1f0:	e8 6b 01 00 00       	call   360 <thread_create>
    assert(nested_thread_id > 0);
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	85 c0                	test   %eax,%eax
 1fa:	0f 8e 39 01 00 00    	jle    339 <worker+0x189>
   size = (unsigned int)sbrk(0);
 200:	83 ec 0c             	sub    $0xc,%esp
 203:	6a 00                	push   $0x0
 205:	e8 61 05 00 00       	call   76b <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 28 10 00 00       	mov    %eax,0x1028
   while (global < num_threads) {
 212:	a1 0c 10 00 00       	mov    0x100c,%eax
 217:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 24 10 00 00       	push   $0x1024
 228:	e8 53 02 00 00       	call   480 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 3a 05 00 00       	call   773 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 240:	e8 1b 02 00 00       	call   460 <lock_acquire>
   while (global < num_threads) {
 245:	a1 0c 10 00 00       	mov    0x100c,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 2c 10 00 00 00 	movl   $0x0,0x102c
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 ff 04 00 00       	call   76b <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 f3 04 00 00       	call   76b <sbrk>
   lock_release(&lock);
 278:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 28 10 00 00       	mov    %eax,0x1028
   lock_release(&lock);
 284:	e8 f7 01 00 00       	call   480 <lock_release>

   while (global < num_threads) {
 289:	a1 0c 10 00 00       	mov    0x100c,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 20 10 00 00       	push   $0x1020
 2a8:	e8 d3 01 00 00       	call   480 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 ba 04 00 00       	call   773 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 2c0:	e8 9b 01 00 00       	call   460 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 0c 10 00 00       	mov    0x100c,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 20 10 00 00       	push   $0x1020
 2dd:	e8 9e 01 00 00       	call   480 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 09 01 00 00       	call   3f0 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 f0 03 00 00       	call   6e3 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 78 0b 00 00       	push   $0xb78
 2fa:	68 82 0b 00 00       	push   $0xb82
 2ff:	6a 01                	push   $0x1
 301:	e8 4a 05 00 00       	call   850 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 de 0b 00 00       	push   $0xbde
 30e:	68 a8 0b 00 00       	push   $0xba8
 313:	6a 01                	push   $0x1
 315:	e8 36 05 00 00       	call   850 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 bc 0b 00 00       	push   $0xbbc
 321:	6a 01                	push   $0x1
 323:	e8 28 05 00 00       	call   850 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 30 10 00 00    	push   0x1030
 32f:	e8 df 03 00 00       	call   713 <kill>
 334:	e8 aa 03 00 00       	call   6e3 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 78 0b 00 00       	push   $0xb78
 340:	68 82 0b 00 00       	push   $0xb82
 345:	6a 01                	push   $0x1
 347:	e8 04 05 00 00       	call   850 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 c9 0b 00 00       	push   $0xbc9
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 365:	31 db                	xor    %ebx,%ebx
 367:	eb 0f                	jmp    378 <thread_create+0x18>
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 370:	83 c3 01             	add    $0x1,%ebx
 373:	83 fb 40             	cmp    $0x40,%ebx
 376:	74 60                	je     3d8 <thread_create+0x78>
    if (inUse[i] == 0){
 378:	8b 04 9d 40 10 00 00 	mov    0x1040(,%ebx,4),%eax
 37f:	85 c0                	test   %eax,%eax
 381:	75 ed                	jne    370 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 383:	a1 10 10 00 00       	mov    0x1010,%eax
 388:	83 ec 0c             	sub    $0xc,%esp
 38b:	01 c0                	add    %eax,%eax
 38d:	50                   	push   %eax
 38e:	e8 ed 06 00 00       	call   a80 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 393:	8b 35 10 10 00 00    	mov    0x1010,%esi
 399:	83 c4 10             	add    $0x10,%esp
 39c:	99                   	cltd   
      malloc_addrs[i] = stack;
 39d:	89 04 9d 40 11 00 00 	mov    %eax,0x1140(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 3a4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 3a6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 3a8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 3ab:	29 d6                	sub    %edx,%esi
 3ad:	01 f1                	add    %esi,%ecx
 3af:	85 d2                	test   %edx,%edx
 3b1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 3b4:	51                   	push   %ecx
 3b5:	ff 75 10             	push   0x10(%ebp)
 3b8:	ff 75 0c             	push   0xc(%ebp)
 3bb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 3be:	89 0c 9d 40 12 00 00 	mov    %ecx,0x1240(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 3c5:	e8 b9 03 00 00       	call   783 <clone>
 3ca:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 3cd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d0:	5b                   	pop    %ebx
 3d1:	5e                   	pop    %esi
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 3db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 3e0:	5b                   	pop    %ebx
 3e1:	5e                   	pop    %esi
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <thread_join>:

int 
thread_join()
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	56                   	push   %esi
 3f4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 3f5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 3f8:	31 db                	xor    %ebx,%ebx
{
 3fa:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 3fd:	50                   	push   %eax
 3fe:	e8 88 03 00 00       	call   78b <join>
 403:	83 c4 10             	add    $0x10,%esp
 406:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 408:	eb 0e                	jmp    418 <thread_join+0x28>
 40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 410:	83 c3 01             	add    $0x1,%ebx
 413:	83 fb 40             	cmp    $0x40,%ebx
 416:	74 27                	je     43f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 418:	83 3c 9d 40 10 00 00 	cmpl   $0x1,0x1040(,%ebx,4)
 41f:	01 
 420:	75 ee                	jne    410 <thread_join+0x20>
      free(malloc_addrs[i]);
 422:	83 ec 0c             	sub    $0xc,%esp
 425:	ff 34 9d 40 11 00 00 	push   0x1140(,%ebx,4)
 42c:	e8 bf 05 00 00       	call   9f0 <free>
      inUse[i] = 0;
      break;
 431:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 434:	c7 04 9d 40 10 00 00 	movl   $0x0,0x1040(,%ebx,4)
 43b:	00 00 00 00 
    }
  }
  return id;
}
 43f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 442:	89 f0                	mov    %esi,%eax
 444:	5b                   	pop    %ebx
 445:	5e                   	pop    %esi
 446:	5d                   	pop    %ebp
 447:	c3                   	ret    
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <lock_init>:

void lock_init(lock_t *lock){
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 453:	8b 45 08             	mov    0x8(%ebp),%eax
 456:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 45c:	5d                   	pop    %ebp
 45d:	c3                   	ret    
 45e:	66 90                	xchg   %ax,%ax

00000460 <lock_acquire>:

void lock_acquire(lock_t *lock){
 460:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 461:	b9 01 00 00 00       	mov    $0x1,%ecx
 466:	89 e5                	mov    %esp,%ebp
 468:	8b 55 08             	mov    0x8(%ebp),%edx
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop
 470:	89 c8                	mov    %ecx,%eax
 472:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 475:	85 c0                	test   %eax,%eax
 477:	75 f7                	jne    470 <lock_acquire+0x10>
}
 479:	5d                   	pop    %ebp
 47a:	c3                   	ret    
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <lock_release>:

void lock_release(lock_t *lock){
 480:	55                   	push   %ebp
 481:	31 c0                	xor    %eax,%eax
 483:	89 e5                	mov    %esp,%ebp
 485:	8b 55 08             	mov    0x8(%ebp),%edx
 488:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi

00000490 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 490:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 491:	31 c0                	xor    %eax,%eax
{
 493:	89 e5                	mov    %esp,%ebp
 495:	53                   	push   %ebx
 496:	8b 4d 08             	mov    0x8(%ebp),%ecx
 499:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 4a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 4a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 4a7:	83 c0 01             	add    $0x1,%eax
 4aa:	84 d2                	test   %dl,%dl
 4ac:	75 f2                	jne    4a0 <strcpy+0x10>
    ;
  return os;
}
 4ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4b1:	89 c8                	mov    %ecx,%eax
 4b3:	c9                   	leave  
 4b4:	c3                   	ret    
 4b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
 4c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4ca:	0f b6 02             	movzbl (%edx),%eax
 4cd:	84 c0                	test   %al,%al
 4cf:	75 17                	jne    4e8 <strcmp+0x28>
 4d1:	eb 3a                	jmp    50d <strcmp+0x4d>
 4d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d7:	90                   	nop
 4d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 4dc:	83 c2 01             	add    $0x1,%edx
 4df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 4e2:	84 c0                	test   %al,%al
 4e4:	74 1a                	je     500 <strcmp+0x40>
    p++, q++;
 4e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 4e8:	0f b6 19             	movzbl (%ecx),%ebx
 4eb:	38 c3                	cmp    %al,%bl
 4ed:	74 e9                	je     4d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 4ef:	29 d8                	sub    %ebx,%eax
}
 4f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f4:	c9                   	leave  
 4f5:	c3                   	ret    
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 500:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 504:	31 c0                	xor    %eax,%eax
 506:	29 d8                	sub    %ebx,%eax
}
 508:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 50b:	c9                   	leave  
 50c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 50d:	0f b6 19             	movzbl (%ecx),%ebx
 510:	31 c0                	xor    %eax,%eax
 512:	eb db                	jmp    4ef <strcmp+0x2f>
 514:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 51f:	90                   	nop

00000520 <strlen>:

uint
strlen(const char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 526:	80 3a 00             	cmpb   $0x0,(%edx)
 529:	74 15                	je     540 <strlen+0x20>
 52b:	31 c0                	xor    %eax,%eax
 52d:	8d 76 00             	lea    0x0(%esi),%esi
 530:	83 c0 01             	add    $0x1,%eax
 533:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 537:	89 c1                	mov    %eax,%ecx
 539:	75 f5                	jne    530 <strlen+0x10>
    ;
  return n;
}
 53b:	89 c8                	mov    %ecx,%eax
 53d:	5d                   	pop    %ebp
 53e:	c3                   	ret    
 53f:	90                   	nop
  for(n = 0; s[n]; n++)
 540:	31 c9                	xor    %ecx,%ecx
}
 542:	5d                   	pop    %ebp
 543:	89 c8                	mov    %ecx,%eax
 545:	c3                   	ret    
 546:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54d:	8d 76 00             	lea    0x0(%esi),%esi

00000550 <memset>:

void*
memset(void *dst, int c, uint n)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 557:	8b 4d 10             	mov    0x10(%ebp),%ecx
 55a:	8b 45 0c             	mov    0xc(%ebp),%eax
 55d:	89 d7                	mov    %edx,%edi
 55f:	fc                   	cld    
 560:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 562:	8b 7d fc             	mov    -0x4(%ebp),%edi
 565:	89 d0                	mov    %edx,%eax
 567:	c9                   	leave  
 568:	c3                   	ret    
 569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000570 <strchr>:

char*
strchr(const char *s, char c)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	8b 45 08             	mov    0x8(%ebp),%eax
 576:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 57a:	0f b6 10             	movzbl (%eax),%edx
 57d:	84 d2                	test   %dl,%dl
 57f:	75 12                	jne    593 <strchr+0x23>
 581:	eb 1d                	jmp    5a0 <strchr+0x30>
 583:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 587:	90                   	nop
 588:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 58c:	83 c0 01             	add    $0x1,%eax
 58f:	84 d2                	test   %dl,%dl
 591:	74 0d                	je     5a0 <strchr+0x30>
    if(*s == c)
 593:	38 d1                	cmp    %dl,%cl
 595:	75 f1                	jne    588 <strchr+0x18>
      return (char*)s;
  return 0;
}
 597:	5d                   	pop    %ebp
 598:	c3                   	ret    
 599:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 5a0:	31 c0                	xor    %eax,%eax
}
 5a2:	5d                   	pop    %ebp
 5a3:	c3                   	ret    
 5a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <gets>:

char*
gets(char *buf, int max)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 5b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 5b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 5b9:	31 db                	xor    %ebx,%ebx
{
 5bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 5be:	eb 27                	jmp    5e7 <gets+0x37>
    cc = read(0, &c, 1);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	6a 01                	push   $0x1
 5c5:	57                   	push   %edi
 5c6:	6a 00                	push   $0x0
 5c8:	e8 2e 01 00 00       	call   6fb <read>
    if(cc < 1)
 5cd:	83 c4 10             	add    $0x10,%esp
 5d0:	85 c0                	test   %eax,%eax
 5d2:	7e 1d                	jle    5f1 <gets+0x41>
      break;
    buf[i++] = c;
 5d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5d8:	8b 55 08             	mov    0x8(%ebp),%edx
 5db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5df:	3c 0a                	cmp    $0xa,%al
 5e1:	74 1d                	je     600 <gets+0x50>
 5e3:	3c 0d                	cmp    $0xd,%al
 5e5:	74 19                	je     600 <gets+0x50>
  for(i=0; i+1 < max; ){
 5e7:	89 de                	mov    %ebx,%esi
 5e9:	83 c3 01             	add    $0x1,%ebx
 5ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5ef:	7c cf                	jl     5c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 5f1:	8b 45 08             	mov    0x8(%ebp),%eax
 5f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fb:	5b                   	pop    %ebx
 5fc:	5e                   	pop    %esi
 5fd:	5f                   	pop    %edi
 5fe:	5d                   	pop    %ebp
 5ff:	c3                   	ret    
  buf[i] = '\0';
 600:	8b 45 08             	mov    0x8(%ebp),%eax
 603:	89 de                	mov    %ebx,%esi
 605:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 609:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60c:	5b                   	pop    %ebx
 60d:	5e                   	pop    %esi
 60e:	5f                   	pop    %edi
 60f:	5d                   	pop    %ebp
 610:	c3                   	ret    
 611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 618:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61f:	90                   	nop

00000620 <stat>:

int
stat(const char *n, struct stat *st)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	56                   	push   %esi
 624:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 625:	83 ec 08             	sub    $0x8,%esp
 628:	6a 00                	push   $0x0
 62a:	ff 75 08             	push   0x8(%ebp)
 62d:	e8 f1 00 00 00       	call   723 <open>
  if(fd < 0)
 632:	83 c4 10             	add    $0x10,%esp
 635:	85 c0                	test   %eax,%eax
 637:	78 27                	js     660 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 639:	83 ec 08             	sub    $0x8,%esp
 63c:	ff 75 0c             	push   0xc(%ebp)
 63f:	89 c3                	mov    %eax,%ebx
 641:	50                   	push   %eax
 642:	e8 f4 00 00 00       	call   73b <fstat>
  close(fd);
 647:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 64a:	89 c6                	mov    %eax,%esi
  close(fd);
 64c:	e8 ba 00 00 00       	call   70b <close>
  return r;
 651:	83 c4 10             	add    $0x10,%esp
}
 654:	8d 65 f8             	lea    -0x8(%ebp),%esp
 657:	89 f0                	mov    %esi,%eax
 659:	5b                   	pop    %ebx
 65a:	5e                   	pop    %esi
 65b:	5d                   	pop    %ebp
 65c:	c3                   	ret    
 65d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 660:	be ff ff ff ff       	mov    $0xffffffff,%esi
 665:	eb ed                	jmp    654 <stat+0x34>
 667:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66e:	66 90                	xchg   %ax,%ax

00000670 <atoi>:

int
atoi(const char *s)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	53                   	push   %ebx
 674:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 677:	0f be 02             	movsbl (%edx),%eax
 67a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 67d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 680:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 685:	77 1e                	ja     6a5 <atoi+0x35>
 687:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 690:	83 c2 01             	add    $0x1,%edx
 693:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 696:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 69a:	0f be 02             	movsbl (%edx),%eax
 69d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6a0:	80 fb 09             	cmp    $0x9,%bl
 6a3:	76 eb                	jbe    690 <atoi+0x20>
  return n;
}
 6a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6a8:	89 c8                	mov    %ecx,%eax
 6aa:	c9                   	leave  
 6ab:	c3                   	ret    
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	8b 45 10             	mov    0x10(%ebp),%eax
 6b7:	8b 55 08             	mov    0x8(%ebp),%edx
 6ba:	56                   	push   %esi
 6bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6be:	85 c0                	test   %eax,%eax
 6c0:	7e 13                	jle    6d5 <memmove+0x25>
 6c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 6c4:	89 d7                	mov    %edx,%edi
 6c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 6d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 6d1:	39 f8                	cmp    %edi,%eax
 6d3:	75 fb                	jne    6d0 <memmove+0x20>
  return vdst;
}
 6d5:	5e                   	pop    %esi
 6d6:	89 d0                	mov    %edx,%eax
 6d8:	5f                   	pop    %edi
 6d9:	5d                   	pop    %ebp
 6da:	c3                   	ret    

000006db <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6db:	b8 01 00 00 00       	mov    $0x1,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <exit>:
SYSCALL(exit)
 6e3:	b8 02 00 00 00       	mov    $0x2,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <wait>:
SYSCALL(wait)
 6eb:	b8 03 00 00 00       	mov    $0x3,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <pipe>:
SYSCALL(pipe)
 6f3:	b8 04 00 00 00       	mov    $0x4,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <read>:
SYSCALL(read)
 6fb:	b8 05 00 00 00       	mov    $0x5,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <write>:
SYSCALL(write)
 703:	b8 10 00 00 00       	mov    $0x10,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <close>:
SYSCALL(close)
 70b:	b8 15 00 00 00       	mov    $0x15,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <kill>:
SYSCALL(kill)
 713:	b8 06 00 00 00       	mov    $0x6,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <exec>:
SYSCALL(exec)
 71b:	b8 07 00 00 00       	mov    $0x7,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <open>:
SYSCALL(open)
 723:	b8 0f 00 00 00       	mov    $0xf,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <mknod>:
SYSCALL(mknod)
 72b:	b8 11 00 00 00       	mov    $0x11,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <unlink>:
SYSCALL(unlink)
 733:	b8 12 00 00 00       	mov    $0x12,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <fstat>:
SYSCALL(fstat)
 73b:	b8 08 00 00 00       	mov    $0x8,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <link>:
SYSCALL(link)
 743:	b8 13 00 00 00       	mov    $0x13,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <mkdir>:
SYSCALL(mkdir)
 74b:	b8 14 00 00 00       	mov    $0x14,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    

00000753 <chdir>:
SYSCALL(chdir)
 753:	b8 09 00 00 00       	mov    $0x9,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret    

0000075b <dup>:
SYSCALL(dup)
 75b:	b8 0a 00 00 00       	mov    $0xa,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret    

00000763 <getpid>:
SYSCALL(getpid)
 763:	b8 0b 00 00 00       	mov    $0xb,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret    

0000076b <sbrk>:
SYSCALL(sbrk)
 76b:	b8 0c 00 00 00       	mov    $0xc,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret    

00000773 <sleep>:
SYSCALL(sleep)
 773:	b8 0d 00 00 00       	mov    $0xd,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret    

0000077b <uptime>:
SYSCALL(uptime)
 77b:	b8 0e 00 00 00       	mov    $0xe,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret    

00000783 <clone>:
SYSCALL(clone)
 783:	b8 16 00 00 00       	mov    $0x16,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret    

0000078b <join>:
SYSCALL(join)
 78b:	b8 17 00 00 00       	mov    $0x17,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret    
 793:	66 90                	xchg   %ax,%ax
 795:	66 90                	xchg   %ax,%ax
 797:	66 90                	xchg   %ax,%ax
 799:	66 90                	xchg   %ax,%ax
 79b:	66 90                	xchg   %ax,%ax
 79d:	66 90                	xchg   %ax,%ax
 79f:	90                   	nop

000007a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 3c             	sub    $0x3c,%esp
 7a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7ac:	89 d1                	mov    %edx,%ecx
{
 7ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7b1:	85 d2                	test   %edx,%edx
 7b3:	0f 89 7f 00 00 00    	jns    838 <printint+0x98>
 7b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7bd:	74 79                	je     838 <printint+0x98>
    neg = 1;
 7bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7c8:	31 db                	xor    %ebx,%ebx
 7ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7d0:	89 c8                	mov    %ecx,%eax
 7d2:	31 d2                	xor    %edx,%edx
 7d4:	89 cf                	mov    %ecx,%edi
 7d6:	f7 75 c4             	divl   -0x3c(%ebp)
 7d9:	0f b6 92 70 0c 00 00 	movzbl 0xc70(%edx),%edx
 7e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7e3:	89 d8                	mov    %ebx,%eax
 7e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7f1:	76 dd                	jbe    7d0 <printint+0x30>
  if(neg)
 7f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7f6:	85 c9                	test   %ecx,%ecx
 7f8:	74 0c                	je     806 <printint+0x66>
    buf[i++] = '-';
 7fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 801:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 806:	8b 7d b8             	mov    -0x48(%ebp),%edi
 809:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 80d:	eb 07                	jmp    816 <printint+0x76>
 80f:	90                   	nop
    putc(fd, buf[i]);
 810:	0f b6 13             	movzbl (%ebx),%edx
 813:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 816:	83 ec 04             	sub    $0x4,%esp
 819:	88 55 d7             	mov    %dl,-0x29(%ebp)
 81c:	6a 01                	push   $0x1
 81e:	56                   	push   %esi
 81f:	57                   	push   %edi
 820:	e8 de fe ff ff       	call   703 <write>
  while(--i >= 0)
 825:	83 c4 10             	add    $0x10,%esp
 828:	39 de                	cmp    %ebx,%esi
 82a:	75 e4                	jne    810 <printint+0x70>
}
 82c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 82f:	5b                   	pop    %ebx
 830:	5e                   	pop    %esi
 831:	5f                   	pop    %edi
 832:	5d                   	pop    %ebp
 833:	c3                   	ret    
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 838:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 83f:	eb 87                	jmp    7c8 <printint+0x28>
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop

00000850 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
 853:	57                   	push   %edi
 854:	56                   	push   %esi
 855:	53                   	push   %ebx
 856:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 859:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 85c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 85f:	0f b6 13             	movzbl (%ebx),%edx
 862:	84 d2                	test   %dl,%dl
 864:	74 6a                	je     8d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 866:	8d 45 10             	lea    0x10(%ebp),%eax
 869:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 86c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 86f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 871:	89 45 d0             	mov    %eax,-0x30(%ebp)
 874:	eb 36                	jmp    8ac <printf+0x5c>
 876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
 880:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 883:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 888:	83 f8 25             	cmp    $0x25,%eax
 88b:	74 15                	je     8a2 <printf+0x52>
  write(fd, &c, 1);
 88d:	83 ec 04             	sub    $0x4,%esp
 890:	88 55 e7             	mov    %dl,-0x19(%ebp)
 893:	6a 01                	push   $0x1
 895:	57                   	push   %edi
 896:	56                   	push   %esi
 897:	e8 67 fe ff ff       	call   703 <write>
 89c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 89f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8a2:	0f b6 13             	movzbl (%ebx),%edx
 8a5:	83 c3 01             	add    $0x1,%ebx
 8a8:	84 d2                	test   %dl,%dl
 8aa:	74 24                	je     8d0 <printf+0x80>
    c = fmt[i] & 0xff;
 8ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8af:	85 c9                	test   %ecx,%ecx
 8b1:	74 cd                	je     880 <printf+0x30>
      }
    } else if(state == '%'){
 8b3:	83 f9 25             	cmp    $0x25,%ecx
 8b6:	75 ea                	jne    8a2 <printf+0x52>
      if(c == 'd'){
 8b8:	83 f8 25             	cmp    $0x25,%eax
 8bb:	0f 84 07 01 00 00    	je     9c8 <printf+0x178>
 8c1:	83 e8 63             	sub    $0x63,%eax
 8c4:	83 f8 15             	cmp    $0x15,%eax
 8c7:	77 17                	ja     8e0 <printf+0x90>
 8c9:	ff 24 85 18 0c 00 00 	jmp    *0xc18(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8d3:	5b                   	pop    %ebx
 8d4:	5e                   	pop    %esi
 8d5:	5f                   	pop    %edi
 8d6:	5d                   	pop    %ebp
 8d7:	c3                   	ret    
 8d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8df:	90                   	nop
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
 8e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8e6:	6a 01                	push   $0x1
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ee:	e8 10 fe ff ff       	call   703 <write>
        putc(fd, c);
 8f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8f7:	83 c4 0c             	add    $0xc,%esp
 8fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8fd:	6a 01                	push   $0x1
 8ff:	57                   	push   %edi
 900:	56                   	push   %esi
 901:	e8 fd fd ff ff       	call   703 <write>
        putc(fd, c);
 906:	83 c4 10             	add    $0x10,%esp
      state = 0;
 909:	31 c9                	xor    %ecx,%ecx
 90b:	eb 95                	jmp    8a2 <printf+0x52>
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 10 00 00 00       	mov    $0x10,%ecx
 918:	6a 00                	push   $0x0
 91a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91d:	8b 10                	mov    (%eax),%edx
 91f:	89 f0                	mov    %esi,%eax
 921:	e8 7a fe ff ff       	call   7a0 <printint>
        ap++;
 926:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 92a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92d:	31 c9                	xor    %ecx,%ecx
 92f:	e9 6e ff ff ff       	jmp    8a2 <printf+0x52>
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 938:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93b:	8b 10                	mov    (%eax),%edx
        ap++;
 93d:	83 c0 04             	add    $0x4,%eax
 940:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 943:	85 d2                	test   %edx,%edx
 945:	0f 84 8d 00 00 00    	je     9d8 <printf+0x188>
        while(*s != 0){
 94b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 94e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 950:	84 c0                	test   %al,%al
 952:	0f 84 4a ff ff ff    	je     8a2 <printf+0x52>
 958:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 95b:	89 d3                	mov    %edx,%ebx
 95d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 960:	83 ec 04             	sub    $0x4,%esp
          s++;
 963:	83 c3 01             	add    $0x1,%ebx
 966:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 969:	6a 01                	push   $0x1
 96b:	57                   	push   %edi
 96c:	56                   	push   %esi
 96d:	e8 91 fd ff ff       	call   703 <write>
        while(*s != 0){
 972:	0f b6 03             	movzbl (%ebx),%eax
 975:	83 c4 10             	add    $0x10,%esp
 978:	84 c0                	test   %al,%al
 97a:	75 e4                	jne    960 <printf+0x110>
      state = 0;
 97c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 97f:	31 c9                	xor    %ecx,%ecx
 981:	e9 1c ff ff ff       	jmp    8a2 <printf+0x52>
 986:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 98d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 990:	83 ec 0c             	sub    $0xc,%esp
 993:	b9 0a 00 00 00       	mov    $0xa,%ecx
 998:	6a 01                	push   $0x1
 99a:	e9 7b ff ff ff       	jmp    91a <printf+0xca>
 99f:	90                   	nop
        putc(fd, *ap);
 9a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9a8:	6a 01                	push   $0x1
 9aa:	57                   	push   %edi
 9ab:	56                   	push   %esi
        putc(fd, *ap);
 9ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9af:	e8 4f fd ff ff       	call   703 <write>
        ap++;
 9b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9bb:	31 c9                	xor    %ecx,%ecx
 9bd:	e9 e0 fe ff ff       	jmp    8a2 <printf+0x52>
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9cb:	83 ec 04             	sub    $0x4,%esp
 9ce:	e9 2a ff ff ff       	jmp    8fd <printf+0xad>
 9d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9d7:	90                   	nop
          s = "(null)";
 9d8:	ba 0e 0c 00 00       	mov    $0xc0e,%edx
        while(*s != 0){
 9dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9e0:	b8 28 00 00 00       	mov    $0x28,%eax
 9e5:	89 d3                	mov    %edx,%ebx
 9e7:	e9 74 ff ff ff       	jmp    960 <printf+0x110>
 9ec:	66 90                	xchg   %ax,%ax
 9ee:	66 90                	xchg   %ax,%ax

000009f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f1:	a1 40 13 00 00       	mov    0x1340,%eax
{
 9f6:	89 e5                	mov    %esp,%ebp
 9f8:	57                   	push   %edi
 9f9:	56                   	push   %esi
 9fa:	53                   	push   %ebx
 9fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a08:	89 c2                	mov    %eax,%edx
 a0a:	8b 00                	mov    (%eax),%eax
 a0c:	39 ca                	cmp    %ecx,%edx
 a0e:	73 30                	jae    a40 <free+0x50>
 a10:	39 c1                	cmp    %eax,%ecx
 a12:	72 04                	jb     a18 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a14:	39 c2                	cmp    %eax,%edx
 a16:	72 f0                	jb     a08 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a1e:	39 f8                	cmp    %edi,%eax
 a20:	74 30                	je     a52 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a22:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a25:	8b 42 04             	mov    0x4(%edx),%eax
 a28:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a2b:	39 f1                	cmp    %esi,%ecx
 a2d:	74 3a                	je     a69 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a2f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a31:	5b                   	pop    %ebx
  freep = p;
 a32:	89 15 40 13 00 00    	mov    %edx,0x1340
}
 a38:	5e                   	pop    %esi
 a39:	5f                   	pop    %edi
 a3a:	5d                   	pop    %ebp
 a3b:	c3                   	ret    
 a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a40:	39 c2                	cmp    %eax,%edx
 a42:	72 c4                	jb     a08 <free+0x18>
 a44:	39 c1                	cmp    %eax,%ecx
 a46:	73 c0                	jae    a08 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a48:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a4b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a4e:	39 f8                	cmp    %edi,%eax
 a50:	75 d0                	jne    a22 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a52:	03 70 04             	add    0x4(%eax),%esi
 a55:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a58:	8b 02                	mov    (%edx),%eax
 a5a:	8b 00                	mov    (%eax),%eax
 a5c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a5f:	8b 42 04             	mov    0x4(%edx),%eax
 a62:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a65:	39 f1                	cmp    %esi,%ecx
 a67:	75 c6                	jne    a2f <free+0x3f>
    p->s.size += bp->s.size;
 a69:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a6c:	89 15 40 13 00 00    	mov    %edx,0x1340
    p->s.size += bp->s.size;
 a72:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a75:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a78:	89 0a                	mov    %ecx,(%edx)
}
 a7a:	5b                   	pop    %ebx
 a7b:	5e                   	pop    %esi
 a7c:	5f                   	pop    %edi
 a7d:	5d                   	pop    %ebp
 a7e:	c3                   	ret    
 a7f:	90                   	nop

00000a80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a80:	55                   	push   %ebp
 a81:	89 e5                	mov    %esp,%ebp
 a83:	57                   	push   %edi
 a84:	56                   	push   %esi
 a85:	53                   	push   %ebx
 a86:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a8c:	8b 3d 40 13 00 00    	mov    0x1340,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a92:	8d 70 07             	lea    0x7(%eax),%esi
 a95:	c1 ee 03             	shr    $0x3,%esi
 a98:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a9b:	85 ff                	test   %edi,%edi
 a9d:	0f 84 9d 00 00 00    	je     b40 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 aa5:	8b 4a 04             	mov    0x4(%edx),%ecx
 aa8:	39 f1                	cmp    %esi,%ecx
 aaa:	73 6a                	jae    b16 <malloc+0x96>
 aac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ab1:	39 de                	cmp    %ebx,%esi
 ab3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ab6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 abd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ac0:	eb 17                	jmp    ad9 <malloc+0x59>
 ac2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aca:	8b 48 04             	mov    0x4(%eax),%ecx
 acd:	39 f1                	cmp    %esi,%ecx
 acf:	73 4f                	jae    b20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ad1:	8b 3d 40 13 00 00    	mov    0x1340,%edi
 ad7:	89 c2                	mov    %eax,%edx
 ad9:	39 d7                	cmp    %edx,%edi
 adb:	75 eb                	jne    ac8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 add:	83 ec 0c             	sub    $0xc,%esp
 ae0:	ff 75 e4             	push   -0x1c(%ebp)
 ae3:	e8 83 fc ff ff       	call   76b <sbrk>
  if(p == (char*)-1)
 ae8:	83 c4 10             	add    $0x10,%esp
 aeb:	83 f8 ff             	cmp    $0xffffffff,%eax
 aee:	74 1c                	je     b0c <malloc+0x8c>
  hp->s.size = nu;
 af0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 af3:	83 ec 0c             	sub    $0xc,%esp
 af6:	83 c0 08             	add    $0x8,%eax
 af9:	50                   	push   %eax
 afa:	e8 f1 fe ff ff       	call   9f0 <free>
  return freep;
 aff:	8b 15 40 13 00 00    	mov    0x1340,%edx
      if((p = morecore(nunits)) == 0)
 b05:	83 c4 10             	add    $0x10,%esp
 b08:	85 d2                	test   %edx,%edx
 b0a:	75 bc                	jne    ac8 <malloc+0x48>
        return 0;
  }
}
 b0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b0f:	31 c0                	xor    %eax,%eax
}
 b11:	5b                   	pop    %ebx
 b12:	5e                   	pop    %esi
 b13:	5f                   	pop    %edi
 b14:	5d                   	pop    %ebp
 b15:	c3                   	ret    
    if(p->s.size >= nunits){
 b16:	89 d0                	mov    %edx,%eax
 b18:	89 fa                	mov    %edi,%edx
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b20:	39 ce                	cmp    %ecx,%esi
 b22:	74 4c                	je     b70 <malloc+0xf0>
        p->s.size -= nunits;
 b24:	29 f1                	sub    %esi,%ecx
 b26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b2c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b2f:	89 15 40 13 00 00    	mov    %edx,0x1340
}
 b35:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b38:	83 c0 08             	add    $0x8,%eax
}
 b3b:	5b                   	pop    %ebx
 b3c:	5e                   	pop    %esi
 b3d:	5f                   	pop    %edi
 b3e:	5d                   	pop    %ebp
 b3f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b40:	c7 05 40 13 00 00 44 	movl   $0x1344,0x1340
 b47:	13 00 00 
    base.s.size = 0;
 b4a:	bf 44 13 00 00       	mov    $0x1344,%edi
    base.s.ptr = freep = prevp = &base;
 b4f:	c7 05 44 13 00 00 44 	movl   $0x1344,0x1344
 b56:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b59:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b5b:	c7 05 48 13 00 00 00 	movl   $0x0,0x1348
 b62:	00 00 00 
    if(p->s.size >= nunits){
 b65:	e9 42 ff ff ff       	jmp    aac <malloc+0x2c>
 b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b70:	8b 08                	mov    (%eax),%ecx
 b72:	89 0a                	mov    %ecx,(%edx)
 b74:	eb b9                	jmp    b2f <malloc+0xaf>
