
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
  14:	e8 ea 07 00 00       	call   803 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 c4 10 00 00       	push   $0x10c4
   ppid = getpid();
  28:	a3 d0 10 00 00       	mov    %eax,0x10d0
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 b7 04 00 00       	call   4f0 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 c0 10 00 00 	movl   $0x10c0,(%esp)
  40:	e8 ab 04 00 00       	call   4f0 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 c4 10 00 00 	movl   $0x10c4,(%esp)
  4c:	e8 af 04 00 00       	call   500 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 c0 10 00 00 	movl   $0x10c0,(%esp)
  58:	e8 a3 04 00 00       	call   500 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 a4 10 00 00    	mov    0x10a4,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d a4 10 00 00    	cmp    %ebx,0x10a4
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
  9b:	68 18 0c 00 00       	push   $0xc18
  a0:	68 22 0c 00 00       	push   $0xc22
  a5:	6a 01                	push   $0x1
  a7:	e8 44 08 00 00       	call   8f0 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 69 0c 00 00       	push   $0xc69
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 48 0c 00 00       	push   $0xc48
  b9:	6a 01                	push   $0x1
  bb:	e8 30 08 00 00       	call   8f0 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 5c 0c 00 00       	push   $0xc5c
  c7:	6a 01                	push   $0x1
  c9:	e8 22 08 00 00       	call   8f0 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 d0 10 00 00    	push   0x10d0
  d5:	e8 d9 06 00 00       	call   7b3 <kill>
  da:	e8 a4 06 00 00       	call   783 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 22 07 00 00       	call   80b <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 c8 10 00 00       	mov    %eax,0x10c8
   while (global < num_threads) {
  f1:	a1 a4 10 00 00       	mov    0x10a4,%eax
  f6:	39 05 cc 10 00 00    	cmp    %eax,0x10cc
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 c4 10 00 00       	push   $0x10c4
 108:	e8 13 04 00 00       	call   520 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 fa 06 00 00       	call   813 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 c4 10 00 00 	movl   $0x10c4,(%esp)
 120:	e8 db 03 00 00       	call   500 <lock_acquire>
   while (global < num_threads) {
 125:	a1 a4 10 00 00       	mov    0x10a4,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 cc 10 00 00    	cmp    %eax,0x10cc
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 cc 10 00 00 00 	movl   $0x0,0x10cc
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 bf 06 00 00       	call   80b <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 b3 06 00 00       	call   80b <sbrk>
   lock_release(&lock);
 158:	c7 04 24 c4 10 00 00 	movl   $0x10c4,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 c8 10 00 00       	mov    %eax,0x10c8
   lock_release(&lock);
 164:	e8 b7 03 00 00       	call   520 <lock_release>
   while (global < num_threads) {
 169:	a1 a4 10 00 00       	mov    0x10a4,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 cc 10 00 00    	cmp    %eax,0x10cc
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 c0 10 00 00       	push   $0x10c0
 188:	e8 93 03 00 00       	call   520 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 7a 06 00 00       	call   813 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 c0 10 00 00 	movl   $0x10c0,(%esp)
 1a0:	e8 5b 03 00 00       	call   500 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 a4 10 00 00       	mov    0x10a4,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 cc 10 00 00    	cmp    %eax,0x10cc
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 c0 10 00 00       	push   $0x10c0
 1bd:	e8 5e 03 00 00       	call   520 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d a4 10 00 00 00 	cmpl   $0x0,0x10a4
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d a4 10 00 00    	cmp    %ebx,0x10a4
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 88 02 00 00       	call   470 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 18 0c 00 00       	push   $0xc18
 1f3:	68 22 0c 00 00       	push   $0xc22
 1f8:	6a 01                	push   $0x1
 1fa:	e8 f1 06 00 00       	call   8f0 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 78 0c 00 00       	push   $0xc78
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 85 0c 00 00       	push   $0xc85
 213:	6a 01                	push   $0x1
 215:	e8 d6 06 00 00       	call   8f0 <printf>
   exit();
 21a:	e8 64 05 00 00       	call   783 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 c4 10 00 00       	push   $0x10c4
 22b:	e8 d0 02 00 00       	call   500 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 cf 05 00 00       	call   80b <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 c8 10 00 00    	cmp    0x10c8,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 18 0c 00 00       	push   $0xc18
 24e:	68 22 0c 00 00       	push   $0xc22
 253:	6a 01                	push   $0x1
 255:	e8 96 06 00 00       	call   8f0 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 2a 0c 00 00       	push   $0xc2a
 262:	68 48 0c 00 00       	push   $0xc48
 267:	6a 01                	push   $0x1
 269:	e8 82 06 00 00       	call   8f0 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 5c 0c 00 00       	push   $0xc5c
 275:	6a 01                	push   $0x1
 277:	e8 74 06 00 00       	call   8f0 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 d0 10 00 00    	push   0x10d0
 283:	e8 2b 05 00 00       	call   7b3 <kill>
 288:	e8 f6 04 00 00       	call   783 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 cc 10 00 00 01 	addl   $0x1,0x10cc
   lock_release(&lock);
 297:	68 c4 10 00 00       	push   $0x10c4
 29c:	e8 7f 02 00 00       	call   520 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 c0 10 00 00 	movl   $0x10c0,(%esp)
 2a8:	e8 53 02 00 00       	call   500 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 52 05 00 00       	call   80b <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 c8 10 00 00    	cmp    0x10c8,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 cc 10 00 00 01 	addl   $0x1,0x10cc
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 2f 05 00 00       	call   80b <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 23 05 00 00       	call   80b <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 c0 10 00 00 	movl   $0x10c0,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 c8 10 00 00       	mov    %eax,0x10c8
   lock_release(&lock2);
 2f4:	e8 27 02 00 00       	call   520 <lock_release>



   exit();
 2f9:	e8 85 04 00 00       	call   783 <exit>
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
 31a:	68 18 0c 00 00       	push   $0xc18
 31f:	68 22 0c 00 00       	push   $0xc22
 324:	6a 01                	push   $0x1
 326:	e8 c5 05 00 00       	call   8f0 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 a1 0c 00 00       	push   $0xca1
 333:	68 48 0c 00 00       	push   $0xc48
 338:	6a 01                	push   $0x1
 33a:	e8 b1 05 00 00       	call   8f0 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 5c 0c 00 00       	push   $0xc5c
 346:	6a 01                	push   $0x1
 348:	e8 a3 05 00 00       	call   8f0 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 d0 10 00 00    	push   0x10d0
 354:	e8 5a 04 00 00       	call   7b3 <kill>
 359:	e8 25 04 00 00       	call   783 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 18 0c 00 00       	push   $0xc18
 365:	68 22 0c 00 00       	push   $0xc22
 36a:	6a 01                	push   $0x1
 36c:	e8 7f 05 00 00       	call   8f0 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 92 0c 00 00       	push   $0xc92
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 c0 10 00 00       	push   $0x10c0
 383:	e8 78 01 00 00       	call   500 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 77 04 00 00       	call   80b <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 c8 10 00 00    	cmp    0x10c8,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 18 0c 00 00       	push   $0xc18
 3a6:	68 22 0c 00 00       	push   $0xc22
 3ab:	6a 01                	push   $0x1
 3ad:	e8 3e 05 00 00       	call   8f0 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 2a 0c 00 00       	push   $0xc2a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 cc 10 00 00 01 	addl   $0x1,0x10cc
   lock_release(&lock2);
 3c9:	68 c0 10 00 00       	push   $0x10c0
 3ce:	e8 4d 01 00 00       	call   520 <lock_release>
   exit();
 3d3:	e8 ab 03 00 00       	call   783 <exit>
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
 3e3:	53                   	push   %ebx
 3e4:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 3e7:	a1 a8 10 00 00       	mov    0x10a8,%eax
 3ec:	01 c0                	add    %eax,%eax
 3ee:	50                   	push   %eax
 3ef:	e8 2c 07 00 00       	call   b20 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 3f4:	8b 0d a8 10 00 00    	mov    0x10a8,%ecx
 3fa:	31 d2                	xor    %edx,%edx
 3fc:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 3ff:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 401:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 403:	89 c8                	mov    %ecx,%eax
 405:	01 d9                	add    %ebx,%ecx
 407:	29 d0                	sub    %edx,%eax
 409:	01 d8                	add    %ebx,%eax
 40b:	85 d2                	test   %edx,%edx
 40d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 410:	31 d2                	xor    %edx,%edx
 412:	eb 0c                	jmp    420 <thread_create+0x40>
 414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 418:	83 c2 01             	add    $0x1,%edx
 41b:	83 fa 40             	cmp    $0x40,%edx
 41e:	74 2f                	je     44f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 420:	8b 04 95 e0 12 00 00 	mov    0x12e0(,%edx,4),%eax
 427:	85 c0                	test   %eax,%eax
 429:	75 ed                	jne    418 <thread_create+0x38>
 42b:	8b 04 95 e0 10 00 00 	mov    0x10e0(,%edx,4),%eax
 432:	85 c0                	test   %eax,%eax
 434:	75 e2                	jne    418 <thread_create+0x38>
      inUse[i] = 1;
 436:	c7 04 95 e0 10 00 00 	movl   $0x1,0x10e0(,%edx,4)
 43d:	01 00 00 00 
      malloc_addrs[i] = original;
 441:	89 1c 95 e0 11 00 00 	mov    %ebx,0x11e0(,%edx,4)
      stack_addrs[i] = stack;
 448:	89 0c 95 e0 12 00 00 	mov    %ecx,0x12e0(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 44f:	51                   	push   %ecx
 450:	ff 75 10             	push   0x10(%ebp)
 453:	ff 75 0c             	push   0xc(%ebp)
 456:	ff 75 08             	push   0x8(%ebp)
 459:	e8 c5 03 00 00       	call   823 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 45e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 461:	c9                   	leave  
 462:	c3                   	ret    
 463:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000470 <thread_join>:

int 
thread_join()
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 474:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 476:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 479:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 47c:	50                   	push   %eax
 47d:	e8 a9 03 00 00       	call   82b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 482:	8b 55 f4             	mov    -0xc(%ebp),%edx
 485:	83 c4 10             	add    $0x10,%esp
 488:	eb 0e                	jmp    498 <thread_join+0x28>
 48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 490:	83 c3 01             	add    $0x1,%ebx
 493:	83 fb 40             	cmp    $0x40,%ebx
 496:	74 4c                	je     4e4 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 498:	83 3c 9d e0 10 00 00 	cmpl   $0x1,0x10e0(,%ebx,4)
 49f:	01 
 4a0:	75 ee                	jne    490 <thread_join+0x20>
 4a2:	39 14 9d e0 12 00 00 	cmp    %edx,0x12e0(,%ebx,4)
 4a9:	75 e5                	jne    490 <thread_join+0x20>
      free(malloc_addrs[i]);
 4ab:	83 ec 0c             	sub    $0xc,%esp
 4ae:	ff 34 9d e0 11 00 00 	push   0x11e0(,%ebx,4)
 4b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 4b8:	e8 d3 05 00 00       	call   a90 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 4bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 4c0:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 4c3:	c7 04 9d e0 11 00 00 	movl   $0x0,0x11e0(,%ebx,4)
 4ca:	00 00 00 00 
      stack_addrs[i] = 0;
 4ce:	c7 04 9d e0 12 00 00 	movl   $0x0,0x12e0(,%ebx,4)
 4d5:	00 00 00 00 
      inUse[i] = 0;
 4d9:	c7 04 9d e0 10 00 00 	movl   $0x0,0x10e0(,%ebx,4)
 4e0:	00 00 00 00 
    }
  }
  return threadId; 
}
 4e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4e7:	c9                   	leave  
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <lock_init>:

void lock_init(lock_t *lock){
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 4fc:	5d                   	pop    %ebp
 4fd:	c3                   	ret    
 4fe:	66 90                	xchg   %ax,%ax

00000500 <lock_acquire>:

void lock_acquire(lock_t *lock){
 500:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 501:	b9 01 00 00 00       	mov    $0x1,%ecx
 506:	89 e5                	mov    %esp,%ebp
 508:	8b 55 08             	mov    0x8(%ebp),%edx
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop
 510:	89 c8                	mov    %ecx,%eax
 512:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 515:	85 c0                	test   %eax,%eax
 517:	75 f7                	jne    510 <lock_acquire+0x10>
}
 519:	5d                   	pop    %ebp
 51a:	c3                   	ret    
 51b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 51f:	90                   	nop

00000520 <lock_release>:

void lock_release(lock_t *lock){
 520:	55                   	push   %ebp
 521:	31 c0                	xor    %eax,%eax
 523:	89 e5                	mov    %esp,%ebp
 525:	8b 55 08             	mov    0x8(%ebp),%edx
 528:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 530:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 531:	31 c0                	xor    %eax,%eax
{
 533:	89 e5                	mov    %esp,%ebp
 535:	53                   	push   %ebx
 536:	8b 4d 08             	mov    0x8(%ebp),%ecx
 539:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 53c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 540:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 544:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 547:	83 c0 01             	add    $0x1,%eax
 54a:	84 d2                	test   %dl,%dl
 54c:	75 f2                	jne    540 <strcpy+0x10>
    ;
  return os;
}
 54e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 551:	89 c8                	mov    %ecx,%eax
 553:	c9                   	leave  
 554:	c3                   	ret    
 555:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000560 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx
 564:	8b 55 08             	mov    0x8(%ebp),%edx
 567:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 56a:	0f b6 02             	movzbl (%edx),%eax
 56d:	84 c0                	test   %al,%al
 56f:	75 17                	jne    588 <strcmp+0x28>
 571:	eb 3a                	jmp    5ad <strcmp+0x4d>
 573:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 577:	90                   	nop
 578:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 57c:	83 c2 01             	add    $0x1,%edx
 57f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 582:	84 c0                	test   %al,%al
 584:	74 1a                	je     5a0 <strcmp+0x40>
    p++, q++;
 586:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 588:	0f b6 19             	movzbl (%ecx),%ebx
 58b:	38 c3                	cmp    %al,%bl
 58d:	74 e9                	je     578 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 58f:	29 d8                	sub    %ebx,%eax
}
 591:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 594:	c9                   	leave  
 595:	c3                   	ret    
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 5a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 5a4:	31 c0                	xor    %eax,%eax
 5a6:	29 d8                	sub    %ebx,%eax
}
 5a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5ab:	c9                   	leave  
 5ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 5ad:	0f b6 19             	movzbl (%ecx),%ebx
 5b0:	31 c0                	xor    %eax,%eax
 5b2:	eb db                	jmp    58f <strcmp+0x2f>
 5b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <strlen>:

uint
strlen(const char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 5c6:	80 3a 00             	cmpb   $0x0,(%edx)
 5c9:	74 15                	je     5e0 <strlen+0x20>
 5cb:	31 c0                	xor    %eax,%eax
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
 5d0:	83 c0 01             	add    $0x1,%eax
 5d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 5d7:	89 c1                	mov    %eax,%ecx
 5d9:	75 f5                	jne    5d0 <strlen+0x10>
    ;
  return n;
}
 5db:	89 c8                	mov    %ecx,%eax
 5dd:	5d                   	pop    %ebp
 5de:	c3                   	ret    
 5df:	90                   	nop
  for(n = 0; s[n]; n++)
 5e0:	31 c9                	xor    %ecx,%ecx
}
 5e2:	5d                   	pop    %ebp
 5e3:	89 c8                	mov    %ecx,%eax
 5e5:	c3                   	ret    
 5e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi

000005f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 5f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 5fd:	89 d7                	mov    %edx,%edi
 5ff:	fc                   	cld    
 600:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 602:	8b 7d fc             	mov    -0x4(%ebp),%edi
 605:	89 d0                	mov    %edx,%eax
 607:	c9                   	leave  
 608:	c3                   	ret    
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000610 <strchr>:

char*
strchr(const char *s, char c)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	8b 45 08             	mov    0x8(%ebp),%eax
 616:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 61a:	0f b6 10             	movzbl (%eax),%edx
 61d:	84 d2                	test   %dl,%dl
 61f:	75 12                	jne    633 <strchr+0x23>
 621:	eb 1d                	jmp    640 <strchr+0x30>
 623:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 627:	90                   	nop
 628:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 62c:	83 c0 01             	add    $0x1,%eax
 62f:	84 d2                	test   %dl,%dl
 631:	74 0d                	je     640 <strchr+0x30>
    if(*s == c)
 633:	38 d1                	cmp    %dl,%cl
 635:	75 f1                	jne    628 <strchr+0x18>
      return (char*)s;
  return 0;
}
 637:	5d                   	pop    %ebp
 638:	c3                   	ret    
 639:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 640:	31 c0                	xor    %eax,%eax
}
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 64f:	90                   	nop

