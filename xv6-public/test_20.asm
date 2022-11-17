
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
  11:	e8 6d 07 00 00       	call   783 <getpid>

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
  2e:	e8 58 07 00 00       	call   78b <sbrk>

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
  5f:	68 21 0c 00 00       	push   $0xc21
  64:	6a 01                	push   $0x1
  66:	e8 05 08 00 00       	call   870 <printf>
   exit();
  6b:	e8 93 06 00 00       	call   703 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 98 0b 00 00       	push   $0xb98
  77:	68 a2 0b 00 00       	push   $0xba2
  7c:	6a 01                	push   $0x1
  7e:	e8 ed 07 00 00       	call   870 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 05 0c 00 00       	push   $0xc05
  8b:	68 c8 0b 00 00       	push   $0xbc8
  90:	6a 01                	push   $0x1
  92:	e8 d9 07 00 00       	call   870 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 dc 0b 00 00       	push   $0xbdc
  9e:	6a 01                	push   $0x1
  a0:	e8 cb 07 00 00       	call   870 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 30 10 00 00    	push   0x1030
  ac:	e8 82 06 00 00       	call   733 <kill>
  b1:	e8 4d 06 00 00       	call   703 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 98 0b 00 00       	push   $0xb98
  bd:	68 a2 0b 00 00       	push   $0xba2
  c2:	6a 01                	push   $0x1
  c4:	e8 a7 07 00 00       	call   870 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 12 0c 00 00       	push   $0xc12
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
  eb:	e8 90 03 00 00       	call   480 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 8f 06 00 00       	call   78b <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 28 10 00 00    	cmp    0x1028,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 98 0b 00 00       	push   $0xb98
 10e:	68 a2 0b 00 00       	push   $0xba2
 113:	6a 01                	push   $0x1
 115:	e8 56 07 00 00       	call   870 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 aa 0b 00 00       	push   $0xbaa
 122:	68 c8 0b 00 00       	push   $0xbc8
 127:	6a 01                	push   $0x1
 129:	e8 42 07 00 00       	call   870 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 dc 0b 00 00       	push   $0xbdc
 135:	6a 01                	push   $0x1
 137:	e8 34 07 00 00       	call   870 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 30 10 00 00    	push   0x1030
 143:	e8 eb 05 00 00       	call   733 <kill>
 148:	e8 b6 05 00 00       	call   703 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 2c 10 00 00 01 	addl   $0x1,0x102c
   lock_release(&lock);
 157:	68 24 10 00 00       	push   $0x1024
 15c:	e8 3f 03 00 00       	call   4a0 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 168:	e8 13 03 00 00       	call   480 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 12 06 00 00       	call   78b <sbrk>
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
 197:	e8 04 03 00 00       	call   4a0 <lock_release>

   
   exit();
 19c:	e8 62 05 00 00       	call   703 <exit>
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
 1bb:	e8 b0 02 00 00       	call   470 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1c7:	e8 a4 02 00 00       	call   470 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 1d3:	e8 a8 02 00 00       	call   480 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1df:	e8 9c 02 00 00       	call   480 <lock_acquire>

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
 205:	e8 81 05 00 00       	call   78b <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 28 10 00 00       	mov    %eax,0x1028
   while (global < num_threads) {
 212:	a1 18 10 00 00       	mov    0x1018,%eax
 217:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 24 10 00 00       	push   $0x1024
 228:	e8 73 02 00 00       	call   4a0 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 5a 05 00 00       	call   793 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
 240:	e8 3b 02 00 00       	call   480 <lock_acquire>
   while (global < num_threads) {
 245:	a1 18 10 00 00       	mov    0x1018,%eax
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
 267:	e8 1f 05 00 00       	call   78b <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 13 05 00 00       	call   78b <sbrk>
   lock_release(&lock);
 278:	c7 04 24 24 10 00 00 	movl   $0x1024,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 28 10 00 00       	mov    %eax,0x1028
   lock_release(&lock);
 284:	e8 17 02 00 00       	call   4a0 <lock_release>

   while (global < num_threads) {
 289:	a1 18 10 00 00       	mov    0x1018,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 20 10 00 00       	push   $0x1020
 2a8:	e8 f3 01 00 00       	call   4a0 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 da 04 00 00       	call   793 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 2c0:	e8 bb 01 00 00       	call   480 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 18 10 00 00       	mov    0x1018,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 2c 10 00 00    	cmp    %eax,0x102c
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 20 10 00 00       	push   $0x1020
 2dd:	e8 be 01 00 00       	call   4a0 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 09 01 00 00       	call   3f0 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 10 04 00 00       	call   703 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 98 0b 00 00       	push   $0xb98
 2fa:	68 a2 0b 00 00       	push   $0xba2
 2ff:	6a 01                	push   $0x1
 301:	e8 6a 05 00 00       	call   870 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 fe 0b 00 00       	push   $0xbfe
 30e:	68 c8 0b 00 00       	push   $0xbc8
 313:	6a 01                	push   $0x1
 315:	e8 56 05 00 00       	call   870 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 dc 0b 00 00       	push   $0xbdc
 321:	6a 01                	push   $0x1
 323:	e8 48 05 00 00       	call   870 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 30 10 00 00    	push   0x1030
 32f:	e8 ff 03 00 00       	call   733 <kill>
 334:	e8 ca 03 00 00       	call   703 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 98 0b 00 00       	push   $0xb98
 340:	68 a2 0b 00 00       	push   $0xba2
 345:	6a 01                	push   $0x1
 347:	e8 24 05 00 00       	call   870 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 e9 0b 00 00       	push   $0xbe9
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
 363:	53                   	push   %ebx
 364:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 367:	a1 1c 10 00 00       	mov    0x101c,%eax
 36c:	01 c0                	add    %eax,%eax
 36e:	50                   	push   %eax
 36f:	e8 2c 07 00 00       	call   aa0 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 374:	8b 0d 1c 10 00 00    	mov    0x101c,%ecx
 37a:	31 d2                	xor    %edx,%edx
 37c:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 37f:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 381:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 383:	89 c8                	mov    %ecx,%eax
 385:	01 d9                	add    %ebx,%ecx
 387:	29 d0                	sub    %edx,%eax
 389:	01 d8                	add    %ebx,%eax
 38b:	85 d2                	test   %edx,%edx
 38d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 390:	31 d2                	xor    %edx,%edx
 392:	eb 0c                	jmp    3a0 <thread_create+0x40>
 394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 398:	83 c2 01             	add    $0x1,%edx
 39b:	83 fa 40             	cmp    $0x40,%edx
 39e:	74 2f                	je     3cf <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 3a0:	8b 04 95 40 12 00 00 	mov    0x1240(,%edx,4),%eax
 3a7:	85 c0                	test   %eax,%eax
 3a9:	75 ed                	jne    398 <thread_create+0x38>
 3ab:	8b 04 95 40 10 00 00 	mov    0x1040(,%edx,4),%eax
 3b2:	85 c0                	test   %eax,%eax
 3b4:	75 e2                	jne    398 <thread_create+0x38>
      inUse[i] = 1;
 3b6:	c7 04 95 40 10 00 00 	movl   $0x1,0x1040(,%edx,4)
 3bd:	01 00 00 00 
      malloc_addrs[i] = original;
 3c1:	89 1c 95 40 11 00 00 	mov    %ebx,0x1140(,%edx,4)
      stack_addrs[i] = stack;
 3c8:	89 0c 95 40 12 00 00 	mov    %ecx,0x1240(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 3cf:	51                   	push   %ecx
 3d0:	ff 75 10             	push   0x10(%ebp)
 3d3:	ff 75 0c             	push   0xc(%ebp)
 3d6:	ff 75 08             	push   0x8(%ebp)
 3d9:	e8 c5 03 00 00       	call   7a3 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 3de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e1:	c9                   	leave  
 3e2:	c3                   	ret    
 3e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <thread_join>:

int 
thread_join()
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 3f4:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 3f6:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 3f9:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 3fc:	50                   	push   %eax
 3fd:	e8 a9 03 00 00       	call   7ab <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 402:	8b 55 f4             	mov    -0xc(%ebp),%edx
 405:	83 c4 10             	add    $0x10,%esp
 408:	eb 0e                	jmp    418 <thread_join+0x28>
 40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 410:	83 c3 01             	add    $0x1,%ebx
 413:	83 fb 40             	cmp    $0x40,%ebx
 416:	74 4c                	je     464 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 418:	83 3c 9d 40 10 00 00 	cmpl   $0x1,0x1040(,%ebx,4)
 41f:	01 
 420:	75 ee                	jne    410 <thread_join+0x20>
 422:	39 14 9d 40 12 00 00 	cmp    %edx,0x1240(,%ebx,4)
 429:	75 e5                	jne    410 <thread_join+0x20>
      free(malloc_addrs[i]);
 42b:	83 ec 0c             	sub    $0xc,%esp
 42e:	ff 34 9d 40 11 00 00 	push   0x1140(,%ebx,4)
 435:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 438:	e8 d3 05 00 00       	call   a10 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 43d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 440:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 443:	c7 04 9d 40 11 00 00 	movl   $0x0,0x1140(,%ebx,4)
 44a:	00 00 00 00 
      stack_addrs[i] = 0;
 44e:	c7 04 9d 40 12 00 00 	movl   $0x0,0x1240(,%ebx,4)
 455:	00 00 00 00 
      inUse[i] = 0;
 459:	c7 04 9d 40 10 00 00 	movl   $0x0,0x1040(,%ebx,4)
 460:	00 00 00 00 
    }
  }
  return threadId; 
}
 464:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 467:	c9                   	leave  
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000470 <lock_init>:

void lock_init(lock_t *lock){
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 47c:	5d                   	pop    %ebp
 47d:	c3                   	ret    
 47e:	66 90                	xchg   %ax,%ax

00000480 <lock_acquire>:

void lock_acquire(lock_t *lock){
 480:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 481:	b9 01 00 00 00       	mov    $0x1,%ecx
 486:	89 e5                	mov    %esp,%ebp
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop
 490:	89 c8                	mov    %ecx,%eax
 492:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 495:	85 c0                	test   %eax,%eax
 497:	75 f7                	jne    490 <lock_acquire+0x10>
}
 499:	5d                   	pop    %ebp
 49a:	c3                   	ret    
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <lock_release>:

void lock_release(lock_t *lock){
 4a0:	55                   	push   %ebp
 4a1:	31 c0                	xor    %eax,%eax
 4a3:	89 e5                	mov    %esp,%ebp
 4a5:	8b 55 08             	mov    0x8(%ebp),%edx
 4a8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	8d 76 00             	lea    0x0(%esi),%esi

000004b0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 4b0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4b1:	31 c0                	xor    %eax,%eax
{
 4b3:	89 e5                	mov    %esp,%ebp
 4b5:	53                   	push   %ebx
 4b6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 4c0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 4c4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 4c7:	83 c0 01             	add    $0x1,%eax
 4ca:	84 d2                	test   %dl,%dl
 4cc:	75 f2                	jne    4c0 <strcpy+0x10>
    ;
  return os;
}
 4ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d1:	89 c8                	mov    %ecx,%eax
 4d3:	c9                   	leave  
 4d4:	c3                   	ret    
 4d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 55 08             	mov    0x8(%ebp),%edx
 4e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4ea:	0f b6 02             	movzbl (%edx),%eax
 4ed:	84 c0                	test   %al,%al
 4ef:	75 17                	jne    508 <strcmp+0x28>
 4f1:	eb 3a                	jmp    52d <strcmp+0x4d>
 4f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4f7:	90                   	nop
 4f8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 4fc:	83 c2 01             	add    $0x1,%edx
 4ff:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 502:	84 c0                	test   %al,%al
 504:	74 1a                	je     520 <strcmp+0x40>
    p++, q++;
 506:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 508:	0f b6 19             	movzbl (%ecx),%ebx
 50b:	38 c3                	cmp    %al,%bl
 50d:	74 e9                	je     4f8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 50f:	29 d8                	sub    %ebx,%eax
}
 511:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 514:	c9                   	leave  
 515:	c3                   	ret    
 516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 520:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 524:	31 c0                	xor    %eax,%eax
 526:	29 d8                	sub    %ebx,%eax
}
 528:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 52b:	c9                   	leave  
 52c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 52d:	0f b6 19             	movzbl (%ecx),%ebx
 530:	31 c0                	xor    %eax,%eax
 532:	eb db                	jmp    50f <strcmp+0x2f>
 534:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 53f:	90                   	nop

00000540 <strlen>:

uint
strlen(const char *s)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 546:	80 3a 00             	cmpb   $0x0,(%edx)
 549:	74 15                	je     560 <strlen+0x20>
 54b:	31 c0                	xor    %eax,%eax
 54d:	8d 76 00             	lea    0x0(%esi),%esi
 550:	83 c0 01             	add    $0x1,%eax
 553:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 557:	89 c1                	mov    %eax,%ecx
 559:	75 f5                	jne    550 <strlen+0x10>
    ;
  return n;
}
 55b:	89 c8                	mov    %ecx,%eax
 55d:	5d                   	pop    %ebp
 55e:	c3                   	ret    
 55f:	90                   	nop
  for(n = 0; s[n]; n++)
 560:	31 c9                	xor    %ecx,%ecx
}
 562:	5d                   	pop    %ebp
 563:	89 c8                	mov    %ecx,%eax
 565:	c3                   	ret    
 566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56d:	8d 76 00             	lea    0x0(%esi),%esi

