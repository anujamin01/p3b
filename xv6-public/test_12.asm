
_test_12:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 ca 07 00 00       	call   7e3 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 a4 10 00 00       	push   $0x10a4
   ppid = getpid();
  28:	a3 b0 10 00 00       	mov    %eax,0x10b0
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 97 04 00 00       	call   4d0 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 a0 10 00 00 	movl   $0x10a0,(%esp)
  40:	e8 8b 04 00 00       	call   4d0 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 a4 10 00 00 	movl   $0x10a4,(%esp)
  4c:	e8 8f 04 00 00       	call   4e0 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 a0 10 00 00 	movl   $0x10a0,(%esp)
  58:	e8 83 04 00 00       	call   4e0 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 98 10 00 00    	mov    0x1098,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d 98 10 00 00    	cmp    %ebx,0x1098
  81:	7e 5c                	jle    df <main+0xdf>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  83:	83 ec 04             	sub    $0x4,%esp
  86:	57                   	push   %edi
  87:	56                   	push   %esi
  88:	68 20 02 00 00       	push   $0x220
  8d:	e8 4e 03 00 00       	call   3e0 <thread_create>
      assert(thread_pid > 0);
  92:	83 c4 10             	add    $0x10,%esp
  95:	85 c0                	test   %eax,%eax
  97:	7f df                	jg     78 <main+0x78>
  99:	6a 28                	push   $0x28
  9b:	68 f8 0b 00 00       	push   $0xbf8
  a0:	68 02 0c 00 00       	push   $0xc02
  a5:	6a 01                	push   $0x1
  a7:	e8 24 08 00 00       	call   8d0 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 49 0c 00 00       	push   $0xc49
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 28 0c 00 00       	push   $0xc28
  b9:	6a 01                	push   $0x1
  bb:	e8 10 08 00 00       	call   8d0 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 3c 0c 00 00       	push   $0xc3c
  c7:	6a 01                	push   $0x1
  c9:	e8 02 08 00 00       	call   8d0 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 b0 10 00 00    	push   0x10b0
  d5:	e8 b9 06 00 00       	call   793 <kill>
  da:	e8 84 06 00 00       	call   763 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 02 07 00 00       	call   7eb <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 a8 10 00 00       	mov    %eax,0x10a8
   while (global < num_threads) {
  f1:	a1 98 10 00 00       	mov    0x1098,%eax
  f6:	39 05 ac 10 00 00    	cmp    %eax,0x10ac
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 a4 10 00 00       	push   $0x10a4
 108:	e8 f3 03 00 00       	call   500 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 da 06 00 00       	call   7f3 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 a4 10 00 00 	movl   $0x10a4,(%esp)
 120:	e8 bb 03 00 00       	call   4e0 <lock_acquire>
   while (global < num_threads) {
 125:	a1 98 10 00 00       	mov    0x1098,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 ac 10 00 00    	cmp    %eax,0x10ac
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 ac 10 00 00 00 	movl   $0x0,0x10ac
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 9f 06 00 00       	call   7eb <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 93 06 00 00       	call   7eb <sbrk>
   lock_release(&lock);
 158:	c7 04 24 a4 10 00 00 	movl   $0x10a4,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 a8 10 00 00       	mov    %eax,0x10a8
   lock_release(&lock);
 164:	e8 97 03 00 00       	call   500 <lock_release>
   while (global < num_threads) {
 169:	a1 98 10 00 00       	mov    0x1098,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 ac 10 00 00    	cmp    %eax,0x10ac
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 a0 10 00 00       	push   $0x10a0
 188:	e8 73 03 00 00       	call   500 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 5a 06 00 00       	call   7f3 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 a0 10 00 00 	movl   $0x10a0,(%esp)
 1a0:	e8 3b 03 00 00       	call   4e0 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 98 10 00 00       	mov    0x1098,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 ac 10 00 00    	cmp    %eax,0x10ac
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 a0 10 00 00       	push   $0x10a0
 1bd:	e8 3e 03 00 00       	call   500 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d 98 10 00 00 00 	cmpl   $0x0,0x1098
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d 98 10 00 00    	cmp    %ebx,0x1098
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 88 02 00 00       	call   470 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 f8 0b 00 00       	push   $0xbf8
 1f3:	68 02 0c 00 00       	push   $0xc02
 1f8:	6a 01                	push   $0x1
 1fa:	e8 d1 06 00 00       	call   8d0 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 58 0c 00 00       	push   $0xc58
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 65 0c 00 00       	push   $0xc65
 213:	6a 01                	push   $0x1
 215:	e8 b6 06 00 00       	call   8d0 <printf>
   exit();
 21a:	e8 44 05 00 00       	call   763 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 a4 10 00 00       	push   $0x10a4
 22b:	e8 b0 02 00 00       	call   4e0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 af 05 00 00       	call   7eb <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 a8 10 00 00    	cmp    0x10a8,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 f8 0b 00 00       	push   $0xbf8
 24e:	68 02 0c 00 00       	push   $0xc02
 253:	6a 01                	push   $0x1
 255:	e8 76 06 00 00       	call   8d0 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 0a 0c 00 00       	push   $0xc0a
 262:	68 28 0c 00 00       	push   $0xc28
 267:	6a 01                	push   $0x1
 269:	e8 62 06 00 00       	call   8d0 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 3c 0c 00 00       	push   $0xc3c
 275:	6a 01                	push   $0x1
 277:	e8 54 06 00 00       	call   8d0 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 b0 10 00 00    	push   0x10b0
 283:	e8 0b 05 00 00       	call   793 <kill>
 288:	e8 d6 04 00 00       	call   763 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 ac 10 00 00 01 	addl   $0x1,0x10ac
   lock_release(&lock);
 297:	68 a4 10 00 00       	push   $0x10a4
 29c:	e8 5f 02 00 00       	call   500 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 a0 10 00 00 	movl   $0x10a0,(%esp)
 2a8:	e8 33 02 00 00       	call   4e0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 32 05 00 00       	call   7eb <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 a8 10 00 00    	cmp    0x10a8,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 ac 10 00 00 01 	addl   $0x1,0x10ac
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 0f 05 00 00       	call   7eb <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 03 05 00 00       	call   7eb <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 a0 10 00 00 	movl   $0x10a0,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 a8 10 00 00       	mov    %eax,0x10a8
   lock_release(&lock2);
 2f4:	e8 07 02 00 00       	call   500 <lock_release>



   exit();
 2f9:	e8 65 04 00 00       	call   763 <exit>
 2fe:	66 90                	xchg   %ax,%ax

00000300 <worker2>:
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	83 ec 08             	sub    $0x8,%esp
   int arg2_int = *(int*)arg2;
 306:	8b 45 0c             	mov    0xc(%ebp),%eax
 309:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 11);
 30b:	8b 45 08             	mov    0x8(%ebp),%eax
 30e:	83 38 0b             	cmpl   $0xb,(%eax)
 311:	75 4b                	jne    35e <worker2+0x5e>
   assert(arg2_int == 22);
 313:	83 fa 16             	cmp    $0x16,%edx
 316:	74 63                	je     37b <worker2+0x7b>
 318:	6a 4d                	push   $0x4d
 31a:	68 f8 0b 00 00       	push   $0xbf8
 31f:	68 02 0c 00 00       	push   $0xc02
 324:	6a 01                	push   $0x1
 326:	e8 a5 05 00 00       	call   8d0 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 81 0c 00 00       	push   $0xc81
 333:	68 28 0c 00 00       	push   $0xc28
 338:	6a 01                	push   $0x1
 33a:	e8 91 05 00 00       	call   8d0 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 3c 0c 00 00       	push   $0xc3c
 346:	6a 01                	push   $0x1
 348:	e8 83 05 00 00       	call   8d0 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 b0 10 00 00    	push   0x10b0
 354:	e8 3a 04 00 00       	call   793 <kill>
 359:	e8 05 04 00 00       	call   763 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 f8 0b 00 00       	push   $0xbf8
 365:	68 02 0c 00 00       	push   $0xc02
 36a:	6a 01                	push   $0x1
 36c:	e8 5f 05 00 00       	call   8d0 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 72 0c 00 00       	push   $0xc72
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 a0 10 00 00       	push   $0x10a0
 383:	e8 58 01 00 00       	call   4e0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 57 04 00 00       	call   7eb <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 a8 10 00 00    	cmp    0x10a8,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 f8 0b 00 00       	push   $0xbf8
 3a6:	68 02 0c 00 00       	push   $0xc02
 3ab:	6a 01                	push   $0x1
 3ad:	e8 1e 05 00 00       	call   8d0 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 0a 0c 00 00       	push   $0xc0a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 ac 10 00 00 01 	addl   $0x1,0x10ac
   lock_release(&lock2);
 3c9:	68 a0 10 00 00       	push   $0x10a0
 3ce:	e8 2d 01 00 00       	call   500 <lock_release>
   exit();
 3d3:	e8 8b 03 00 00       	call   763 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	56                   	push   %esi
 3e4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 3e5:	31 db                	xor    %ebx,%ebx
 3e7:	eb 0f                	jmp    3f8 <thread_create+0x18>
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f0:	83 c3 01             	add    $0x1,%ebx
 3f3:	83 fb 40             	cmp    $0x40,%ebx
 3f6:	74 60                	je     458 <thread_create+0x78>
    if (inUse[i] == 0){
 3f8:	8b 04 9d c0 10 00 00 	mov    0x10c0(,%ebx,4),%eax
 3ff:	85 c0                	test   %eax,%eax
 401:	75 ed                	jne    3f0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 403:	a1 9c 10 00 00       	mov    0x109c,%eax
 408:	83 ec 0c             	sub    $0xc,%esp
 40b:	01 c0                	add    %eax,%eax
 40d:	50                   	push   %eax
 40e:	e8 ed 06 00 00       	call   b00 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 413:	8b 35 9c 10 00 00    	mov    0x109c,%esi
 419:	83 c4 10             	add    $0x10,%esp
 41c:	99                   	cltd   
      malloc_addrs[i] = stack;
 41d:	89 04 9d c0 11 00 00 	mov    %eax,0x11c0(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 424:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 426:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 428:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 42b:	29 d6                	sub    %edx,%esi
 42d:	01 f1                	add    %esi,%ecx
 42f:	85 d2                	test   %edx,%edx
 431:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 434:	51                   	push   %ecx
 435:	ff 75 10             	push   0x10(%ebp)
 438:	ff 75 0c             	push   0xc(%ebp)
 43b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 43e:	89 0c 9d c0 12 00 00 	mov    %ecx,0x12c0(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 445:	e8 b9 03 00 00       	call   803 <clone>
 44a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 44d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 450:	5b                   	pop    %ebx
 451:	5e                   	pop    %esi
 452:	5d                   	pop    %ebp
 453:	c3                   	ret    
 454:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 458:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 45b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 460:	5b                   	pop    %ebx
 461:	5e                   	pop    %esi
 462:	5d                   	pop    %ebp
 463:	c3                   	ret    
 464:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <thread_join>:

int 
thread_join()
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	56                   	push   %esi
 474:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 475:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 478:	31 db                	xor    %ebx,%ebx
{
 47a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 47d:	50                   	push   %eax
 47e:	e8 88 03 00 00       	call   80b <join>
 483:	83 c4 10             	add    $0x10,%esp
 486:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 488:	eb 0e                	jmp    498 <thread_join+0x28>
 48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 490:	83 c3 01             	add    $0x1,%ebx
 493:	83 fb 40             	cmp    $0x40,%ebx
 496:	74 27                	je     4bf <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 498:	83 3c 9d c0 10 00 00 	cmpl   $0x1,0x10c0(,%ebx,4)
 49f:	01 
 4a0:	75 ee                	jne    490 <thread_join+0x20>
      free(malloc_addrs[i]);
 4a2:	83 ec 0c             	sub    $0xc,%esp
 4a5:	ff 34 9d c0 11 00 00 	push   0x11c0(,%ebx,4)
 4ac:	e8 bf 05 00 00       	call   a70 <free>
      inUse[i] = 0;
      break;
 4b1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 4b4:	c7 04 9d c0 10 00 00 	movl   $0x0,0x10c0(,%ebx,4)
 4bb:	00 00 00 00 
    }
  }
  return id;
}
 4bf:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c2:	89 f0                	mov    %esi,%eax
 4c4:	5b                   	pop    %ebx
 4c5:	5e                   	pop    %esi
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret    
 4c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop

000004d0 <lock_init>:

void lock_init(lock_t *lock){
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 4dc:	5d                   	pop    %ebp
 4dd:	c3                   	ret    
 4de:	66 90                	xchg   %ax,%ax

000004e0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 4e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop
 4f0:	89 c8                	mov    %ecx,%eax
 4f2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 4f5:	85 c0                	test   %eax,%eax
 4f7:	75 f7                	jne    4f0 <lock_acquire+0x10>
}
 4f9:	5d                   	pop    %ebp
 4fa:	c3                   	ret    
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <lock_release>:

void lock_release(lock_t *lock){
 500:	55                   	push   %ebp
 501:	31 c0                	xor    %eax,%eax
 503:	89 e5                	mov    %esp,%ebp
 505:	8b 55 08             	mov    0x8(%ebp),%edx
 508:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi

00000510 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 510:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 511:	31 c0                	xor    %eax,%eax
{
 513:	89 e5                	mov    %esp,%ebp
 515:	53                   	push   %ebx
 516:	8b 4d 08             	mov    0x8(%ebp),%ecx
 519:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 520:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 524:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 527:	83 c0 01             	add    $0x1,%eax
 52a:	84 d2                	test   %dl,%dl
 52c:	75 f2                	jne    520 <strcpy+0x10>
    ;
  return os;
}
 52e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 531:	89 c8                	mov    %ecx,%eax
 533:	c9                   	leave  
 534:	c3                   	ret    
 535:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000540 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 55 08             	mov    0x8(%ebp),%edx
 547:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 54a:	0f b6 02             	movzbl (%edx),%eax
 54d:	84 c0                	test   %al,%al
 54f:	75 17                	jne    568 <strcmp+0x28>
 551:	eb 3a                	jmp    58d <strcmp+0x4d>
 553:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 557:	90                   	nop
 558:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 55c:	83 c2 01             	add    $0x1,%edx
 55f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 562:	84 c0                	test   %al,%al
 564:	74 1a                	je     580 <strcmp+0x40>
    p++, q++;
 566:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 568:	0f b6 19             	movzbl (%ecx),%ebx
 56b:	38 c3                	cmp    %al,%bl
 56d:	74 e9                	je     558 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 56f:	29 d8                	sub    %ebx,%eax
}
 571:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 574:	c9                   	leave  
 575:	c3                   	ret    
 576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 580:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 584:	31 c0                	xor    %eax,%eax
 586:	29 d8                	sub    %ebx,%eax
}
 588:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 58b:	c9                   	leave  
 58c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 58d:	0f b6 19             	movzbl (%ecx),%ebx
 590:	31 c0                	xor    %eax,%eax
 592:	eb db                	jmp    56f <strcmp+0x2f>
 594:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop

000005a0 <strlen>:

uint
strlen(const char *s)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 5a6:	80 3a 00             	cmpb   $0x0,(%edx)
 5a9:	74 15                	je     5c0 <strlen+0x20>
 5ab:	31 c0                	xor    %eax,%eax
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
 5b0:	83 c0 01             	add    $0x1,%eax
 5b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 5b7:	89 c1                	mov    %eax,%ecx
 5b9:	75 f5                	jne    5b0 <strlen+0x10>
    ;
  return n;
}
 5bb:	89 c8                	mov    %ecx,%eax
 5bd:	5d                   	pop    %ebp
 5be:	c3                   	ret    
 5bf:	90                   	nop
  for(n = 0; s[n]; n++)
 5c0:	31 c9                	xor    %ecx,%ecx
}
 5c2:	5d                   	pop    %ebp
 5c3:	89 c8                	mov    %ecx,%eax
 5c5:	c3                   	ret    
 5c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cd:	8d 76 00             	lea    0x0(%esi),%esi