00000650 <gets>:

char*
gets(char *buf, int max)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 655:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 658:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 659:	31 db                	xor    %ebx,%ebx
{
 65b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 65e:	eb 27                	jmp    687 <gets+0x37>
    cc = read(0, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	6a 01                	push   $0x1
 665:	57                   	push   %edi
 666:	6a 00                	push   $0x0
 668:	e8 2e 01 00 00       	call   79b <read>
    if(cc < 1)
 66d:	83 c4 10             	add    $0x10,%esp
 670:	85 c0                	test   %eax,%eax
 672:	7e 1d                	jle    691 <gets+0x41>
      break;
    buf[i++] = c;
 674:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 678:	8b 55 08             	mov    0x8(%ebp),%edx
 67b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 67f:	3c 0a                	cmp    $0xa,%al
 681:	74 1d                	je     6a0 <gets+0x50>
 683:	3c 0d                	cmp    $0xd,%al
 685:	74 19                	je     6a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 687:	89 de                	mov    %ebx,%esi
 689:	83 c3 01             	add    $0x1,%ebx
 68c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 68f:	7c cf                	jl     660 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 691:	8b 45 08             	mov    0x8(%ebp),%eax
 694:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 698:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69b:	5b                   	pop    %ebx
 69c:	5e                   	pop    %esi
 69d:	5f                   	pop    %edi
 69e:	5d                   	pop    %ebp
 69f:	c3                   	ret    
  buf[i] = '\0';
 6a0:	8b 45 08             	mov    0x8(%ebp),%eax
 6a3:	89 de                	mov    %ebx,%esi
 6a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 6a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ac:	5b                   	pop    %ebx
 6ad:	5e                   	pop    %esi
 6ae:	5f                   	pop    %edi
 6af:	5d                   	pop    %ebp
 6b0:	c3                   	ret    
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop

000006c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6c5:	83 ec 08             	sub    $0x8,%esp
 6c8:	6a 00                	push   $0x0
 6ca:	ff 75 08             	push   0x8(%ebp)
 6cd:	e8 f1 00 00 00       	call   7c3 <open>
  if(fd < 0)
 6d2:	83 c4 10             	add    $0x10,%esp
 6d5:	85 c0                	test   %eax,%eax
 6d7:	78 27                	js     700 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6d9:	83 ec 08             	sub    $0x8,%esp
 6dc:	ff 75 0c             	push   0xc(%ebp)
 6df:	89 c3                	mov    %eax,%ebx
 6e1:	50                   	push   %eax
 6e2:	e8 f4 00 00 00       	call   7db <fstat>
  close(fd);
 6e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 6ea:	89 c6                	mov    %eax,%esi
  close(fd);
 6ec:	e8 ba 00 00 00       	call   7ab <close>
  return r;
 6f1:	83 c4 10             	add    $0x10,%esp
}
 6f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6f7:	89 f0                	mov    %esi,%eax
 6f9:	5b                   	pop    %ebx
 6fa:	5e                   	pop    %esi
 6fb:	5d                   	pop    %ebp
 6fc:	c3                   	ret    
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 700:	be ff ff ff ff       	mov    $0xffffffff,%esi
 705:	eb ed                	jmp    6f4 <stat+0x34>
 707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70e:	66 90                	xchg   %ax,%ax

00000710 <atoi>:

int
atoi(const char *s)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	53                   	push   %ebx
 714:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 717:	0f be 02             	movsbl (%edx),%eax
 71a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 71d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 720:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 725:	77 1e                	ja     745 <atoi+0x35>
 727:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 730:	83 c2 01             	add    $0x1,%edx
 733:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 736:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 73a:	0f be 02             	movsbl (%edx),%eax
 73d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 740:	80 fb 09             	cmp    $0x9,%bl
 743:	76 eb                	jbe    730 <atoi+0x20>
  return n;
}
 745:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 748:	89 c8                	mov    %ecx,%eax
 74a:	c9                   	leave  
 74b:	c3                   	ret    
 74c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000750 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	8b 45 10             	mov    0x10(%ebp),%eax
 757:	8b 55 08             	mov    0x8(%ebp),%edx
 75a:	56                   	push   %esi
 75b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 75e:	85 c0                	test   %eax,%eax
 760:	7e 13                	jle    775 <memmove+0x25>
 762:	01 d0                	add    %edx,%eax
  dst = vdst;
 764:	89 d7                	mov    %edx,%edi
 766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 770:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 771:	39 f8                	cmp    %edi,%eax
 773:	75 fb                	jne    770 <memmove+0x20>
  return vdst;
}
 775:	5e                   	pop    %esi
 776:	89 d0                	mov    %edx,%eax
 778:	5f                   	pop    %edi
 779:	5d                   	pop    %ebp
 77a:	c3                   	ret    