00000570 <memset>:

void*
memset(void *dst, int c, uint n)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 577:	8b 4d 10             	mov    0x10(%ebp),%ecx
 57a:	8b 45 0c             	mov    0xc(%ebp),%eax
 57d:	89 d7                	mov    %edx,%edi
 57f:	fc                   	cld    
 580:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 582:	8b 7d fc             	mov    -0x4(%ebp),%edi
 585:	89 d0                	mov    %edx,%eax
 587:	c9                   	leave  
 588:	c3                   	ret    
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000590 <strchr>:

char*
strchr(const char *s, char c)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	8b 45 08             	mov    0x8(%ebp),%eax
 596:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 59a:	0f b6 10             	movzbl (%eax),%edx
 59d:	84 d2                	test   %dl,%dl
 59f:	75 12                	jne    5b3 <strchr+0x23>
 5a1:	eb 1d                	jmp    5c0 <strchr+0x30>
 5a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5a7:	90                   	nop
 5a8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 5ac:	83 c0 01             	add    $0x1,%eax
 5af:	84 d2                	test   %dl,%dl
 5b1:	74 0d                	je     5c0 <strchr+0x30>
    if(*s == c)
 5b3:	38 d1                	cmp    %dl,%cl
 5b5:	75 f1                	jne    5a8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 5b7:	5d                   	pop    %ebp
 5b8:	c3                   	ret    
 5b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 5c0:	31 c0                	xor    %eax,%eax
}
 5c2:	5d                   	pop    %ebp
 5c3:	c3                   	ret    
 5c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5cf:	90                   	nop