000005d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 5d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5da:	8b 45 0c             	mov    0xc(%ebp),%eax
 5dd:	89 d7                	mov    %edx,%edi
 5df:	fc                   	cld    
 5e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5e5:	89 d0                	mov    %edx,%eax
 5e7:	c9                   	leave  
 5e8:	c3                   	ret    
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005f0 <strchr>:

char*
strchr(const char *s, char c)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	8b 45 08             	mov    0x8(%ebp),%eax
 5f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 5fa:	0f b6 10             	movzbl (%eax),%edx
 5fd:	84 d2                	test   %dl,%dl
 5ff:	75 12                	jne    613 <strchr+0x23>
 601:	eb 1d                	jmp    620 <strchr+0x30>
 603:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 607:	90                   	nop
 608:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 60c:	83 c0 01             	add    $0x1,%eax
 60f:	84 d2                	test   %dl,%dl
 611:	74 0d                	je     620 <strchr+0x30>
    if(*s == c)
 613:	38 d1                	cmp    %dl,%cl
 615:	75 f1                	jne    608 <strchr+0x18>
      return (char*)s;
  return 0;
}
 617:	5d                   	pop    %ebp
 618:	c3                   	ret    
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 620:	31 c0                	xor    %eax,%eax
}
 622:	5d                   	pop    %ebp
 623:	c3                   	ret    
 624:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <gets>:

char*
gets(char *buf, int max)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 635:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 638:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 639:	31 db                	xor    %ebx,%ebx
{
 63b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 63e:	eb 27                	jmp    667 <gets+0x37>
    cc = read(0, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
 643:	6a 01                	push   $0x1
 645:	57                   	push   %edi
 646:	6a 00                	push   $0x0
 648:	e8 2e 01 00 00       	call   77b <read>
    if(cc < 1)
 64d:	83 c4 10             	add    $0x10,%esp
 650:	85 c0                	test   %eax,%eax
 652:	7e 1d                	jle    671 <gets+0x41>
      break;
    buf[i++] = c;
 654:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 658:	8b 55 08             	mov    0x8(%ebp),%edx
 65b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 65f:	3c 0a                	cmp    $0xa,%al
 661:	74 1d                	je     680 <gets+0x50>
 663:	3c 0d                	cmp    $0xd,%al
 665:	74 19                	je     680 <gets+0x50>
  for(i=0; i+1 < max; ){
 667:	89 de                	mov    %ebx,%esi
 669:	83 c3 01             	add    $0x1,%ebx
 66c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 66f:	7c cf                	jl     640 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 671:	8b 45 08             	mov    0x8(%ebp),%eax
 674:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 678:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67b:	5b                   	pop    %ebx
 67c:	5e                   	pop    %esi
 67d:	5f                   	pop    %edi
 67e:	5d                   	pop    %ebp
 67f:	c3                   	ret    
  buf[i] = '\0';
 680:	8b 45 08             	mov    0x8(%ebp),%eax
 683:	89 de                	mov    %ebx,%esi
 685:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 689:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68c:	5b                   	pop    %ebx
 68d:	5e                   	pop    %esi
 68e:	5f                   	pop    %edi
 68f:	5d                   	pop    %ebp
 690:	c3                   	ret    
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop

000006a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	56                   	push   %esi
 6a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6a5:	83 ec 08             	sub    $0x8,%esp
 6a8:	6a 00                	push   $0x0
 6aa:	ff 75 08             	push   0x8(%ebp)
 6ad:	e8 f1 00 00 00       	call   7a3 <open>
  if(fd < 0)
 6b2:	83 c4 10             	add    $0x10,%esp
 6b5:	85 c0                	test   %eax,%eax
 6b7:	78 27                	js     6e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6b9:	83 ec 08             	sub    $0x8,%esp
 6bc:	ff 75 0c             	push   0xc(%ebp)
 6bf:	89 c3                	mov    %eax,%ebx
 6c1:	50                   	push   %eax
 6c2:	e8 f4 00 00 00       	call   7bb <fstat>
  close(fd);
 6c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ca:	89 c6                	mov    %eax,%esi
  close(fd);
 6cc:	e8 ba 00 00 00       	call   78b <close>
  return r;
 6d1:	83 c4 10             	add    $0x10,%esp
}
 6d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6d7:	89 f0                	mov    %esi,%eax
 6d9:	5b                   	pop    %ebx
 6da:	5e                   	pop    %esi
 6db:	5d                   	pop    %ebp
 6dc:	c3                   	ret    
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6e5:	eb ed                	jmp    6d4 <stat+0x34>
 6e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ee:	66 90                	xchg   %ax,%ax

000006f0 <atoi>:

int
atoi(const char *s)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	53                   	push   %ebx
 6f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6f7:	0f be 02             	movsbl (%edx),%eax
 6fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 700:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 705:	77 1e                	ja     725 <atoi+0x35>
 707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 710:	83 c2 01             	add    $0x1,%edx
 713:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 716:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 71a:	0f be 02             	movsbl (%edx),%eax
 71d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 720:	80 fb 09             	cmp    $0x9,%bl
 723:	76 eb                	jbe    710 <atoi+0x20>
  return n;
}
 725:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 728:	89 c8                	mov    %ecx,%eax
 72a:	c9                   	leave  
 72b:	c3                   	ret    
 72c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000730 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	8b 45 10             	mov    0x10(%ebp),%eax
 737:	8b 55 08             	mov    0x8(%ebp),%edx
 73a:	56                   	push   %esi
 73b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 73e:	85 c0                	test   %eax,%eax
 740:	7e 13                	jle    755 <memmove+0x25>
 742:	01 d0                	add    %edx,%eax
  dst = vdst;
 744:	89 d7                	mov    %edx,%edi
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 750:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 751:	39 f8                	cmp    %edi,%eax
 753:	75 fb                	jne    750 <memmove+0x20>
  return vdst;
}
 755:	5e                   	pop    %esi
 756:	89 d0                	mov    %edx,%eax
 758:	5f                   	pop    %edi
 759:	5d                   	pop    %ebp
 75a:	c3                   	ret    