0000077b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 77b:	b8 01 00 00 00       	mov    $0x1,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret    

00000783 <exit>:
SYSCALL(exit)
 783:	b8 02 00 00 00       	mov    $0x2,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret    

0000078b <wait>:
SYSCALL(wait)
 78b:	b8 03 00 00 00       	mov    $0x3,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret    

00000793 <pipe>:
SYSCALL(pipe)
 793:	b8 04 00 00 00       	mov    $0x4,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret    

0000079b <read>:
SYSCALL(read)
 79b:	b8 05 00 00 00       	mov    $0x5,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret    

000007a3 <write>:
SYSCALL(write)
 7a3:	b8 10 00 00 00       	mov    $0x10,%eax
 7a8:	cd 40                	int    $0x40
 7aa:	c3                   	ret    

000007ab <close>:
SYSCALL(close)
 7ab:	b8 15 00 00 00       	mov    $0x15,%eax
 7b0:	cd 40                	int    $0x40
 7b2:	c3                   	ret    

000007b3 <kill>:
SYSCALL(kill)
 7b3:	b8 06 00 00 00       	mov    $0x6,%eax
 7b8:	cd 40                	int    $0x40
 7ba:	c3                   	ret    

000007bb <exec>:
SYSCALL(exec)
 7bb:	b8 07 00 00 00       	mov    $0x7,%eax
 7c0:	cd 40                	int    $0x40
 7c2:	c3                   	ret    