000005d0 <gets>:

char*
gets(char *buf, int max)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 5d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 5d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 5d9:	31 db                	xor    %ebx,%ebx
{
 5db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 5de:	eb 27                	jmp    607 <gets+0x37>
    cc = read(0, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	6a 01                	push   $0x1
 5e5:	57                   	push   %edi
 5e6:	6a 00                	push   $0x0
 5e8:	e8 2e 01 00 00       	call   71b <read>
    if(cc < 1)
 5ed:	83 c4 10             	add    $0x10,%esp
 5f0:	85 c0                	test   %eax,%eax
 5f2:	7e 1d                	jle    611 <gets+0x41>
      break;
    buf[i++] = c;
 5f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5f8:	8b 55 08             	mov    0x8(%ebp),%edx
 5fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5ff:	3c 0a                	cmp    $0xa,%al
 601:	74 1d                	je     620 <gets+0x50>
 603:	3c 0d                	cmp    $0xd,%al
 605:	74 19                	je     620 <gets+0x50>
  for(i=0; i+1 < max; ){
 607:	89 de                	mov    %ebx,%esi
 609:	83 c3 01             	add    $0x1,%ebx
 60c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 60f:	7c cf                	jl     5e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 611:	8b 45 08             	mov    0x8(%ebp),%eax
 614:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 618:	8d 65 f4             	lea    -0xc(%ebp),%esp
 61b:	5b                   	pop    %ebx
 61c:	5e                   	pop    %esi
 61d:	5f                   	pop    %edi
 61e:	5d                   	pop    %ebp
 61f:	c3                   	ret    
  buf[i] = '\0';
 620:	8b 45 08             	mov    0x8(%ebp),%eax
 623:	89 de                	mov    %ebx,%esi
 625:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 629:	8d 65 f4             	lea    -0xc(%ebp),%esp
 62c:	5b                   	pop    %ebx
 62d:	5e                   	pop    %esi
 62e:	5f                   	pop    %edi
 62f:	5d                   	pop    %ebp
 630:	c3                   	ret    
 631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop

00000640 <stat>:

int
stat(const char *n, struct stat *st)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	56                   	push   %esi
 644:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 645:	83 ec 08             	sub    $0x8,%esp
 648:	6a 00                	push   $0x0
 64a:	ff 75 08             	push   0x8(%ebp)
 64d:	e8 f1 00 00 00       	call   743 <open>
  if(fd < 0)
 652:	83 c4 10             	add    $0x10,%esp
 655:	85 c0                	test   %eax,%eax
 657:	78 27                	js     680 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 659:	83 ec 08             	sub    $0x8,%esp
 65c:	ff 75 0c             	push   0xc(%ebp)
 65f:	89 c3                	mov    %eax,%ebx
 661:	50                   	push   %eax
 662:	e8 f4 00 00 00       	call   75b <fstat>
  close(fd);
 667:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 66a:	89 c6                	mov    %eax,%esi
  close(fd);
 66c:	e8 ba 00 00 00       	call   72b <close>
  return r;
 671:	83 c4 10             	add    $0x10,%esp
}
 674:	8d 65 f8             	lea    -0x8(%ebp),%esp
 677:	89 f0                	mov    %esi,%eax
 679:	5b                   	pop    %ebx
 67a:	5e                   	pop    %esi
 67b:	5d                   	pop    %ebp
 67c:	c3                   	ret    
 67d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 680:	be ff ff ff ff       	mov    $0xffffffff,%esi
 685:	eb ed                	jmp    674 <stat+0x34>
 687:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68e:	66 90                	xchg   %ax,%ax

00000690 <atoi>:

int
atoi(const char *s)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	53                   	push   %ebx
 694:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 697:	0f be 02             	movsbl (%edx),%eax
 69a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 69d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 6a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 6a5:	77 1e                	ja     6c5 <atoi+0x35>
 6a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ae:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 6b0:	83 c2 01             	add    $0x1,%edx
 6b3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 6b6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 6ba:	0f be 02             	movsbl (%edx),%eax
 6bd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6c0:	80 fb 09             	cmp    $0x9,%bl
 6c3:	76 eb                	jbe    6b0 <atoi+0x20>
  return n;
}
 6c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6c8:	89 c8                	mov    %ecx,%eax
 6ca:	c9                   	leave  
 6cb:	c3                   	ret    
 6cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	8b 45 10             	mov    0x10(%ebp),%eax
 6d7:	8b 55 08             	mov    0x8(%ebp),%edx
 6da:	56                   	push   %esi
 6db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6de:	85 c0                	test   %eax,%eax
 6e0:	7e 13                	jle    6f5 <memmove+0x25>
 6e2:	01 d0                	add    %edx,%eax
  dst = vdst;
 6e4:	89 d7                	mov    %edx,%edi
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 6f0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 6f1:	39 f8                	cmp    %edi,%eax
 6f3:	75 fb                	jne    6f0 <memmove+0x20>
  return vdst;
}
 6f5:	5e                   	pop    %esi
 6f6:	89 d0                	mov    %edx,%eax
 6f8:	5f                   	pop    %edi
 6f9:	5d                   	pop    %ebp
 6fa:	c3                   	ret    