0000075b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 75b:	b8 01 00 00 00       	mov    $0x1,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret    

00000763 <exit>:
SYSCALL(exit)
 763:	b8 02 00 00 00       	mov    $0x2,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret    

0000076b <wait>:
SYSCALL(wait)
 76b:	b8 03 00 00 00       	mov    $0x3,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret    

00000773 <pipe>:
SYSCALL(pipe)
 773:	b8 04 00 00 00       	mov    $0x4,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret    

0000077b <read>:
SYSCALL(read)
 77b:	b8 05 00 00 00       	mov    $0x5,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret    

00000783 <write>:
SYSCALL(write)
 783:	b8 10 00 00 00       	mov    $0x10,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret    

0000078b <close>:
SYSCALL(close)
 78b:	b8 15 00 00 00       	mov    $0x15,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret    

00000793 <kill>:
SYSCALL(kill)
 793:	b8 06 00 00 00       	mov    $0x6,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret    

0000079b <exec>:
SYSCALL(exec)
 79b:	b8 07 00 00 00       	mov    $0x7,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret    

000007a3 <open>:
SYSCALL(open)
 7a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 7a8:	cd 40                	int    $0x40
 7aa:	c3                   	ret    

000007ab <mknod>:
SYSCALL(mknod)
 7ab:	b8 11 00 00 00       	mov    $0x11,%eax
 7b0:	cd 40                	int    $0x40
 7b2:	c3                   	ret    