000007c3 <open>:
SYSCALL(open)
 7c3:	b8 0f 00 00 00       	mov    $0xf,%eax
 7c8:	cd 40                	int    $0x40
 7ca:	c3                   	ret    

000007cb <mknod>:
SYSCALL(mknod)
 7cb:	b8 11 00 00 00       	mov    $0x11,%eax
 7d0:	cd 40                	int    $0x40
 7d2:	c3                   	ret    

000007d3 <unlink>:
SYSCALL(unlink)
 7d3:	b8 12 00 00 00       	mov    $0x12,%eax
 7d8:	cd 40                	int    $0x40
 7da:	c3                   	ret    

000007db <fstat>:
SYSCALL(fstat)
 7db:	b8 08 00 00 00       	mov    $0x8,%eax
 7e0:	cd 40                	int    $0x40
 7e2:	c3                   	ret    

000007e3 <link>:
SYSCALL(link)
 7e3:	b8 13 00 00 00       	mov    $0x13,%eax
 7e8:	cd 40                	int    $0x40
 7ea:	c3                   	ret    

000007eb <mkdir>:
SYSCALL(mkdir)
 7eb:	b8 14 00 00 00       	mov    $0x14,%eax
 7f0:	cd 40                	int    $0x40
 7f2:	c3                   	ret    

000007f3 <chdir>:
SYSCALL(chdir)
 7f3:	b8 09 00 00 00       	mov    $0x9,%eax
 7f8:	cd 40                	int    $0x40
 7fa:	c3                   	ret    

000007fb <dup>:
SYSCALL(dup)
 7fb:	b8 0a 00 00 00       	mov    $0xa,%eax
 800:	cd 40                	int    $0x40
 802:	c3                   	ret    

00000803 <getpid>:
SYSCALL(getpid)
 803:	b8 0b 00 00 00       	mov    $0xb,%eax
 808:	cd 40                	int    $0x40
 80a:	c3                   	ret    

0000080b <sbrk>:
SYSCALL(sbrk)
 80b:	b8 0c 00 00 00       	mov    $0xc,%eax
 810:	cd 40                	int    $0x40
 812:	c3                   	ret    

00000813 <sleep>:
SYSCALL(sleep)
 813:	b8 0d 00 00 00       	mov    $0xd,%eax
 818:	cd 40                	int    $0x40
 81a:	c3                   	ret    

0000081b <uptime>:
SYSCALL(uptime)
 81b:	b8 0e 00 00 00       	mov    $0xe,%eax
 820:	cd 40                	int    $0x40
 822:	c3                   	ret    

00000823 <clone>:
SYSCALL(clone)
 823:	b8 16 00 00 00       	mov    $0x16,%eax
 828:	cd 40                	int    $0x40
 82a:	c3                   	ret    

0000082b <join>:
SYSCALL(join)
 82b:	b8 17 00 00 00       	mov    $0x17,%eax
 830:	cd 40                	int    $0x40
 832:	c3                   	ret    
 833:	66 90                	xchg   %ax,%ax
 835:	66 90                	xchg   %ax,%ax
 837:	66 90                	xchg   %ax,%ax
 839:	66 90                	xchg   %ax,%ax
 83b:	66 90                	xchg   %ax,%ax
 83d:	66 90                	xchg   %ax,%ax
 83f:	90                   	nop