000006fb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6fb:	b8 01 00 00 00       	mov    $0x1,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <exit>:
SYSCALL(exit)
 703:	b8 02 00 00 00       	mov    $0x2,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <wait>:
SYSCALL(wait)
 70b:	b8 03 00 00 00       	mov    $0x3,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <pipe>:
SYSCALL(pipe)
 713:	b8 04 00 00 00       	mov    $0x4,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <read>:
SYSCALL(read)
 71b:	b8 05 00 00 00       	mov    $0x5,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <write>:
SYSCALL(write)
 723:	b8 10 00 00 00       	mov    $0x10,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <close>:
SYSCALL(close)
 72b:	b8 15 00 00 00       	mov    $0x15,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <kill>:
SYSCALL(kill)
 733:	b8 06 00 00 00       	mov    $0x6,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <exec>:
SYSCALL(exec)
 73b:	b8 07 00 00 00       	mov    $0x7,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <open>:
SYSCALL(open)
 743:	b8 0f 00 00 00       	mov    $0xf,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <mknod>:
SYSCALL(mknod)
 74b:	b8 11 00 00 00       	mov    $0x11,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    

00000753 <unlink>:
SYSCALL(unlink)
 753:	b8 12 00 00 00       	mov    $0x12,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret    

0000075b <fstat>:
SYSCALL(fstat)
 75b:	b8 08 00 00 00       	mov    $0x8,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret    