000007b3 <unlink>:
SYSCALL(unlink)
 7b3:	b8 12 00 00 00       	mov    $0x12,%eax
 7b8:	cd 40                	int    $0x40
 7ba:	c3                   	ret    

000007bb <fstat>:
SYSCALL(fstat)
 7bb:	b8 08 00 00 00       	mov    $0x8,%eax
 7c0:	cd 40                	int    $0x40
 7c2:	c3                   	ret    

000007c3 <link>:
SYSCALL(link)
 7c3:	b8 13 00 00 00       	mov    $0x13,%eax
 7c8:	cd 40                	int    $0x40
 7ca:	c3                   	ret    

000007cb <mkdir>:
SYSCALL(mkdir)
 7cb:	b8 14 00 00 00       	mov    $0x14,%eax
 7d0:	cd 40                	int    $0x40
 7d2:	c3                   	ret    

000007d3 <chdir>:
SYSCALL(chdir)
 7d3:	b8 09 00 00 00       	mov    $0x9,%eax
 7d8:	cd 40                	int    $0x40
 7da:	c3                   	ret    

000007db <dup>:
SYSCALL(dup)
 7db:	b8 0a 00 00 00       	mov    $0xa,%eax
 7e0:	cd 40                	int    $0x40
 7e2:	c3                   	ret    

000007e3 <getpid>:
SYSCALL(getpid)
 7e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 7e8:	cd 40                	int    $0x40
 7ea:	c3                   	ret    

000007eb <sbrk>:
SYSCALL(sbrk)
 7eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 7f0:	cd 40                	int    $0x40
 7f2:	c3                   	ret    

000007f3 <sleep>:
SYSCALL(sleep)
 7f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 7f8:	cd 40                	int    $0x40
 7fa:	c3                   	ret    

000007fb <uptime>:
SYSCALL(uptime)
 7fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 800:	cd 40                	int    $0x40
 802:	c3                   	ret    

00000803 <clone>:
SYSCALL(clone)
 803:	b8 16 00 00 00       	mov    $0x16,%eax
 808:	cd 40                	int    $0x40
 80a:	c3                   	ret    