00000840 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	56                   	push   %esi
 845:	53                   	push   %ebx
 846:	83 ec 3c             	sub    $0x3c,%esp
 849:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 84c:	89 d1                	mov    %edx,%ecx
{
 84e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 851:	85 d2                	test   %edx,%edx
 853:	0f 89 7f 00 00 00    	jns    8d8 <printint+0x98>
 859:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 85d:	74 79                	je     8d8 <printint+0x98>
    neg = 1;
 85f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 866:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 868:	31 db                	xor    %ebx,%ebx
 86a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 86d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 870:	89 c8                	mov    %ecx,%eax
 872:	31 d2                	xor    %edx,%edx
 874:	89 cf                	mov    %ecx,%edi
 876:	f7 75 c4             	divl   -0x3c(%ebp)
 879:	0f b6 92 10 0d 00 00 	movzbl 0xd10(%edx),%edx
 880:	89 45 c0             	mov    %eax,-0x40(%ebp)
 883:	89 d8                	mov    %ebx,%eax
 885:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 888:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 88b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 88e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 891:	76 dd                	jbe    870 <printint+0x30>
  if(neg)
 893:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 896:	85 c9                	test   %ecx,%ecx
 898:	74 0c                	je     8a6 <printint+0x66>
    buf[i++] = '-';
 89a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 89f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 8a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 8a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 8a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 8ad:	eb 07                	jmp    8b6 <printint+0x76>
 8af:	90                   	nop
    putc(fd, buf[i]);
 8b0:	0f b6 13             	movzbl (%ebx),%edx
 8b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 8b6:	83 ec 04             	sub    $0x4,%esp
 8b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 8bc:	6a 01                	push   $0x1
 8be:	56                   	push   %esi
 8bf:	57                   	push   %edi
 8c0:	e8 de fe ff ff       	call   7a3 <write>
  while(--i >= 0)
 8c5:	83 c4 10             	add    $0x10,%esp
 8c8:	39 de                	cmp    %ebx,%esi
 8ca:	75 e4                	jne    8b0 <printint+0x70>
}
 8cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8cf:	5b                   	pop    %ebx
 8d0:	5e                   	pop    %esi
 8d1:	5f                   	pop    %edi
 8d2:	5d                   	pop    %ebp
 8d3:	c3                   	ret    
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 8df:	eb 87                	jmp    868 <printint+0x28>
 8e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ef:	90                   	nop

