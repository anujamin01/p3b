
_test_18:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   ppid = getpid();
   f:	e8 4f 06 00 00       	call   663 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 20 0f 00 00       	push   $0xf20
   ppid = getpid();
  1c:	a3 28 0f 00 00       	mov    %eax,0xf28
   lock_init(&lock);
  21:	e8 2a 03 00 00       	call   350 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 10 0f 00 00       	mov    0xf10,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 10 0f 00 00       	mov    0xf10,%eax
  45:	83 c3 01             	add    $0x1,%ebx
  48:	39 d8                	cmp    %ebx,%eax
  4a:	7e 5e                	jle    aa <main+0xaa>
      int thread_pid = thread_create(worker, 0, 0);
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	6a 00                	push   $0x0
  51:	6a 00                	push   $0x0
  53:	68 60 01 00 00       	push   $0x160
  58:	e8 e3 01 00 00       	call   240 <thread_create>
      assert(thread_pid > 0);
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	7f dc                	jg     40 <main+0x40>
  64:	6a 26                	push   $0x26
  66:	68 78 0a 00 00       	push   $0xa78
  6b:	68 82 0a 00 00       	push   $0xa82
  70:	6a 01                	push   $0x1
  72:	e8 d9 06 00 00       	call   750 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 91 0a 00 00       	push   $0xa91
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 a0 0a 00 00       	push   $0xaa0
  84:	6a 01                	push   $0x1
  86:	e8 c5 06 00 00       	call   750 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 b4 0a 00 00       	push   $0xab4
  92:	6a 01                	push   $0x1
  94:	e8 b7 06 00 00       	call   750 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 28 0f 00 00    	push   0xf28
  a0:	e8 6e 05 00 00       	call   613 <kill>
  a5:	e8 39 05 00 00       	call   5e3 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 10 0f 00 00       	mov    0xf10,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 07 02 00 00       	call   2d0 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2b                	push   $0x2b
  cf:	68 78 0a 00 00       	push   $0xa78
  d4:	68 82 0a 00 00       	push   $0xa82
  d9:	6a 01                	push   $0x1
  db:	e8 70 06 00 00       	call   750 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 c8 0a 00 00       	push   $0xac8
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * 2);
  ea:	01 c0                	add    %eax,%eax
  ec:	3b 05 24 0f 00 00    	cmp    0xf24,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 2e                	push   $0x2e
  f6:	68 78 0a 00 00       	push   $0xa78
  fb:	68 82 0a 00 00       	push   $0xa82
 100:	6a 01                	push   $0x1
 102:	e8 49 06 00 00       	call   750 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 d5 0a 00 00       	push   $0xad5
 10f:	e9 6b ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 ef 0a 00 00       	push   $0xaef
 11b:	6a 01                	push   $0x1
 11d:	e8 2e 06 00 00       	call   750 <printf>
   exit();
 122:	e8 bc 04 00 00       	call   5e3 <exit>
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker2>:
}