00000763 <link>:
SYSCALL(link)
 763:	b8 13 00 00 00       	mov    $0x13,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret    

0000076b <mkdir>:
SYSCALL(mkdir)
 76b:	b8 14 00 00 00       	mov    $0x14,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret    

00000773 <chdir>:
SYSCALL(chdir)
 773:	b8 09 00 00 00       	mov    $0x9,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret    

0000077b <dup>:
SYSCALL(dup)
 77b:	b8 0a 00 00 00       	mov    $0xa,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret    

00000783 <getpid>:
SYSCALL(getpid)
 783:	b8 0b 00 00 00       	mov    $0xb,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret    

0000078b <sbrk>:
SYSCALL(sbrk)
 78b:	b8 0c 00 00 00       	mov    $0xc,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret    

00000793 <sleep>:
SYSCALL(sleep)
 793:	b8 0d 00 00 00       	mov    $0xd,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret    

0000079b <uptime>:
SYSCALL(uptime)
 79b:	b8 0e 00 00 00       	mov    $0xe,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret    

000007a3 <clone>:
SYSCALL(clone)
 7a3:	b8 16 00 00 00       	mov    $0x16,%eax
 7a8:	cd 40                	int    $0x40
 7aa:	c3                   	ret    

000007ab <join>:
SYSCALL(join)
 7ab:	b8 17 00 00 00       	mov    $0x17,%eax
 7b0:	cd 40                	int    $0x40
 7b2:	c3                   	ret    
 7b3:	66 90                	xchg   %ax,%ax
 7b5:	66 90                	xchg   %ax,%ax
 7b7:	66 90                	xchg   %ax,%ax
 7b9:	66 90                	xchg   %ax,%ax
 7bb:	66 90                	xchg   %ax,%ax
 7bd:	66 90                	xchg   %ax,%ax
 7bf:	90                   	nop