0000080b <join>:
SYSCALL(join)
 80b:	b8 17 00 00 00       	mov    $0x17,%eax
 810:	cd 40                	int    $0x40
 812:	c3                   	ret    
 813:	66 90                	xchg   %ax,%ax
 815:	66 90                	xchg   %ax,%ax
 817:	66 90                	xchg   %ax,%ax
 819:	66 90                	xchg   %ax,%ax
 81b:	66 90                	xchg   %ax,%ax
 81d:	66 90                	xchg   %ax,%ax
 81f:	90                   	nop

00000820 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 3c             	sub    $0x3c,%esp
 829:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 82c:	89 d1                	mov    %edx,%ecx
{
 82e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 831:	85 d2                	test   %edx,%edx
 833:	0f 89 7f 00 00 00    	jns    8b8 <printint+0x98>
 839:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 83d:	74 79                	je     8b8 <printint+0x98>
    neg = 1;
 83f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 846:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 848:	31 db                	xor    %ebx,%ebx
 84a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 84d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 850:	89 c8                	mov    %ecx,%eax
 852:	31 d2                	xor    %edx,%edx
 854:	89 cf                	mov    %ecx,%edi
 856:	f7 75 c4             	divl   -0x3c(%ebp)
 859:	0f b6 92 f0 0c 00 00 	movzbl 0xcf0(%edx),%edx
 860:	89 45 c0             	mov    %eax,-0x40(%ebp)
 863:	89 d8                	mov    %ebx,%eax
 865:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 868:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 86b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 86e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 871:	76 dd                	jbe    850 <printint+0x30>
  if(neg)
 873:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 876:	85 c9                	test   %ecx,%ecx
 878:	74 0c                	je     886 <printint+0x66>
    buf[i++] = '-';
 87a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 87f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 881:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 886:	8b 7d b8             	mov    -0x48(%ebp),%edi
 889:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 88d:	eb 07                	jmp    896 <printint+0x76>
 88f:	90                   	nop
    putc(fd, buf[i]);
 890:	0f b6 13             	movzbl (%ebx),%edx
 893:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 896:	83 ec 04             	sub    $0x4,%esp
 899:	88 55 d7             	mov    %dl,-0x29(%ebp)
 89c:	6a 01                	push   $0x1
 89e:	56                   	push   %esi
 89f:	57                   	push   %edi
 8a0:	e8 de fe ff ff       	call   783 <write>
  while(--i >= 0)
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	39 de                	cmp    %ebx,%esi
 8aa:	75 e4                	jne    890 <printint+0x70>
}
 8ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8af:	5b                   	pop    %ebx
 8b0:	5e                   	pop    %esi
 8b1:	5f                   	pop    %edi
 8b2:	5d                   	pop    %ebp
 8b3:	c3                   	ret    
 8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 8bf:	eb 87                	jmp    848 <printint+0x28>
 8c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cf:	90                   	nop