void worker2(void *arg1,void *arg2){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 14             	sub    $0x14,%esp
    int j;
    lock_acquire(&lock);
 136:	68 20 0f 00 00       	push   $0xf20
 13b:	e8 20 02 00 00       	call   360 <lock_acquire>
    for(j=0;j<50;j++);
    global++;
    lock_release(&lock);
 140:	c7 04 24 20 0f 00 00 	movl   $0xf20,(%esp)
    global++;
 147:	83 05 24 0f 00 00 01 	addl   $0x1,0xf24
    lock_release(&lock);
 14e:	e8 2d 02 00 00       	call   380 <lock_release>
    exit();
 153:	e8 8b 04 00 00       	call   5e3 <exit>
 158:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 15f:	90                   	nop

00000160 <worker>:
    
}
void
worker(void *arg1, void *arg2) {
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	53                   	push   %ebx
 164:	83 ec 10             	sub    $0x10,%esp
   
    lock_acquire(&lock);
 167:	68 20 0f 00 00       	push   $0xf20
 16c:	e8 ef 01 00 00       	call   360 <lock_acquire>
    int j;
    for(j = 0; j < 50; j++); // take some time
    global++;
    lock_release(&lock);
 171:	c7 04 24 20 0f 00 00 	movl   $0xf20,(%esp)
    global++;
 178:	83 05 24 0f 00 00 01 	addl   $0x1,0xf24
    lock_release(&lock);
 17f:	e8 fc 01 00 00       	call   380 <lock_release>

    int nested_thread_pid = thread_create(worker2, 0, 0);
 184:	83 c4 0c             	add    $0xc,%esp
 187:	6a 00                	push   $0x0
 189:	6a 00                	push   $0x0
 18b:	68 30 01 00 00       	push   $0x130
 190:	e8 ab 00 00 00       	call   240 <thread_create>
    assert(nested_thread_pid > 0);
 195:	83 c4 10             	add    $0x10,%esp
 198:	85 c0                	test   %eax,%eax
 19a:	7e 59                	jle    1f5 <worker+0x95>
 19c:	89 c3                	mov    %eax,%ebx
    int nested_join_pid = thread_join();
 19e:	e8 2d 01 00 00       	call   2d0 <thread_join>
    assert(nested_join_pid > 0);
 1a3:	85 c0                	test   %eax,%eax
 1a5:	7e 6b                	jle    212 <worker+0xb2>
    
    assert(nested_thread_pid==nested_join_pid);
 1a7:	39 c3                	cmp    %eax,%ebx
 1a9:	0f 84 80 00 00 00    	je     22f <worker+0xcf>
 1af:	6a 4b                	push   $0x4b
 1b1:	68 78 0a 00 00       	push   $0xa78
 1b6:	68 82 0a 00 00       	push   $0xa82
 1bb:	6a 01                	push   $0x1
 1bd:	e8 8e 05 00 00       	call   750 <printf>
 1c2:	83 c4 0c             	add    $0xc,%esp
 1c5:	68 fc 0a 00 00       	push   $0xafc
    assert(nested_join_pid > 0);
 1ca:	68 a0 0a 00 00       	push   $0xaa0
 1cf:	6a 01                	push   $0x1
 1d1:	e8 7a 05 00 00       	call   750 <printf>
 1d6:	58                   	pop    %eax
 1d7:	5a                   	pop    %edx
 1d8:	68 b4 0a 00 00       	push   $0xab4
 1dd:	6a 01                	push   $0x1
 1df:	e8 6c 05 00 00       	call   750 <printf>
 1e4:	59                   	pop    %ecx
 1e5:	ff 35 28 0f 00 00    	push   0xf28
 1eb:	e8 23 04 00 00       	call   613 <kill>
 1f0:	e8 ee 03 00 00       	call   5e3 <exit>
    assert(nested_thread_pid > 0);
 1f5:	6a 47                	push   $0x47
 1f7:	68 78 0a 00 00       	push   $0xa78
 1fc:	68 82 0a 00 00       	push   $0xa82
 201:	6a 01                	push   $0x1
 203:	e8 48 05 00 00       	call   750 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 8a 0a 00 00       	push   $0xa8a
 210:	eb b8                	jmp    1ca <worker+0x6a>
    assert(nested_join_pid > 0);
 212:	6a 49                	push   $0x49
 214:	68 78 0a 00 00       	push   $0xa78
 219:	68 82 0a 00 00       	push   $0xa82
 21e:	6a 01                	push   $0x1
 220:	e8 2b 05 00 00       	call   750 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 c1 0a 00 00       	push   $0xac1
 22d:	eb 9b                	jmp    1ca <worker+0x6a>

   exit();
 22f:	e8 af 03 00 00       	call   5e3 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 247:	a1 14 0f 00 00       	mov    0xf14,%eax
 24c:	01 c0                	add    %eax,%eax
 24e:	50                   	push   %eax
 24f:	e8 2c 07 00 00       	call   980 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 254:	8b 0d 14 0f 00 00    	mov    0xf14,%ecx
 25a:	31 d2                	xor    %edx,%edx
 25c:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 25f:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 261:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 263:	89 c8                	mov    %ecx,%eax
 265:	01 d9                	add    %ebx,%ecx
 267:	29 d0                	sub    %edx,%eax
 269:	01 d8                	add    %ebx,%eax
 26b:	85 d2                	test   %edx,%edx
 26d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 270:	31 d2                	xor    %edx,%edx
 272:	eb 0c                	jmp    280 <thread_create+0x40>
 274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 278:	83 c2 01             	add    $0x1,%edx
 27b:	83 fa 40             	cmp    $0x40,%edx
 27e:	74 2f                	je     2af <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 280:	8b 04 95 40 11 00 00 	mov    0x1140(,%edx,4),%eax
 287:	85 c0                	test   %eax,%eax
 289:	75 ed                	jne    278 <thread_create+0x38>
 28b:	8b 04 95 40 0f 00 00 	mov    0xf40(,%edx,4),%eax
 292:	85 c0                	test   %eax,%eax
 294:	75 e2                	jne    278 <thread_create+0x38>
      inUse[i] = 1;
 296:	c7 04 95 40 0f 00 00 	movl   $0x1,0xf40(,%edx,4)
 29d:	01 00 00 00 
      malloc_addrs[i] = original;
 2a1:	89 1c 95 40 10 00 00 	mov    %ebx,0x1040(,%edx,4)
      stack_addrs[i] = stack;
 2a8:	89 0c 95 40 11 00 00 	mov    %ecx,0x1140(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 2af:	51                   	push   %ecx
 2b0:	ff 75 10             	push   0x10(%ebp)
 2b3:	ff 75 0c             	push   0xc(%ebp)
 2b6:	ff 75 08             	push   0x8(%ebp)
 2b9:	e8 c5 03 00 00       	call   683 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 2be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2c1:	c9                   	leave  
 2c2:	c3                   	ret    
 2c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002d0 <thread_join>:

int 
thread_join()
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 2d4:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 2d6:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 2d9:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 2dc:	50                   	push   %eax
 2dd:	e8 a9 03 00 00       	call   68b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 2e2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2e5:	83 c4 10             	add    $0x10,%esp
 2e8:	eb 0e                	jmp    2f8 <thread_join+0x28>
 2ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 2f0:	83 c3 01             	add    $0x1,%ebx
 2f3:	83 fb 40             	cmp    $0x40,%ebx
 2f6:	74 4c                	je     344 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 2f8:	83 3c 9d 40 0f 00 00 	cmpl   $0x1,0xf40(,%ebx,4)
 2ff:	01 
 300:	75 ee                	jne    2f0 <thread_join+0x20>
 302:	39 14 9d 40 11 00 00 	cmp    %edx,0x1140(,%ebx,4)
 309:	75 e5                	jne    2f0 <thread_join+0x20>
      free(malloc_addrs[i]);
 30b:	83 ec 0c             	sub    $0xc,%esp
 30e:	ff 34 9d 40 10 00 00 	push   0x1040(,%ebx,4)
 315:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 318:	e8 d3 05 00 00       	call   8f0 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 31d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 320:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 323:	c7 04 9d 40 10 00 00 	movl   $0x0,0x1040(,%ebx,4)
 32a:	00 00 00 00 
      stack_addrs[i] = 0;
 32e:	c7 04 9d 40 11 00 00 	movl   $0x0,0x1140(,%ebx,4)
 335:	00 00 00 00 
      inUse[i] = 0;
 339:	c7 04 9d 40 0f 00 00 	movl   $0x0,0xf40(,%ebx,4)
 340:	00 00 00 00 
    }
  }
  return threadId; 
}
 344:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 347:	c9                   	leave  
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <lock_init>:

void lock_init(lock_t *lock){
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 35c:	5d                   	pop    %ebp
 35d:	c3                   	ret    
 35e:	66 90                	xchg   %ax,%ax

00000360 <lock_acquire>:

void lock_acquire(lock_t *lock){
 360:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 361:	b9 01 00 00 00       	mov    $0x1,%ecx
 366:	89 e5                	mov    %esp,%ebp
 368:	8b 55 08             	mov    0x8(%ebp),%edx
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop
 370:	89 c8                	mov    %ecx,%eax
 372:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 375:	85 c0                	test   %eax,%eax
 377:	75 f7                	jne    370 <lock_acquire+0x10>
}
 379:	5d                   	pop    %ebp
 37a:	c3                   	ret    
 37b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <lock_release>:

void lock_release(lock_t *lock){
 380:	55                   	push   %ebp
 381:	31 c0                	xor    %eax,%eax
 383:	89 e5                	mov    %esp,%ebp
 385:	8b 55 08             	mov    0x8(%ebp),%edx
 388:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi

00000390 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 390:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 391:	31 c0                	xor    %eax,%eax
{
 393:	89 e5                	mov    %esp,%ebp
 395:	53                   	push   %ebx
 396:	8b 4d 08             	mov    0x8(%ebp),%ecx
 399:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3a7:	83 c0 01             	add    $0x1,%eax
 3aa:	84 d2                	test   %dl,%dl
 3ac:	75 f2                	jne    3a0 <strcpy+0x10>
    ;
  return os;
}
 3ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3b1:	89 c8                	mov    %ecx,%eax
 3b3:	c9                   	leave  
 3b4:	c3                   	ret    
 3b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
 3c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3ca:	0f b6 02             	movzbl (%edx),%eax
 3cd:	84 c0                	test   %al,%al
 3cf:	75 17                	jne    3e8 <strcmp+0x28>
 3d1:	eb 3a                	jmp    40d <strcmp+0x4d>
 3d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d7:	90                   	nop
 3d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3dc:	83 c2 01             	add    $0x1,%edx
 3df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3e2:	84 c0                	test   %al,%al
 3e4:	74 1a                	je     400 <strcmp+0x40>
    p++, q++;
 3e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3e8:	0f b6 19             	movzbl (%ecx),%ebx
 3eb:	38 c3                	cmp    %al,%bl
 3ed:	74 e9                	je     3d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3ef:	29 d8                	sub    %ebx,%eax
}
 3f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3f4:	c9                   	leave  
 3f5:	c3                   	ret    
 3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 400:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 404:	31 c0                	xor    %eax,%eax
 406:	29 d8                	sub    %ebx,%eax
}
 408:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 40b:	c9                   	leave  
 40c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 40d:	0f b6 19             	movzbl (%ecx),%ebx
 410:	31 c0                	xor    %eax,%eax
 412:	eb db                	jmp    3ef <strcmp+0x2f>
 414:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <strlen>:

uint
strlen(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 426:	80 3a 00             	cmpb   $0x0,(%edx)
 429:	74 15                	je     440 <strlen+0x20>
 42b:	31 c0                	xor    %eax,%eax
 42d:	8d 76 00             	lea    0x0(%esi),%esi
 430:	83 c0 01             	add    $0x1,%eax
 433:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 437:	89 c1                	mov    %eax,%ecx
 439:	75 f5                	jne    430 <strlen+0x10>
    ;
  return n;
}
 43b:	89 c8                	mov    %ecx,%eax
 43d:	5d                   	pop    %ebp
 43e:	c3                   	ret    
 43f:	90                   	nop
  for(n = 0; s[n]; n++)
 440:	31 c9                	xor    %ecx,%ecx
}
 442:	5d                   	pop    %ebp
 443:	89 c8                	mov    %ecx,%eax
 445:	c3                   	ret    
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi

00000450 <memset>:

void*
memset(void *dst, int c, uint n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 457:	8b 4d 10             	mov    0x10(%ebp),%ecx
 45a:	8b 45 0c             	mov    0xc(%ebp),%eax
 45d:	89 d7                	mov    %edx,%edi
 45f:	fc                   	cld    
 460:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 462:	8b 7d fc             	mov    -0x4(%ebp),%edi
 465:	89 d0                	mov    %edx,%eax
 467:	c9                   	leave  
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000470 <strchr>:

char*
strchr(const char *s, char c)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
 476:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 47a:	0f b6 10             	movzbl (%eax),%edx
 47d:	84 d2                	test   %dl,%dl
 47f:	75 12                	jne    493 <strchr+0x23>
 481:	eb 1d                	jmp    4a0 <strchr+0x30>
 483:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 487:	90                   	nop
 488:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 48c:	83 c0 01             	add    $0x1,%eax
 48f:	84 d2                	test   %dl,%dl
 491:	74 0d                	je     4a0 <strchr+0x30>
    if(*s == c)
 493:	38 d1                	cmp    %dl,%cl
 495:	75 f1                	jne    488 <strchr+0x18>
      return (char*)s;
  return 0;
}
 497:	5d                   	pop    %ebp
 498:	c3                   	ret    
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4a0:	31 c0                	xor    %eax,%eax
}
 4a2:	5d                   	pop    %ebp
 4a3:	c3                   	ret    
 4a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4af:	90                   	nop

000004b0 <gets>:

char*
gets(char *buf, int max)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4b9:	31 db                	xor    %ebx,%ebx
{
 4bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4be:	eb 27                	jmp    4e7 <gets+0x37>
    cc = read(0, &c, 1);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	6a 01                	push   $0x1
 4c5:	57                   	push   %edi
 4c6:	6a 00                	push   $0x0
 4c8:	e8 2e 01 00 00       	call   5fb <read>
    if(cc < 1)
 4cd:	83 c4 10             	add    $0x10,%esp
 4d0:	85 c0                	test   %eax,%eax
 4d2:	7e 1d                	jle    4f1 <gets+0x41>
      break;
    buf[i++] = c;
 4d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4d8:	8b 55 08             	mov    0x8(%ebp),%edx
 4db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4df:	3c 0a                	cmp    $0xa,%al
 4e1:	74 1d                	je     500 <gets+0x50>
 4e3:	3c 0d                	cmp    $0xd,%al
 4e5:	74 19                	je     500 <gets+0x50>
  for(i=0; i+1 < max; ){
 4e7:	89 de                	mov    %ebx,%esi
 4e9:	83 c3 01             	add    $0x1,%ebx
 4ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ef:	7c cf                	jl     4c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4f1:	8b 45 08             	mov    0x8(%ebp),%eax
 4f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4fb:	5b                   	pop    %ebx
 4fc:	5e                   	pop    %esi
 4fd:	5f                   	pop    %edi
 4fe:	5d                   	pop    %ebp
 4ff:	c3                   	ret    
  buf[i] = '\0';
 500:	8b 45 08             	mov    0x8(%ebp),%eax
 503:	89 de                	mov    %ebx,%esi
 505:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 509:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50c:	5b                   	pop    %ebx
 50d:	5e                   	pop    %esi
 50e:	5f                   	pop    %edi
 50f:	5d                   	pop    %ebp
 510:	c3                   	ret    
 511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 518:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51f:	90                   	nop

00000520 <stat>:

int
stat(const char *n, struct stat *st)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 525:	83 ec 08             	sub    $0x8,%esp
 528:	6a 00                	push   $0x0
 52a:	ff 75 08             	push   0x8(%ebp)
 52d:	e8 f1 00 00 00       	call   623 <open>
  if(fd < 0)
 532:	83 c4 10             	add    $0x10,%esp
 535:	85 c0                	test   %eax,%eax
 537:	78 27                	js     560 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 539:	83 ec 08             	sub    $0x8,%esp
 53c:	ff 75 0c             	push   0xc(%ebp)
 53f:	89 c3                	mov    %eax,%ebx
 541:	50                   	push   %eax
 542:	e8 f4 00 00 00       	call   63b <fstat>
  close(fd);
 547:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 54a:	89 c6                	mov    %eax,%esi
  close(fd);
 54c:	e8 ba 00 00 00       	call   60b <close>
  return r;
 551:	83 c4 10             	add    $0x10,%esp
}
 554:	8d 65 f8             	lea    -0x8(%ebp),%esp
 557:	89 f0                	mov    %esi,%eax
 559:	5b                   	pop    %ebx
 55a:	5e                   	pop    %esi
 55b:	5d                   	pop    %ebp
 55c:	c3                   	ret    
 55d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 560:	be ff ff ff ff       	mov    $0xffffffff,%esi
 565:	eb ed                	jmp    554 <stat+0x34>
 567:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56e:	66 90                	xchg   %ax,%ax

00000570 <atoi>:

int
atoi(const char *s)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	53                   	push   %ebx
 574:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 577:	0f be 02             	movsbl (%edx),%eax
 57a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 57d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 580:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 585:	77 1e                	ja     5a5 <atoi+0x35>
 587:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 590:	83 c2 01             	add    $0x1,%edx
 593:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 596:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 59a:	0f be 02             	movsbl (%edx),%eax
 59d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5a0:	80 fb 09             	cmp    $0x9,%bl
 5a3:	76 eb                	jbe    590 <atoi+0x20>
  return n;
}
 5a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5a8:	89 c8                	mov    %ecx,%eax
 5aa:	c9                   	leave  
 5ab:	c3                   	ret    
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	8b 45 10             	mov    0x10(%ebp),%eax
 5b7:	8b 55 08             	mov    0x8(%ebp),%edx
 5ba:	56                   	push   %esi
 5bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5be:	85 c0                	test   %eax,%eax
 5c0:	7e 13                	jle    5d5 <memmove+0x25>
 5c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5c4:	89 d7                	mov    %edx,%edi
 5c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5d1:	39 f8                	cmp    %edi,%eax
 5d3:	75 fb                	jne    5d0 <memmove+0x20>
  return vdst;
}
 5d5:	5e                   	pop    %esi
 5d6:	89 d0                	mov    %edx,%eax
 5d8:	5f                   	pop    %edi
 5d9:	5d                   	pop    %ebp
 5da:	c3                   	ret    