000007c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 3c             	sub    $0x3c,%esp
 7c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7cc:	89 d1                	mov    %edx,%ecx
{
 7ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7d1:	85 d2                	test   %edx,%edx
 7d3:	0f 89 7f 00 00 00    	jns    858 <printint+0x98>
 7d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7dd:	74 79                	je     858 <printint+0x98>
    neg = 1;
 7df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7e8:	31 db                	xor    %ebx,%ebx
 7ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7f0:	89 c8                	mov    %ecx,%eax
 7f2:	31 d2                	xor    %edx,%edx
 7f4:	89 cf                	mov    %ecx,%edi
 7f6:	f7 75 c4             	divl   -0x3c(%ebp)
 7f9:	0f b6 92 90 0c 00 00 	movzbl 0xc90(%edx),%edx
 800:	89 45 c0             	mov    %eax,-0x40(%ebp)
 803:	89 d8                	mov    %ebx,%eax
 805:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 808:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 80b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 80e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 811:	76 dd                	jbe    7f0 <printint+0x30>
  if(neg)
 813:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 816:	85 c9                	test   %ecx,%ecx
 818:	74 0c                	je     826 <printint+0x66>
    buf[i++] = '-';
 81a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 81f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 821:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 826:	8b 7d b8             	mov    -0x48(%ebp),%edi
 829:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 82d:	eb 07                	jmp    836 <printint+0x76>
 82f:	90                   	nop
    putc(fd, buf[i]);
 830:	0f b6 13             	movzbl (%ebx),%edx
 833:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 836:	83 ec 04             	sub    $0x4,%esp
 839:	88 55 d7             	mov    %dl,-0x29(%ebp)
 83c:	6a 01                	push   $0x1
 83e:	56                   	push   %esi
 83f:	57                   	push   %edi
 840:	e8 de fe ff ff       	call   723 <write>
  while(--i >= 0)
 845:	83 c4 10             	add    $0x10,%esp
 848:	39 de                	cmp    %ebx,%esi
 84a:	75 e4                	jne    830 <printint+0x70>
}
 84c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 84f:	5b                   	pop    %ebx
 850:	5e                   	pop    %esi
 851:	5f                   	pop    %edi
 852:	5d                   	pop    %ebp
 853:	c3                   	ret    
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 858:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 85f:	eb 87                	jmp    7e8 <printint+0x28>
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86f:	90                   	nop