000008d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 8dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 8df:	0f b6 13             	movzbl (%ebx),%edx
 8e2:	84 d2                	test   %dl,%dl
 8e4:	74 6a                	je     950 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 8e6:	8d 45 10             	lea    0x10(%ebp),%eax
 8e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 8ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 8f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8f4:	eb 36                	jmp    92c <printf+0x5c>
 8f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
 900:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 903:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 908:	83 f8 25             	cmp    $0x25,%eax
 90b:	74 15                	je     922 <printf+0x52>
  write(fd, &c, 1);
 90d:	83 ec 04             	sub    $0x4,%esp
 910:	88 55 e7             	mov    %dl,-0x19(%ebp)
 913:	6a 01                	push   $0x1
 915:	57                   	push   %edi
 916:	56                   	push   %esi
 917:	e8 67 fe ff ff       	call   783 <write>
 91c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 91f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 922:	0f b6 13             	movzbl (%ebx),%edx
 925:	83 c3 01             	add    $0x1,%ebx
 928:	84 d2                	test   %dl,%dl
 92a:	74 24                	je     950 <printf+0x80>
    c = fmt[i] & 0xff;
 92c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 92f:	85 c9                	test   %ecx,%ecx
 931:	74 cd                	je     900 <printf+0x30>
      }
    } else if(state == '%'){
 933:	83 f9 25             	cmp    $0x25,%ecx
 936:	75 ea                	jne    922 <printf+0x52>
      if(c == 'd'){
 938:	83 f8 25             	cmp    $0x25,%eax
 93b:	0f 84 07 01 00 00    	je     a48 <printf+0x178>
 941:	83 e8 63             	sub    $0x63,%eax
 944:	83 f8 15             	cmp    $0x15,%eax
 947:	77 17                	ja     960 <printf+0x90>
 949:	ff 24 85 98 0c 00 00 	jmp    *0xc98(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 950:	8d 65 f4             	lea    -0xc(%ebp),%esp
 953:	5b                   	pop    %ebx
 954:	5e                   	pop    %esi
 955:	5f                   	pop    %edi
 956:	5d                   	pop    %ebp
 957:	c3                   	ret    
 958:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 95f:	90                   	nop
  write(fd, &c, 1);
 960:	83 ec 04             	sub    $0x4,%esp
 963:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 966:	6a 01                	push   $0x1
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 96e:	e8 10 fe ff ff       	call   783 <write>
        putc(fd, c);
 973:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 977:	83 c4 0c             	add    $0xc,%esp
 97a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 97d:	6a 01                	push   $0x1
 97f:	57                   	push   %edi
 980:	56                   	push   %esi
 981:	e8 fd fd ff ff       	call   783 <write>
        putc(fd, c);
 986:	83 c4 10             	add    $0x10,%esp
      state = 0;
 989:	31 c9                	xor    %ecx,%ecx
 98b:	eb 95                	jmp    922 <printf+0x52>
 98d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 990:	83 ec 0c             	sub    $0xc,%esp
 993:	b9 10 00 00 00       	mov    $0x10,%ecx
 998:	6a 00                	push   $0x0
 99a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 99d:	8b 10                	mov    (%eax),%edx
 99f:	89 f0                	mov    %esi,%eax
 9a1:	e8 7a fe ff ff       	call   820 <printint>
        ap++;
 9a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9ad:	31 c9                	xor    %ecx,%ecx
 9af:	e9 6e ff ff ff       	jmp    922 <printf+0x52>
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9bb:	8b 10                	mov    (%eax),%edx
        ap++;
 9bd:	83 c0 04             	add    $0x4,%eax
 9c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9c3:	85 d2                	test   %edx,%edx
 9c5:	0f 84 8d 00 00 00    	je     a58 <printf+0x188>
        while(*s != 0){
 9cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 9ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 9d0:	84 c0                	test   %al,%al
 9d2:	0f 84 4a ff ff ff    	je     922 <printf+0x52>
 9d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9db:	89 d3                	mov    %edx,%ebx
 9dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 9e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9e3:	83 c3 01             	add    $0x1,%ebx
 9e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9e9:	6a 01                	push   $0x1
 9eb:	57                   	push   %edi
 9ec:	56                   	push   %esi
 9ed:	e8 91 fd ff ff       	call   783 <write>
        while(*s != 0){
 9f2:	0f b6 03             	movzbl (%ebx),%eax
 9f5:	83 c4 10             	add    $0x10,%esp
 9f8:	84 c0                	test   %al,%al
 9fa:	75 e4                	jne    9e0 <printf+0x110>
      state = 0;
 9fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 9ff:	31 c9                	xor    %ecx,%ecx
 a01:	e9 1c ff ff ff       	jmp    922 <printf+0x52>
 a06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a0d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 a10:	83 ec 0c             	sub    $0xc,%esp
 a13:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a18:	6a 01                	push   $0x1
 a1a:	e9 7b ff ff ff       	jmp    99a <printf+0xca>
 a1f:	90                   	nop
        putc(fd, *ap);
 a20:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a23:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a26:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a28:	6a 01                	push   $0x1
 a2a:	57                   	push   %edi
 a2b:	56                   	push   %esi
        putc(fd, *ap);
 a2c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a2f:	e8 4f fd ff ff       	call   783 <write>
        ap++;
 a34:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a38:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a3b:	31 c9                	xor    %ecx,%ecx
 a3d:	e9 e0 fe ff ff       	jmp    922 <printf+0x52>
 a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a48:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a4b:	83 ec 04             	sub    $0x4,%esp
 a4e:	e9 2a ff ff ff       	jmp    97d <printf+0xad>
 a53:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a57:	90                   	nop
          s = "(null)";
 a58:	ba 90 0c 00 00       	mov    $0xc90,%edx
        while(*s != 0){
 a5d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a60:	b8 28 00 00 00       	mov    $0x28,%eax
 a65:	89 d3                	mov    %edx,%ebx
 a67:	e9 74 ff ff ff       	jmp    9e0 <printf+0x110>
 a6c:	66 90                	xchg   %ax,%ax
 a6e:	66 90                	xchg   %ax,%ax

00000a70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a71:	a1 c0 13 00 00       	mov    0x13c0,%eax
{
 a76:	89 e5                	mov    %esp,%ebp
 a78:	57                   	push   %edi
 a79:	56                   	push   %esi
 a7a:	53                   	push   %ebx
 a7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a7e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a88:	89 c2                	mov    %eax,%edx
 a8a:	8b 00                	mov    (%eax),%eax
 a8c:	39 ca                	cmp    %ecx,%edx
 a8e:	73 30                	jae    ac0 <free+0x50>
 a90:	39 c1                	cmp    %eax,%ecx
 a92:	72 04                	jb     a98 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a94:	39 c2                	cmp    %eax,%edx
 a96:	72 f0                	jb     a88 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a98:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a9b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a9e:	39 f8                	cmp    %edi,%eax
 aa0:	74 30                	je     ad2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 aa2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 aa5:	8b 42 04             	mov    0x4(%edx),%eax
 aa8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 aab:	39 f1                	cmp    %esi,%ecx
 aad:	74 3a                	je     ae9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 aaf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ab1:	5b                   	pop    %ebx
  freep = p;
 ab2:	89 15 c0 13 00 00    	mov    %edx,0x13c0
}
 ab8:	5e                   	pop    %esi
 ab9:	5f                   	pop    %edi
 aba:	5d                   	pop    %ebp
 abb:	c3                   	ret    
 abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ac0:	39 c2                	cmp    %eax,%edx
 ac2:	72 c4                	jb     a88 <free+0x18>
 ac4:	39 c1                	cmp    %eax,%ecx
 ac6:	73 c0                	jae    a88 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 ac8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 acb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ace:	39 f8                	cmp    %edi,%eax
 ad0:	75 d0                	jne    aa2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 ad2:	03 70 04             	add    0x4(%eax),%esi
 ad5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ad8:	8b 02                	mov    (%edx),%eax
 ada:	8b 00                	mov    (%eax),%eax
 adc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 adf:	8b 42 04             	mov    0x4(%edx),%eax
 ae2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ae5:	39 f1                	cmp    %esi,%ecx
 ae7:	75 c6                	jne    aaf <free+0x3f>
    p->s.size += bp->s.size;
 ae9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 aec:	89 15 c0 13 00 00    	mov    %edx,0x13c0
    p->s.size += bp->s.size;
 af2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 af5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 af8:	89 0a                	mov    %ecx,(%edx)
}
 afa:	5b                   	pop    %ebx
 afb:	5e                   	pop    %esi
 afc:	5f                   	pop    %edi
 afd:	5d                   	pop    %ebp
 afe:	c3                   	ret    
 aff:	90                   	nop

00000b00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b00:	55                   	push   %ebp
 b01:	89 e5                	mov    %esp,%ebp
 b03:	57                   	push   %edi
 b04:	56                   	push   %esi
 b05:	53                   	push   %ebx
 b06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b0c:	8b 3d c0 13 00 00    	mov    0x13c0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b12:	8d 70 07             	lea    0x7(%eax),%esi
 b15:	c1 ee 03             	shr    $0x3,%esi
 b18:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 b1b:	85 ff                	test   %edi,%edi
 b1d:	0f 84 9d 00 00 00    	je     bc0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b23:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b25:	8b 4a 04             	mov    0x4(%edx),%ecx
 b28:	39 f1                	cmp    %esi,%ecx
 b2a:	73 6a                	jae    b96 <malloc+0x96>
 b2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b31:	39 de                	cmp    %ebx,%esi
 b33:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b36:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b40:	eb 17                	jmp    b59 <malloc+0x59>
 b42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b4a:	8b 48 04             	mov    0x4(%eax),%ecx
 b4d:	39 f1                	cmp    %esi,%ecx
 b4f:	73 4f                	jae    ba0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b51:	8b 3d c0 13 00 00    	mov    0x13c0,%edi
 b57:	89 c2                	mov    %eax,%edx
 b59:	39 d7                	cmp    %edx,%edi
 b5b:	75 eb                	jne    b48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b5d:	83 ec 0c             	sub    $0xc,%esp
 b60:	ff 75 e4             	push   -0x1c(%ebp)
 b63:	e8 83 fc ff ff       	call   7eb <sbrk>
  if(p == (char*)-1)
 b68:	83 c4 10             	add    $0x10,%esp
 b6b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b6e:	74 1c                	je     b8c <malloc+0x8c>
  hp->s.size = nu;
 b70:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b73:	83 ec 0c             	sub    $0xc,%esp
 b76:	83 c0 08             	add    $0x8,%eax
 b79:	50                   	push   %eax
 b7a:	e8 f1 fe ff ff       	call   a70 <free>
  return freep;
 b7f:	8b 15 c0 13 00 00    	mov    0x13c0,%edx
      if((p = morecore(nunits)) == 0)
 b85:	83 c4 10             	add    $0x10,%esp
 b88:	85 d2                	test   %edx,%edx
 b8a:	75 bc                	jne    b48 <malloc+0x48>
        return 0;
  }
}
 b8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b8f:	31 c0                	xor    %eax,%eax
}
 b91:	5b                   	pop    %ebx
 b92:	5e                   	pop    %esi
 b93:	5f                   	pop    %edi
 b94:	5d                   	pop    %ebp
 b95:	c3                   	ret    
    if(p->s.size >= nunits){
 b96:	89 d0                	mov    %edx,%eax
 b98:	89 fa                	mov    %edi,%edx
 b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ba0:	39 ce                	cmp    %ecx,%esi
 ba2:	74 4c                	je     bf0 <malloc+0xf0>
        p->s.size -= nunits;
 ba4:	29 f1                	sub    %esi,%ecx
 ba6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ba9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 baf:	89 15 c0 13 00 00    	mov    %edx,0x13c0
}
 bb5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 bb8:	83 c0 08             	add    $0x8,%eax
}
 bbb:	5b                   	pop    %ebx
 bbc:	5e                   	pop    %esi
 bbd:	5f                   	pop    %edi
 bbe:	5d                   	pop    %ebp
 bbf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 bc0:	c7 05 c0 13 00 00 c4 	movl   $0x13c4,0x13c0
 bc7:	13 00 00 
    base.s.size = 0;
 bca:	bf c4 13 00 00       	mov    $0x13c4,%edi
    base.s.ptr = freep = prevp = &base;
 bcf:	c7 05 c4 13 00 00 c4 	movl   $0x13c4,0x13c4
 bd6:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bd9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 bdb:	c7 05 c8 13 00 00 00 	movl   $0x0,0x13c8
 be2:	00 00 00 
    if(p->s.size >= nunits){
 be5:	e9 42 ff ff ff       	jmp    b2c <malloc+0x2c>
 bea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 bf0:	8b 08                	mov    (%eax),%ecx
 bf2:	89 0a                	mov    %ecx,(%edx)
 bf4:	eb b9                	jmp    baf <malloc+0xaf>