000005db <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5db:	b8 01 00 00 00       	mov    $0x1,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret    

000005e3 <exit>:
SYSCALL(exit)
 5e3:	b8 02 00 00 00       	mov    $0x2,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret    

000005eb <wait>:
SYSCALL(wait)
 5eb:	b8 03 00 00 00       	mov    $0x3,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    

000005f3 <pipe>:
SYSCALL(pipe)
 5f3:	b8 04 00 00 00       	mov    $0x4,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret    

000005fb <read>:
SYSCALL(read)
 5fb:	b8 05 00 00 00       	mov    $0x5,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret    

00000603 <write>:
SYSCALL(write)
 603:	b8 10 00 00 00       	mov    $0x10,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret    

0000060b <close>:
SYSCALL(close)
 60b:	b8 15 00 00 00       	mov    $0x15,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <kill>:
SYSCALL(kill)
 613:	b8 06 00 00 00       	mov    $0x6,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <exec>:
SYSCALL(exec)
 61b:	b8 07 00 00 00       	mov    $0x7,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <open>:
SYSCALL(open)
 623:	b8 0f 00 00 00       	mov    $0xf,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <mknod>:
SYSCALL(mknod)
 62b:	b8 11 00 00 00       	mov    $0x11,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <unlink>:
SYSCALL(unlink)
 633:	b8 12 00 00 00       	mov    $0x12,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <fstat>:
SYSCALL(fstat)
 63b:	b8 08 00 00 00       	mov    $0x8,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <link>:
SYSCALL(link)
 643:	b8 13 00 00 00       	mov    $0x13,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <mkdir>:
SYSCALL(mkdir)
 64b:	b8 14 00 00 00       	mov    $0x14,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <chdir>:
SYSCALL(chdir)
 653:	b8 09 00 00 00       	mov    $0x9,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <dup>:
SYSCALL(dup)
 65b:	b8 0a 00 00 00       	mov    $0xa,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <getpid>:
SYSCALL(getpid)
 663:	b8 0b 00 00 00       	mov    $0xb,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <sbrk>:
SYSCALL(sbrk)
 66b:	b8 0c 00 00 00       	mov    $0xc,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <sleep>:
SYSCALL(sleep)
 673:	b8 0d 00 00 00       	mov    $0xd,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <uptime>:
SYSCALL(uptime)
 67b:	b8 0e 00 00 00       	mov    $0xe,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <clone>:
SYSCALL(clone)
 683:	b8 16 00 00 00       	mov    $0x16,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <join>:
SYSCALL(join)
 68b:	b8 17 00 00 00       	mov    $0x17,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    
 693:	66 90                	xchg   %ax,%ax
 695:	66 90                	xchg   %ax,%ax
 697:	66 90                	xchg   %ax,%ax
 699:	66 90                	xchg   %ax,%ax
 69b:	66 90                	xchg   %ax,%ax
 69d:	66 90                	xchg   %ax,%ax
 69f:	90                   	nop