00000870 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 870:	55                   	push   %ebp
 871:	89 e5                	mov    %esp,%ebp
 873:	57                   	push   %edi
 874:	56                   	push   %esi
 875:	53                   	push   %ebx
 876:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 879:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 87c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 87f:	0f b6 13             	movzbl (%ebx),%edx
 882:	84 d2                	test   %dl,%dl
 884:	74 6a                	je     8f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 886:	8d 45 10             	lea    0x10(%ebp),%eax
 889:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 88c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 88f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 891:	89 45 d0             	mov    %eax,-0x30(%ebp)
 894:	eb 36                	jmp    8cc <printf+0x5c>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
 8a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8a8:	83 f8 25             	cmp    $0x25,%eax
 8ab:	74 15                	je     8c2 <printf+0x52>
  write(fd, &c, 1);
 8ad:	83 ec 04             	sub    $0x4,%esp
 8b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8b3:	6a 01                	push   $0x1
 8b5:	57                   	push   %edi
 8b6:	56                   	push   %esi
 8b7:	e8 67 fe ff ff       	call   723 <write>
 8bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8c2:	0f b6 13             	movzbl (%ebx),%edx
 8c5:	83 c3 01             	add    $0x1,%ebx
 8c8:	84 d2                	test   %dl,%dl
 8ca:	74 24                	je     8f0 <printf+0x80>
    c = fmt[i] & 0xff;
 8cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8cf:	85 c9                	test   %ecx,%ecx
 8d1:	74 cd                	je     8a0 <printf+0x30>
      }
    } else if(state == '%'){
 8d3:	83 f9 25             	cmp    $0x25,%ecx
 8d6:	75 ea                	jne    8c2 <printf+0x52>
      if(c == 'd'){
 8d8:	83 f8 25             	cmp    $0x25,%eax
 8db:	0f 84 07 01 00 00    	je     9e8 <printf+0x178>
 8e1:	83 e8 63             	sub    $0x63,%eax
 8e4:	83 f8 15             	cmp    $0x15,%eax
 8e7:	77 17                	ja     900 <printf+0x90>
 8e9:	ff 24 85 38 0c 00 00 	jmp    *0xc38(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8f3:	5b                   	pop    %ebx
 8f4:	5e                   	pop    %esi
 8f5:	5f                   	pop    %edi
 8f6:	5d                   	pop    %ebp
 8f7:	c3                   	ret    
 8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ff:	90                   	nop
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
 903:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 906:	6a 01                	push   $0x1
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 90e:	e8 10 fe ff ff       	call   723 <write>
        putc(fd, c);
 913:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 917:	83 c4 0c             	add    $0xc,%esp
 91a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 91d:	6a 01                	push   $0x1
 91f:	57                   	push   %edi
 920:	56                   	push   %esi
 921:	e8 fd fd ff ff       	call   723 <write>
        putc(fd, c);
 926:	83 c4 10             	add    $0x10,%esp
      state = 0;
 929:	31 c9                	xor    %ecx,%ecx
 92b:	eb 95                	jmp    8c2 <printf+0x52>
 92d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 930:	83 ec 0c             	sub    $0xc,%esp
 933:	b9 10 00 00 00       	mov    $0x10,%ecx
 938:	6a 00                	push   $0x0
 93a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93d:	8b 10                	mov    (%eax),%edx
 93f:	89 f0                	mov    %esi,%eax
 941:	e8 7a fe ff ff       	call   7c0 <printint>
        ap++;
 946:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 94a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 94d:	31 c9                	xor    %ecx,%ecx
 94f:	e9 6e ff ff ff       	jmp    8c2 <printf+0x52>
 954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 958:	8b 45 d0             	mov    -0x30(%ebp),%eax
 95b:	8b 10                	mov    (%eax),%edx
        ap++;
 95d:	83 c0 04             	add    $0x4,%eax
 960:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 963:	85 d2                	test   %edx,%edx
 965:	0f 84 8d 00 00 00    	je     9f8 <printf+0x188>
        while(*s != 0){
 96b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 96e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 970:	84 c0                	test   %al,%al
 972:	0f 84 4a ff ff ff    	je     8c2 <printf+0x52>
 978:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 97b:	89 d3                	mov    %edx,%ebx
 97d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 980:	83 ec 04             	sub    $0x4,%esp
          s++;
 983:	83 c3 01             	add    $0x1,%ebx
 986:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 989:	6a 01                	push   $0x1
 98b:	57                   	push   %edi
 98c:	56                   	push   %esi
 98d:	e8 91 fd ff ff       	call   723 <write>
        while(*s != 0){
 992:	0f b6 03             	movzbl (%ebx),%eax
 995:	83 c4 10             	add    $0x10,%esp
 998:	84 c0                	test   %al,%al
 99a:	75 e4                	jne    980 <printf+0x110>
      state = 0;
 99c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 99f:	31 c9                	xor    %ecx,%ecx
 9a1:	e9 1c ff ff ff       	jmp    8c2 <printf+0x52>
 9a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9b8:	6a 01                	push   $0x1
 9ba:	e9 7b ff ff ff       	jmp    93a <printf+0xca>
 9bf:	90                   	nop
        putc(fd, *ap);
 9c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9c8:	6a 01                	push   $0x1
 9ca:	57                   	push   %edi
 9cb:	56                   	push   %esi
        putc(fd, *ap);
 9cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9cf:	e8 4f fd ff ff       	call   723 <write>
        ap++;
 9d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9db:	31 c9                	xor    %ecx,%ecx
 9dd:	e9 e0 fe ff ff       	jmp    8c2 <printf+0x52>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9eb:	83 ec 04             	sub    $0x4,%esp
 9ee:	e9 2a ff ff ff       	jmp    91d <printf+0xad>
 9f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9f7:	90                   	nop
          s = "(null)";
 9f8:	ba 2e 0c 00 00       	mov    $0xc2e,%edx
        while(*s != 0){
 9fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a00:	b8 28 00 00 00       	mov    $0x28,%eax
 a05:	89 d3                	mov    %edx,%ebx
 a07:	e9 74 ff ff ff       	jmp    980 <printf+0x110>
 a0c:	66 90                	xchg   %ax,%ax
 a0e:	66 90                	xchg   %ax,%ax

00000a10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a10:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a11:	a1 40 13 00 00       	mov    0x1340,%eax
{
 a16:	89 e5                	mov    %esp,%ebp
 a18:	57                   	push   %edi
 a19:	56                   	push   %esi
 a1a:	53                   	push   %ebx
 a1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a1e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a28:	89 c2                	mov    %eax,%edx
 a2a:	8b 00                	mov    (%eax),%eax
 a2c:	39 ca                	cmp    %ecx,%edx
 a2e:	73 30                	jae    a60 <free+0x50>
 a30:	39 c1                	cmp    %eax,%ecx
 a32:	72 04                	jb     a38 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a34:	39 c2                	cmp    %eax,%edx
 a36:	72 f0                	jb     a28 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a38:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a3e:	39 f8                	cmp    %edi,%eax
 a40:	74 30                	je     a72 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a42:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a45:	8b 42 04             	mov    0x4(%edx),%eax
 a48:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a4b:	39 f1                	cmp    %esi,%ecx
 a4d:	74 3a                	je     a89 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a4f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a51:	5b                   	pop    %ebx
  freep = p;
 a52:	89 15 40 13 00 00    	mov    %edx,0x1340
}
 a58:	5e                   	pop    %esi
 a59:	5f                   	pop    %edi
 a5a:	5d                   	pop    %ebp
 a5b:	c3                   	ret    
 a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a60:	39 c2                	cmp    %eax,%edx
 a62:	72 c4                	jb     a28 <free+0x18>
 a64:	39 c1                	cmp    %eax,%ecx
 a66:	73 c0                	jae    a28 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a68:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a6b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a6e:	39 f8                	cmp    %edi,%eax
 a70:	75 d0                	jne    a42 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a72:	03 70 04             	add    0x4(%eax),%esi
 a75:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a78:	8b 02                	mov    (%edx),%eax
 a7a:	8b 00                	mov    (%eax),%eax
 a7c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a7f:	8b 42 04             	mov    0x4(%edx),%eax
 a82:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a85:	39 f1                	cmp    %esi,%ecx
 a87:	75 c6                	jne    a4f <free+0x3f>
    p->s.size += bp->s.size;
 a89:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a8c:	89 15 40 13 00 00    	mov    %edx,0x1340
    p->s.size += bp->s.size;
 a92:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a95:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a98:	89 0a                	mov    %ecx,(%edx)
}
 a9a:	5b                   	pop    %ebx
 a9b:	5e                   	pop    %esi
 a9c:	5f                   	pop    %edi
 a9d:	5d                   	pop    %ebp
 a9e:	c3                   	ret    
 a9f:	90                   	nop

00000aa0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 aa0:	55                   	push   %ebp
 aa1:	89 e5                	mov    %esp,%ebp
 aa3:	57                   	push   %edi
 aa4:	56                   	push   %esi
 aa5:	53                   	push   %ebx
 aa6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 aa9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 aac:	8b 3d 40 13 00 00    	mov    0x1340,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ab2:	8d 70 07             	lea    0x7(%eax),%esi
 ab5:	c1 ee 03             	shr    $0x3,%esi
 ab8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 abb:	85 ff                	test   %edi,%edi
 abd:	0f 84 9d 00 00 00    	je     b60 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ac5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ac8:	39 f1                	cmp    %esi,%ecx
 aca:	73 6a                	jae    b36 <malloc+0x96>
 acc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ad1:	39 de                	cmp    %ebx,%esi
 ad3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ad6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 add:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ae0:	eb 17                	jmp    af9 <malloc+0x59>
 ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aea:	8b 48 04             	mov    0x4(%eax),%ecx
 aed:	39 f1                	cmp    %esi,%ecx
 aef:	73 4f                	jae    b40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 af1:	8b 3d 40 13 00 00    	mov    0x1340,%edi
 af7:	89 c2                	mov    %eax,%edx
 af9:	39 d7                	cmp    %edx,%edi
 afb:	75 eb                	jne    ae8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 afd:	83 ec 0c             	sub    $0xc,%esp
 b00:	ff 75 e4             	push   -0x1c(%ebp)
 b03:	e8 83 fc ff ff       	call   78b <sbrk>
  if(p == (char*)-1)
 b08:	83 c4 10             	add    $0x10,%esp
 b0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b0e:	74 1c                	je     b2c <malloc+0x8c>
  hp->s.size = nu;
 b10:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b13:	83 ec 0c             	sub    $0xc,%esp
 b16:	83 c0 08             	add    $0x8,%eax
 b19:	50                   	push   %eax
 b1a:	e8 f1 fe ff ff       	call   a10 <free>
  return freep;
 b1f:	8b 15 40 13 00 00    	mov    0x1340,%edx
      if((p = morecore(nunits)) == 0)
 b25:	83 c4 10             	add    $0x10,%esp
 b28:	85 d2                	test   %edx,%edx
 b2a:	75 bc                	jne    ae8 <malloc+0x48>
        return 0;
  }
}
 b2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b2f:	31 c0                	xor    %eax,%eax
}
 b31:	5b                   	pop    %ebx
 b32:	5e                   	pop    %esi
 b33:	5f                   	pop    %edi
 b34:	5d                   	pop    %ebp
 b35:	c3                   	ret    
    if(p->s.size >= nunits){
 b36:	89 d0                	mov    %edx,%eax
 b38:	89 fa                	mov    %edi,%edx
 b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b40:	39 ce                	cmp    %ecx,%esi
 b42:	74 4c                	je     b90 <malloc+0xf0>
        p->s.size -= nunits;
 b44:	29 f1                	sub    %esi,%ecx
 b46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b4c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b4f:	89 15 40 13 00 00    	mov    %edx,0x1340
}
 b55:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b58:	83 c0 08             	add    $0x8,%eax
}
 b5b:	5b                   	pop    %ebx
 b5c:	5e                   	pop    %esi
 b5d:	5f                   	pop    %edi
 b5e:	5d                   	pop    %ebp
 b5f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b60:	c7 05 40 13 00 00 44 	movl   $0x1344,0x1340
 b67:	13 00 00 
    base.s.size = 0;
 b6a:	bf 44 13 00 00       	mov    $0x1344,%edi
    base.s.ptr = freep = prevp = &base;
 b6f:	c7 05 44 13 00 00 44 	movl   $0x1344,0x1344
 b76:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b7b:	c7 05 48 13 00 00 00 	movl   $0x0,0x1348
 b82:	00 00 00 
    if(p->s.size >= nunits){
 b85:	e9 42 ff ff ff       	jmp    acc <malloc+0x2c>
 b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b90:	8b 08                	mov    (%eax),%ecx
 b92:	89 0a                	mov    %ecx,(%edx)
 b94:	eb b9                	jmp    b4f <malloc+0xaf>