000008f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 8fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 8ff:	0f b6 13             	movzbl (%ebx),%edx
 902:	84 d2                	test   %dl,%dl
 904:	74 6a                	je     970 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 906:	8d 45 10             	lea    0x10(%ebp),%eax
 909:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 90c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 90f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 911:	89 45 d0             	mov    %eax,-0x30(%ebp)
 914:	eb 36                	jmp    94c <printf+0x5c>
 916:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 91d:	8d 76 00             	lea    0x0(%esi),%esi
 920:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 923:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 928:	83 f8 25             	cmp    $0x25,%eax
 92b:	74 15                	je     942 <printf+0x52>
  write(fd, &c, 1);
 92d:	83 ec 04             	sub    $0x4,%esp
 930:	88 55 e7             	mov    %dl,-0x19(%ebp)
 933:	6a 01                	push   $0x1
 935:	57                   	push   %edi
 936:	56                   	push   %esi
 937:	e8 67 fe ff ff       	call   7a3 <write>
 93c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 93f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 942:	0f b6 13             	movzbl (%ebx),%edx
 945:	83 c3 01             	add    $0x1,%ebx
 948:	84 d2                	test   %dl,%dl
 94a:	74 24                	je     970 <printf+0x80>
    c = fmt[i] & 0xff;
 94c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 94f:	85 c9                	test   %ecx,%ecx
 951:	74 cd                	je     920 <printf+0x30>
      }
    } else if(state == '%'){
 953:	83 f9 25             	cmp    $0x25,%ecx
 956:	75 ea                	jne    942 <printf+0x52>
      if(c == 'd'){
 958:	83 f8 25             	cmp    $0x25,%eax
 95b:	0f 84 07 01 00 00    	je     a68 <printf+0x178>
 961:	83 e8 63             	sub    $0x63,%eax
 964:	83 f8 15             	cmp    $0x15,%eax
 967:	77 17                	ja     980 <printf+0x90>
 969:	ff 24 85 b8 0c 00 00 	jmp    *0xcb8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 970:	8d 65 f4             	lea    -0xc(%ebp),%esp
 973:	5b                   	pop    %ebx
 974:	5e                   	pop    %esi
 975:	5f                   	pop    %edi
 976:	5d                   	pop    %ebp
 977:	c3                   	ret    
 978:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 97f:	90                   	nop
  write(fd, &c, 1);
 980:	83 ec 04             	sub    $0x4,%esp
 983:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 986:	6a 01                	push   $0x1
 988:	57                   	push   %edi
 989:	56                   	push   %esi
 98a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 98e:	e8 10 fe ff ff       	call   7a3 <write>
        putc(fd, c);
 993:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 997:	83 c4 0c             	add    $0xc,%esp
 99a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 99d:	6a 01                	push   $0x1
 99f:	57                   	push   %edi
 9a0:	56                   	push   %esi
 9a1:	e8 fd fd ff ff       	call   7a3 <write>
        putc(fd, c);
 9a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9a9:	31 c9                	xor    %ecx,%ecx
 9ab:	eb 95                	jmp    942 <printf+0x52>
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 9b8:	6a 00                	push   $0x0
 9ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9bd:	8b 10                	mov    (%eax),%edx
 9bf:	89 f0                	mov    %esi,%eax
 9c1:	e8 7a fe ff ff       	call   840 <printint>
        ap++;
 9c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9cd:	31 c9                	xor    %ecx,%ecx
 9cf:	e9 6e ff ff ff       	jmp    942 <printf+0x52>
 9d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9db:	8b 10                	mov    (%eax),%edx
        ap++;
 9dd:	83 c0 04             	add    $0x4,%eax
 9e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9e3:	85 d2                	test   %edx,%edx
 9e5:	0f 84 8d 00 00 00    	je     a78 <printf+0x188>
        while(*s != 0){
 9eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 9ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 9f0:	84 c0                	test   %al,%al
 9f2:	0f 84 4a ff ff ff    	je     942 <printf+0x52>
 9f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9fb:	89 d3                	mov    %edx,%ebx
 9fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a00:	83 ec 04             	sub    $0x4,%esp
          s++;
 a03:	83 c3 01             	add    $0x1,%ebx
 a06:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a09:	6a 01                	push   $0x1
 a0b:	57                   	push   %edi
 a0c:	56                   	push   %esi
 a0d:	e8 91 fd ff ff       	call   7a3 <write>
        while(*s != 0){
 a12:	0f b6 03             	movzbl (%ebx),%eax
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	84 c0                	test   %al,%al
 a1a:	75 e4                	jne    a00 <printf+0x110>
      state = 0;
 a1c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 a1f:	31 c9                	xor    %ecx,%ecx
 a21:	e9 1c ff ff ff       	jmp    942 <printf+0x52>
 a26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a2d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 a30:	83 ec 0c             	sub    $0xc,%esp
 a33:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a38:	6a 01                	push   $0x1
 a3a:	e9 7b ff ff ff       	jmp    9ba <printf+0xca>
 a3f:	90                   	nop
        putc(fd, *ap);
 a40:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a43:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a46:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a48:	6a 01                	push   $0x1
 a4a:	57                   	push   %edi
 a4b:	56                   	push   %esi
        putc(fd, *ap);
 a4c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a4f:	e8 4f fd ff ff       	call   7a3 <write>
        ap++;
 a54:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a58:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a5b:	31 c9                	xor    %ecx,%ecx
 a5d:	e9 e0 fe ff ff       	jmp    942 <printf+0x52>
 a62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a68:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a6b:	83 ec 04             	sub    $0x4,%esp
 a6e:	e9 2a ff ff ff       	jmp    99d <printf+0xad>
 a73:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a77:	90                   	nop
          s = "(null)";
 a78:	ba b0 0c 00 00       	mov    $0xcb0,%edx
        while(*s != 0){
 a7d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a80:	b8 28 00 00 00       	mov    $0x28,%eax
 a85:	89 d3                	mov    %edx,%ebx
 a87:	e9 74 ff ff ff       	jmp    a00 <printf+0x110>
 a8c:	66 90                	xchg   %ax,%ax
 a8e:	66 90                	xchg   %ax,%ax

00000a90 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a90:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a91:	a1 e0 13 00 00       	mov    0x13e0,%eax
{
 a96:	89 e5                	mov    %esp,%ebp
 a98:	57                   	push   %edi
 a99:	56                   	push   %esi
 a9a:	53                   	push   %ebx
 a9b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a9e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 aa1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 aa8:	89 c2                	mov    %eax,%edx
 aaa:	8b 00                	mov    (%eax),%eax
 aac:	39 ca                	cmp    %ecx,%edx
 aae:	73 30                	jae    ae0 <free+0x50>
 ab0:	39 c1                	cmp    %eax,%ecx
 ab2:	72 04                	jb     ab8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ab4:	39 c2                	cmp    %eax,%edx
 ab6:	72 f0                	jb     aa8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 ab8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 abb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 abe:	39 f8                	cmp    %edi,%eax
 ac0:	74 30                	je     af2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 ac2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 ac5:	8b 42 04             	mov    0x4(%edx),%eax
 ac8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 acb:	39 f1                	cmp    %esi,%ecx
 acd:	74 3a                	je     b09 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 acf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ad1:	5b                   	pop    %ebx
  freep = p;
 ad2:	89 15 e0 13 00 00    	mov    %edx,0x13e0
}
 ad8:	5e                   	pop    %esi
 ad9:	5f                   	pop    %edi
 ada:	5d                   	pop    %ebp
 adb:	c3                   	ret    
 adc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ae0:	39 c2                	cmp    %eax,%edx
 ae2:	72 c4                	jb     aa8 <free+0x18>
 ae4:	39 c1                	cmp    %eax,%ecx
 ae6:	73 c0                	jae    aa8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 ae8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 aeb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 aee:	39 f8                	cmp    %edi,%eax
 af0:	75 d0                	jne    ac2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 af2:	03 70 04             	add    0x4(%eax),%esi
 af5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 af8:	8b 02                	mov    (%edx),%eax
 afa:	8b 00                	mov    (%eax),%eax
 afc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 aff:	8b 42 04             	mov    0x4(%edx),%eax
 b02:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b05:	39 f1                	cmp    %esi,%ecx
 b07:	75 c6                	jne    acf <free+0x3f>
    p->s.size += bp->s.size;
 b09:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 b0c:	89 15 e0 13 00 00    	mov    %edx,0x13e0
    p->s.size += bp->s.size;
 b12:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 b15:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 b18:	89 0a                	mov    %ecx,(%edx)
}
 b1a:	5b                   	pop    %ebx
 b1b:	5e                   	pop    %esi
 b1c:	5f                   	pop    %edi
 b1d:	5d                   	pop    %ebp
 b1e:	c3                   	ret    
 b1f:	90                   	nop

00000b20 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b20:	55                   	push   %ebp
 b21:	89 e5                	mov    %esp,%ebp
 b23:	57                   	push   %edi
 b24:	56                   	push   %esi
 b25:	53                   	push   %ebx
 b26:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b29:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b2c:	8b 3d e0 13 00 00    	mov    0x13e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b32:	8d 70 07             	lea    0x7(%eax),%esi
 b35:	c1 ee 03             	shr    $0x3,%esi
 b38:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 b3b:	85 ff                	test   %edi,%edi
 b3d:	0f 84 9d 00 00 00    	je     be0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b43:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b45:	8b 4a 04             	mov    0x4(%edx),%ecx
 b48:	39 f1                	cmp    %esi,%ecx
 b4a:	73 6a                	jae    bb6 <malloc+0x96>
 b4c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b51:	39 de                	cmp    %ebx,%esi
 b53:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b56:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b5d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b60:	eb 17                	jmp    b79 <malloc+0x59>
 b62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b68:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b6a:	8b 48 04             	mov    0x4(%eax),%ecx
 b6d:	39 f1                	cmp    %esi,%ecx
 b6f:	73 4f                	jae    bc0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b71:	8b 3d e0 13 00 00    	mov    0x13e0,%edi
 b77:	89 c2                	mov    %eax,%edx
 b79:	39 d7                	cmp    %edx,%edi
 b7b:	75 eb                	jne    b68 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b7d:	83 ec 0c             	sub    $0xc,%esp
 b80:	ff 75 e4             	push   -0x1c(%ebp)
 b83:	e8 83 fc ff ff       	call   80b <sbrk>
  if(p == (char*)-1)
 b88:	83 c4 10             	add    $0x10,%esp
 b8b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b8e:	74 1c                	je     bac <malloc+0x8c>
  hp->s.size = nu;
 b90:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b93:	83 ec 0c             	sub    $0xc,%esp
 b96:	83 c0 08             	add    $0x8,%eax
 b99:	50                   	push   %eax
 b9a:	e8 f1 fe ff ff       	call   a90 <free>
  return freep;
 b9f:	8b 15 e0 13 00 00    	mov    0x13e0,%edx
      if((p = morecore(nunits)) == 0)
 ba5:	83 c4 10             	add    $0x10,%esp
 ba8:	85 d2                	test   %edx,%edx
 baa:	75 bc                	jne    b68 <malloc+0x48>
        return 0;
  }
}
 bac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 baf:	31 c0                	xor    %eax,%eax
}
 bb1:	5b                   	pop    %ebx
 bb2:	5e                   	pop    %esi
 bb3:	5f                   	pop    %edi
 bb4:	5d                   	pop    %ebp
 bb5:	c3                   	ret    
    if(p->s.size >= nunits){
 bb6:	89 d0                	mov    %edx,%eax
 bb8:	89 fa                	mov    %edi,%edx
 bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bc0:	39 ce                	cmp    %ecx,%esi
 bc2:	74 4c                	je     c10 <malloc+0xf0>
        p->s.size -= nunits;
 bc4:	29 f1                	sub    %esi,%ecx
 bc6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 bc9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bcc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 bcf:	89 15 e0 13 00 00    	mov    %edx,0x13e0
}
 bd5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 bd8:	83 c0 08             	add    $0x8,%eax
}
 bdb:	5b                   	pop    %ebx
 bdc:	5e                   	pop    %esi
 bdd:	5f                   	pop    %edi
 bde:	5d                   	pop    %ebp
 bdf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 be0:	c7 05 e0 13 00 00 e4 	movl   $0x13e4,0x13e0
 be7:	13 00 00 
    base.s.size = 0;
 bea:	bf e4 13 00 00       	mov    $0x13e4,%edi
    base.s.ptr = freep = prevp = &base;
 bef:	c7 05 e4 13 00 00 e4 	movl   $0x13e4,0x13e4
 bf6:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bf9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 bfb:	c7 05 e8 13 00 00 00 	movl   $0x0,0x13e8
 c02:	00 00 00 
    if(p->s.size >= nunits){
 c05:	e9 42 ff ff ff       	jmp    b4c <malloc+0x2c>
 c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 c10:	8b 08                	mov    (%eax),%ecx
 c12:	89 0a                	mov    %ecx,(%edx)
 c14:	eb b9                	jmp    bcf <malloc+0xaf>