000006a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
 6a6:	83 ec 3c             	sub    $0x3c,%esp
 6a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6ac:	89 d1                	mov    %edx,%ecx
{
 6ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6b1:	85 d2                	test   %edx,%edx
 6b3:	0f 89 7f 00 00 00    	jns    738 <printint+0x98>
 6b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6bd:	74 79                	je     738 <printint+0x98>
    neg = 1;
 6bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6c8:	31 db                	xor    %ebx,%ebx
 6ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6d0:	89 c8                	mov    %ecx,%eax
 6d2:	31 d2                	xor    %edx,%edx
 6d4:	89 cf                	mov    %ecx,%edi
 6d6:	f7 75 c4             	divl   -0x3c(%ebp)
 6d9:	0f b6 92 80 0b 00 00 	movzbl 0xb80(%edx),%edx
 6e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6e3:	89 d8                	mov    %ebx,%eax
 6e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6f1:	76 dd                	jbe    6d0 <printint+0x30>
  if(neg)
 6f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6f6:	85 c9                	test   %ecx,%ecx
 6f8:	74 0c                	je     706 <printint+0x66>
    buf[i++] = '-';
 6fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 701:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 706:	8b 7d b8             	mov    -0x48(%ebp),%edi
 709:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 70d:	eb 07                	jmp    716 <printint+0x76>
 70f:	90                   	nop
    putc(fd, buf[i]);
 710:	0f b6 13             	movzbl (%ebx),%edx
 713:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 716:	83 ec 04             	sub    $0x4,%esp
 719:	88 55 d7             	mov    %dl,-0x29(%ebp)
 71c:	6a 01                	push   $0x1
 71e:	56                   	push   %esi
 71f:	57                   	push   %edi
 720:	e8 de fe ff ff       	call   603 <write>
  while(--i >= 0)
 725:	83 c4 10             	add    $0x10,%esp
 728:	39 de                	cmp    %ebx,%esi
 72a:	75 e4                	jne    710 <printint+0x70>
}
 72c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 72f:	5b                   	pop    %ebx
 730:	5e                   	pop    %esi
 731:	5f                   	pop    %edi
 732:	5d                   	pop    %ebp
 733:	c3                   	ret    
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 738:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 73f:	eb 87                	jmp    6c8 <printint+0x28>
 741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop

00000750 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 759:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 75c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 75f:	0f b6 13             	movzbl (%ebx),%edx
 762:	84 d2                	test   %dl,%dl
 764:	74 6a                	je     7d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 766:	8d 45 10             	lea    0x10(%ebp),%eax
 769:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 76c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 76f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 771:	89 45 d0             	mov    %eax,-0x30(%ebp)
 774:	eb 36                	jmp    7ac <printf+0x5c>
 776:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77d:	8d 76 00             	lea    0x0(%esi),%esi
 780:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 783:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 788:	83 f8 25             	cmp    $0x25,%eax
 78b:	74 15                	je     7a2 <printf+0x52>
  write(fd, &c, 1);
 78d:	83 ec 04             	sub    $0x4,%esp
 790:	88 55 e7             	mov    %dl,-0x19(%ebp)
 793:	6a 01                	push   $0x1
 795:	57                   	push   %edi
 796:	56                   	push   %esi
 797:	e8 67 fe ff ff       	call   603 <write>
 79c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 79f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7a2:	0f b6 13             	movzbl (%ebx),%edx
 7a5:	83 c3 01             	add    $0x1,%ebx
 7a8:	84 d2                	test   %dl,%dl
 7aa:	74 24                	je     7d0 <printf+0x80>
    c = fmt[i] & 0xff;
 7ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7af:	85 c9                	test   %ecx,%ecx
 7b1:	74 cd                	je     780 <printf+0x30>
      }
    } else if(state == '%'){
 7b3:	83 f9 25             	cmp    $0x25,%ecx
 7b6:	75 ea                	jne    7a2 <printf+0x52>
      if(c == 'd'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	0f 84 07 01 00 00    	je     8c8 <printf+0x178>
 7c1:	83 e8 63             	sub    $0x63,%eax
 7c4:	83 f8 15             	cmp    $0x15,%eax
 7c7:	77 17                	ja     7e0 <printf+0x90>
 7c9:	ff 24 85 28 0b 00 00 	jmp    *0xb28(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7d3:	5b                   	pop    %ebx
 7d4:	5e                   	pop    %esi
 7d5:	5f                   	pop    %edi
 7d6:	5d                   	pop    %ebp
 7d7:	c3                   	ret    
 7d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7df:	90                   	nop
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7e6:	6a 01                	push   $0x1
 7e8:	57                   	push   %edi
 7e9:	56                   	push   %esi
 7ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ee:	e8 10 fe ff ff       	call   603 <write>
        putc(fd, c);
 7f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7f7:	83 c4 0c             	add    $0xc,%esp
 7fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7fd:	6a 01                	push   $0x1
 7ff:	57                   	push   %edi
 800:	56                   	push   %esi
 801:	e8 fd fd ff ff       	call   603 <write>
        putc(fd, c);
 806:	83 c4 10             	add    $0x10,%esp
      state = 0;
 809:	31 c9                	xor    %ecx,%ecx
 80b:	eb 95                	jmp    7a2 <printf+0x52>
 80d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 10 00 00 00       	mov    $0x10,%ecx
 818:	6a 00                	push   $0x0
 81a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 81d:	8b 10                	mov    (%eax),%edx
 81f:	89 f0                	mov    %esi,%eax
 821:	e8 7a fe ff ff       	call   6a0 <printint>
        ap++;
 826:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 82a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 82d:	31 c9                	xor    %ecx,%ecx
 82f:	e9 6e ff ff ff       	jmp    7a2 <printf+0x52>
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 838:	8b 45 d0             	mov    -0x30(%ebp),%eax
 83b:	8b 10                	mov    (%eax),%edx
        ap++;
 83d:	83 c0 04             	add    $0x4,%eax
 840:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 843:	85 d2                	test   %edx,%edx
 845:	0f 84 8d 00 00 00    	je     8d8 <printf+0x188>
        while(*s != 0){
 84b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 84e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 850:	84 c0                	test   %al,%al
 852:	0f 84 4a ff ff ff    	je     7a2 <printf+0x52>
 858:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 85b:	89 d3                	mov    %edx,%ebx
 85d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
          s++;
 863:	83 c3 01             	add    $0x1,%ebx
 866:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 869:	6a 01                	push   $0x1
 86b:	57                   	push   %edi
 86c:	56                   	push   %esi
 86d:	e8 91 fd ff ff       	call   603 <write>
        while(*s != 0){
 872:	0f b6 03             	movzbl (%ebx),%eax
 875:	83 c4 10             	add    $0x10,%esp
 878:	84 c0                	test   %al,%al
 87a:	75 e4                	jne    860 <printf+0x110>
      state = 0;
 87c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 87f:	31 c9                	xor    %ecx,%ecx
 881:	e9 1c ff ff ff       	jmp    7a2 <printf+0x52>
 886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	b9 0a 00 00 00       	mov    $0xa,%ecx
 898:	6a 01                	push   $0x1
 89a:	e9 7b ff ff ff       	jmp    81a <printf+0xca>
 89f:	90                   	nop
        putc(fd, *ap);
 8a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8a8:	6a 01                	push   $0x1
 8aa:	57                   	push   %edi
 8ab:	56                   	push   %esi
        putc(fd, *ap);
 8ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8af:	e8 4f fd ff ff       	call   603 <write>
        ap++;
 8b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8bb:	31 c9                	xor    %ecx,%ecx
 8bd:	e9 e0 fe ff ff       	jmp    7a2 <printf+0x52>
 8c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8cb:	83 ec 04             	sub    $0x4,%esp
 8ce:	e9 2a ff ff ff       	jmp    7fd <printf+0xad>
 8d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8d7:	90                   	nop
          s = "(null)";
 8d8:	ba 1f 0b 00 00       	mov    $0xb1f,%edx
        while(*s != 0){
 8dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8e0:	b8 28 00 00 00       	mov    $0x28,%eax
 8e5:	89 d3                	mov    %edx,%ebx
 8e7:	e9 74 ff ff ff       	jmp    860 <printf+0x110>
 8ec:	66 90                	xchg   %ax,%ax
 8ee:	66 90                	xchg   %ax,%ax

000008f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f1:	a1 40 12 00 00       	mov    0x1240,%eax
{
 8f6:	89 e5                	mov    %esp,%ebp
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	53                   	push   %ebx
 8fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 908:	89 c2                	mov    %eax,%edx
 90a:	8b 00                	mov    (%eax),%eax
 90c:	39 ca                	cmp    %ecx,%edx
 90e:	73 30                	jae    940 <free+0x50>
 910:	39 c1                	cmp    %eax,%ecx
 912:	72 04                	jb     918 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 914:	39 c2                	cmp    %eax,%edx
 916:	72 f0                	jb     908 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 918:	8b 73 fc             	mov    -0x4(%ebx),%esi
 91b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 91e:	39 f8                	cmp    %edi,%eax
 920:	74 30                	je     952 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 922:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 925:	8b 42 04             	mov    0x4(%edx),%eax
 928:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 92b:	39 f1                	cmp    %esi,%ecx
 92d:	74 3a                	je     969 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 92f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 931:	5b                   	pop    %ebx
  freep = p;
 932:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 938:	5e                   	pop    %esi
 939:	5f                   	pop    %edi
 93a:	5d                   	pop    %ebp
 93b:	c3                   	ret    
 93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 940:	39 c2                	cmp    %eax,%edx
 942:	72 c4                	jb     908 <free+0x18>
 944:	39 c1                	cmp    %eax,%ecx
 946:	73 c0                	jae    908 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	75 d0                	jne    922 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 952:	03 70 04             	add    0x4(%eax),%esi
 955:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 958:	8b 02                	mov    (%edx),%eax
 95a:	8b 00                	mov    (%eax),%eax
 95c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 95f:	8b 42 04             	mov    0x4(%edx),%eax
 962:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 965:	39 f1                	cmp    %esi,%ecx
 967:	75 c6                	jne    92f <free+0x3f>
    p->s.size += bp->s.size;
 969:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 96c:	89 15 40 12 00 00    	mov    %edx,0x1240
    p->s.size += bp->s.size;
 972:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 975:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 978:	89 0a                	mov    %ecx,(%edx)
}
 97a:	5b                   	pop    %ebx
 97b:	5e                   	pop    %esi
 97c:	5f                   	pop    %edi
 97d:	5d                   	pop    %ebp
 97e:	c3                   	ret    
 97f:	90                   	nop

00000980 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
 985:	53                   	push   %ebx
 986:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 989:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 98c:	8b 3d 40 12 00 00    	mov    0x1240,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 992:	8d 70 07             	lea    0x7(%eax),%esi
 995:	c1 ee 03             	shr    $0x3,%esi
 998:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 99b:	85 ff                	test   %edi,%edi
 99d:	0f 84 9d 00 00 00    	je     a40 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9a5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9a8:	39 f1                	cmp    %esi,%ecx
 9aa:	73 6a                	jae    a16 <malloc+0x96>
 9ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9b1:	39 de                	cmp    %ebx,%esi
 9b3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9b6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9c0:	eb 17                	jmp    9d9 <malloc+0x59>
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ca:	8b 48 04             	mov    0x4(%eax),%ecx
 9cd:	39 f1                	cmp    %esi,%ecx
 9cf:	73 4f                	jae    a20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9d1:	8b 3d 40 12 00 00    	mov    0x1240,%edi
 9d7:	89 c2                	mov    %eax,%edx
 9d9:	39 d7                	cmp    %edx,%edi
 9db:	75 eb                	jne    9c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9dd:	83 ec 0c             	sub    $0xc,%esp
 9e0:	ff 75 e4             	push   -0x1c(%ebp)
 9e3:	e8 83 fc ff ff       	call   66b <sbrk>
  if(p == (char*)-1)
 9e8:	83 c4 10             	add    $0x10,%esp
 9eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ee:	74 1c                	je     a0c <malloc+0x8c>
  hp->s.size = nu;
 9f0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9f3:	83 ec 0c             	sub    $0xc,%esp
 9f6:	83 c0 08             	add    $0x8,%eax
 9f9:	50                   	push   %eax
 9fa:	e8 f1 fe ff ff       	call   8f0 <free>
  return freep;
 9ff:	8b 15 40 12 00 00    	mov    0x1240,%edx
      if((p = morecore(nunits)) == 0)
 a05:	83 c4 10             	add    $0x10,%esp
 a08:	85 d2                	test   %edx,%edx
 a0a:	75 bc                	jne    9c8 <malloc+0x48>
        return 0;
  }
}
 a0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a0f:	31 c0                	xor    %eax,%eax
}
 a11:	5b                   	pop    %ebx
 a12:	5e                   	pop    %esi
 a13:	5f                   	pop    %edi
 a14:	5d                   	pop    %ebp
 a15:	c3                   	ret    
    if(p->s.size >= nunits){
 a16:	89 d0                	mov    %edx,%eax
 a18:	89 fa                	mov    %edi,%edx
 a1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a20:	39 ce                	cmp    %ecx,%esi
 a22:	74 4c                	je     a70 <malloc+0xf0>
        p->s.size -= nunits;
 a24:	29 f1                	sub    %esi,%ecx
 a26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a2c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a2f:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 a35:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a38:	83 c0 08             	add    $0x8,%eax
}
 a3b:	5b                   	pop    %ebx
 a3c:	5e                   	pop    %esi
 a3d:	5f                   	pop    %edi
 a3e:	5d                   	pop    %ebp
 a3f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a40:	c7 05 40 12 00 00 44 	movl   $0x1244,0x1240
 a47:	12 00 00 
    base.s.size = 0;
 a4a:	bf 44 12 00 00       	mov    $0x1244,%edi
    base.s.ptr = freep = prevp = &base;
 a4f:	c7 05 44 12 00 00 44 	movl   $0x1244,0x1244
 a56:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a59:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a5b:	c7 05 48 12 00 00 00 	movl   $0x0,0x1248
 a62:	00 00 00 
    if(p->s.size >= nunits){
 a65:	e9 42 ff ff ff       	jmp    9ac <malloc+0x2c>
 a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a70:	8b 08                	mov    (%eax),%ecx
 a72:	89 0a                	mov    %ecx,(%edx)
 a74:	eb b9                	jmp    a2f <malloc+0xaf>
