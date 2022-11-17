
_test_6:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
   ppid = getpid();
  14:	e8 9a 06 00 00       	call   6b3 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 a0 0f 00 00       	mov    %eax,0xfa0
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 a5 09 00 00       	call   9d0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 d5 00 00 00    	je     10b <main+0x10b>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c7                	mov    %eax,%edi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   else
     stack = p;

   int arg1 = 42, arg2 = 24;
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  4b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 e0             	lea    -0x20(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 d0 01 00 00       	push   $0x1d0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 e0 2a 00 00 00 	movl   $0x2a,-0x20(%ebp)
  60:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 67 06 00 00       	call   6d3 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 79                	jle    ee <main+0xee>

   sbrk(PGSIZE);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 00 10 00 00       	push   $0x1000
  7d:	e8 39 06 00 00       	call   6bb <sbrk>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
  82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  89:	e8 2d 06 00 00       	call   6bb <sbrk>
  8e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   assert(join((void**)((uint)join_stack + 2)) == -1);
  91:	83 e8 02             	sub    $0x2,%eax
  94:	89 04 24             	mov    %eax,(%esp)
  97:	e8 3f 06 00 00       	call   6db <join>
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	83 c0 01             	add    $0x1,%eax
  a2:	0f 84 80 00 00 00    	je     128 <main+0x128>
  a8:	6a 29                	push   $0x29
  aa:	68 c8 0a 00 00       	push   $0xac8
  af:	68 d1 0a 00 00       	push   $0xad1
  b4:	6a 01                	push   $0x1
  b6:	e8 e5 06 00 00       	call   7a0 <printf>
  bb:	83 c4 0c             	add    $0xc,%esp
  be:	68 80 0b 00 00       	push   $0xb80
   assert(clone_pid > 0);
  c3:	68 e4 0a 00 00       	push   $0xae4
  c8:	6a 01                	push   $0x1
  ca:	e8 d1 06 00 00       	call   7a0 <printf>
  cf:	5a                   	pop    %edx
  d0:	59                   	pop    %ecx
  d1:	68 f8 0a 00 00       	push   $0xaf8
  d6:	6a 01                	push   $0x1
  d8:	e8 c3 06 00 00       	call   7a0 <printf>
  dd:	5b                   	pop    %ebx
  de:	ff 35 a0 0f 00 00    	push   0xfa0
  e4:	e8 7a 05 00 00       	call   663 <kill>
  e9:	e8 45 05 00 00       	call   633 <exit>
  ee:	6a 25                	push   $0x25
  f0:	68 c8 0a 00 00       	push   $0xac8
  f5:	68 d1 0a 00 00       	push   $0xad1
  fa:	6a 01                	push   $0x1
  fc:	e8 9f 06 00 00       	call   7a0 <printf>
 101:	83 c4 0c             	add    $0xc,%esp
 104:	68 26 0b 00 00       	push   $0xb26
 109:	eb b8                	jmp    c3 <main+0xc3>
   assert(p != NULL);
 10b:	6a 1d                	push   $0x1d
 10d:	68 c8 0a 00 00       	push   $0xac8
 112:	68 d1 0a 00 00       	push   $0xad1
 117:	6a 01                	push   $0x1
 119:	e8 82 06 00 00       	call   7a0 <printf>
 11e:	83 c4 0c             	add    $0xc,%esp
 121:	68 1c 0b 00 00       	push   $0xb1c
 126:	eb 9b                	jmp    c3 <main+0xc3>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   assert(join(join_stack) == clone_pid);
 12b:	83 ec 0c             	sub    $0xc,%esp
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 12e:	83 e8 04             	sub    $0x4,%eax
   assert(join(join_stack) == clone_pid);
 131:	50                   	push   %eax
 132:	e8 a4 05 00 00       	call   6db <join>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	39 f0                	cmp    %esi,%eax
 13c:	74 20                	je     15e <main+0x15e>
 13e:	6a 2a                	push   $0x2a
 140:	68 c8 0a 00 00       	push   $0xac8
 145:	68 d1 0a 00 00       	push   $0xad1
 14a:	6a 01                	push   $0x1
 14c:	e8 4f 06 00 00       	call   7a0 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 34 0b 00 00       	push   $0xb34
 159:	e9 65 ff ff ff       	jmp    c3 <main+0xc3>
   assert(stack == *join_stack);
 15e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 161:	39 78 fc             	cmp    %edi,-0x4(%eax)
 164:	74 20                	je     186 <main+0x186>
 166:	6a 2b                	push   $0x2b
 168:	68 c8 0a 00 00       	push   $0xac8
 16d:	68 d1 0a 00 00       	push   $0xad1
 172:	6a 01                	push   $0x1
 174:	e8 27 06 00 00       	call   7a0 <printf>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	68 52 0b 00 00       	push   $0xb52
 181:	e9 3d ff ff ff       	jmp    c3 <main+0xc3>
   assert(global == 2);
 186:	83 3d 84 0f 00 00 02 	cmpl   $0x2,0xf84
 18d:	74 20                	je     1af <main+0x1af>
 18f:	6a 2c                	push   $0x2c
 191:	68 c8 0a 00 00       	push   $0xac8
 196:	68 d1 0a 00 00       	push   $0xad1
 19b:	6a 01                	push   $0x1
 19d:	e8 fe 05 00 00       	call   7a0 <printf>
 1a2:	83 c4 0c             	add    $0xc,%esp
 1a5:	68 67 0b 00 00       	push   $0xb67
 1aa:	e9 14 ff ff ff       	jmp    c3 <main+0xc3>

   printf(1, "TEST PASSED\n");
 1af:	50                   	push   %eax
 1b0:	50                   	push   %eax
 1b1:	68 73 0b 00 00       	push   $0xb73
 1b6:	6a 01                	push   $0x1
 1b8:	e8 e3 05 00 00       	call   7a0 <printf>
   free(p);
 1bd:	89 1c 24             	mov    %ebx,(%esp)
 1c0:	e8 7b 07 00 00       	call   940 <free>
   exit();
 1c5:	e8 69 04 00 00       	call   633 <exit>
 1ca:	66 90                	xchg   %ax,%ax
 1cc:	66 90                	xchg   %ax,%ax
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1db:	8b 45 08             	mov    0x8(%ebp),%eax
 1de:	83 38 2a             	cmpl   $0x2a,(%eax)
 1e1:	75 75                	jne    258 <worker+0x88>
   assert(tmp2 == 24);
 1e3:	83 fa 18             	cmp    $0x18,%edx
 1e6:	75 2a                	jne    212 <worker+0x42>
   assert(global == 1);
 1e8:	83 3d 84 0f 00 00 01 	cmpl   $0x1,0xf84
 1ef:	0f 84 80 00 00 00    	je     275 <worker+0xa5>
 1f5:	6a 39                	push   $0x39
 1f7:	68 c8 0a 00 00       	push   $0xac8
 1fc:	68 d1 0a 00 00       	push   $0xad1
 201:	6a 01                	push   $0x1
 203:	e8 98 05 00 00       	call   7a0 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 10 0b 00 00       	push   $0xb10
 210:	eb 1b                	jmp    22d <worker+0x5d>
   assert(tmp2 == 24);
 212:	6a 38                	push   $0x38
 214:	68 c8 0a 00 00       	push   $0xac8
 219:	68 d1 0a 00 00       	push   $0xad1
 21e:	6a 01                	push   $0x1
 220:	e8 7b 05 00 00       	call   7a0 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 05 0b 00 00       	push   $0xb05
 22d:	68 e4 0a 00 00       	push   $0xae4
 232:	6a 01                	push   $0x1
 234:	e8 67 05 00 00       	call   7a0 <printf>
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	68 f8 0a 00 00       	push   $0xaf8
 240:	6a 01                	push   $0x1
 242:	e8 59 05 00 00       	call   7a0 <printf>
 247:	59                   	pop    %ecx
 248:	ff 35 a0 0f 00 00    	push   0xfa0
 24e:	e8 10 04 00 00       	call   663 <kill>
 253:	e8 db 03 00 00       	call   633 <exit>
   assert(tmp1 == 42);
 258:	6a 37                	push   $0x37
 25a:	68 c8 0a 00 00       	push   $0xac8
 25f:	68 d1 0a 00 00       	push   $0xad1
 264:	6a 01                	push   $0x1
 266:	e8 35 05 00 00       	call   7a0 <printf>
 26b:	83 c4 0c             	add    $0xc,%esp
 26e:	68 d9 0a 00 00       	push   $0xad9
 273:	eb b8                	jmp    22d <worker+0x5d>
   global++;
 275:	c7 05 84 0f 00 00 02 	movl   $0x2,0xf84
 27c:	00 00 00 
   exit();
 27f:	e8 af 03 00 00       	call   633 <exit>
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 297:	a1 88 0f 00 00       	mov    0xf88,%eax
 29c:	01 c0                	add    %eax,%eax
 29e:	50                   	push   %eax
 29f:	e8 2c 07 00 00       	call   9d0 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 2a4:	8b 0d 88 0f 00 00    	mov    0xf88,%ecx
 2aa:	31 d2                	xor    %edx,%edx
 2ac:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 2af:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 2b1:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 2b3:	89 c8                	mov    %ecx,%eax
 2b5:	01 d9                	add    %ebx,%ecx
 2b7:	29 d0                	sub    %edx,%eax
 2b9:	01 d8                	add    %ebx,%eax
 2bb:	85 d2                	test   %edx,%edx
 2bd:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 2c0:	31 d2                	xor    %edx,%edx
 2c2:	eb 0c                	jmp    2d0 <thread_create+0x40>
 2c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c8:	83 c2 01             	add    $0x1,%edx
 2cb:	83 fa 40             	cmp    $0x40,%edx
 2ce:	74 2f                	je     2ff <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 2d0:	8b 04 95 c0 11 00 00 	mov    0x11c0(,%edx,4),%eax
 2d7:	85 c0                	test   %eax,%eax
 2d9:	75 ed                	jne    2c8 <thread_create+0x38>
 2db:	8b 04 95 c0 0f 00 00 	mov    0xfc0(,%edx,4),%eax
 2e2:	85 c0                	test   %eax,%eax
 2e4:	75 e2                	jne    2c8 <thread_create+0x38>
      inUse[i] = 1;
 2e6:	c7 04 95 c0 0f 00 00 	movl   $0x1,0xfc0(,%edx,4)
 2ed:	01 00 00 00 
      malloc_addrs[i] = original;
 2f1:	89 1c 95 c0 10 00 00 	mov    %ebx,0x10c0(,%edx,4)
      stack_addrs[i] = stack;
 2f8:	89 0c 95 c0 11 00 00 	mov    %ecx,0x11c0(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 2ff:	51                   	push   %ecx
 300:	ff 75 10             	push   0x10(%ebp)
 303:	ff 75 0c             	push   0xc(%ebp)
 306:	ff 75 08             	push   0x8(%ebp)
 309:	e8 c5 03 00 00       	call   6d3 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 30e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 311:	c9                   	leave  
 312:	c3                   	ret    
 313:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000320 <thread_join>:

int 
thread_join()
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 324:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 326:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 329:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 32c:	50                   	push   %eax
 32d:	e8 a9 03 00 00       	call   6db <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 332:	8b 55 f4             	mov    -0xc(%ebp),%edx
 335:	83 c4 10             	add    $0x10,%esp
 338:	eb 0e                	jmp    348 <thread_join+0x28>
 33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 340:	83 c3 01             	add    $0x1,%ebx
 343:	83 fb 40             	cmp    $0x40,%ebx
 346:	74 4c                	je     394 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 348:	83 3c 9d c0 0f 00 00 	cmpl   $0x1,0xfc0(,%ebx,4)
 34f:	01 
 350:	75 ee                	jne    340 <thread_join+0x20>
 352:	39 14 9d c0 11 00 00 	cmp    %edx,0x11c0(,%ebx,4)
 359:	75 e5                	jne    340 <thread_join+0x20>
      free(malloc_addrs[i]);
 35b:	83 ec 0c             	sub    $0xc,%esp
 35e:	ff 34 9d c0 10 00 00 	push   0x10c0(,%ebx,4)
 365:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 368:	e8 d3 05 00 00       	call   940 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 36d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 370:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 373:	c7 04 9d c0 10 00 00 	movl   $0x0,0x10c0(,%ebx,4)
 37a:	00 00 00 00 
      stack_addrs[i] = 0;
 37e:	c7 04 9d c0 11 00 00 	movl   $0x0,0x11c0(,%ebx,4)
 385:	00 00 00 00 
      inUse[i] = 0;
 389:	c7 04 9d c0 0f 00 00 	movl   $0x0,0xfc0(,%ebx,4)
 390:	00 00 00 00 
    }
  }
  return threadId; 
}
 394:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 397:	c9                   	leave  
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <lock_init>:

void lock_init(lock_t *lock){
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3ac:	5d                   	pop    %ebp
 3ad:	c3                   	ret    
 3ae:	66 90                	xchg   %ax,%ax

000003b0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 3b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 3b6:	89 e5                	mov    %esp,%ebp
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop
 3c0:	89 c8                	mov    %ecx,%eax
 3c2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 3c5:	85 c0                	test   %eax,%eax
 3c7:	75 f7                	jne    3c0 <lock_acquire+0x10>
}
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret    
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <lock_release>:

void lock_release(lock_t *lock){
 3d0:	55                   	push   %ebp
 3d1:	31 c0                	xor    %eax,%eax
 3d3:	89 e5                	mov    %esp,%ebp
 3d5:	8b 55 08             	mov    0x8(%ebp),%edx
 3d8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	8d 76 00             	lea    0x0(%esi),%esi

000003e0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 3e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3e1:	31 c0                	xor    %eax,%eax
{
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	53                   	push   %ebx
 3e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3f7:	83 c0 01             	add    $0x1,%eax
 3fa:	84 d2                	test   %dl,%dl
 3fc:	75 f2                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 3fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 401:	89 c8                	mov    %ecx,%eax
 403:	c9                   	leave  
 404:	c3                   	ret    
 405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41a:	0f b6 02             	movzbl (%edx),%eax
 41d:	84 c0                	test   %al,%al
 41f:	75 17                	jne    438 <strcmp+0x28>
 421:	eb 3a                	jmp    45d <strcmp+0x4d>
 423:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 427:	90                   	nop
 428:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 42c:	83 c2 01             	add    $0x1,%edx
 42f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 432:	84 c0                	test   %al,%al
 434:	74 1a                	je     450 <strcmp+0x40>
    p++, q++;
 436:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 438:	0f b6 19             	movzbl (%ecx),%ebx
 43b:	38 c3                	cmp    %al,%bl
 43d:	74 e9                	je     428 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 43f:	29 d8                	sub    %ebx,%eax
}
 441:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 444:	c9                   	leave  
 445:	c3                   	ret    
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 450:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 454:	31 c0                	xor    %eax,%eax
 456:	29 d8                	sub    %ebx,%eax
}
 458:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 45b:	c9                   	leave  
 45c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 45d:	0f b6 19             	movzbl (%ecx),%ebx
 460:	31 c0                	xor    %eax,%eax
 462:	eb db                	jmp    43f <strcmp+0x2f>
 464:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <strlen>:

uint
strlen(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 476:	80 3a 00             	cmpb   $0x0,(%edx)
 479:	74 15                	je     490 <strlen+0x20>
 47b:	31 c0                	xor    %eax,%eax
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	83 c0 01             	add    $0x1,%eax
 483:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 487:	89 c1                	mov    %eax,%ecx
 489:	75 f5                	jne    480 <strlen+0x10>
    ;
  return n;
}
 48b:	89 c8                	mov    %ecx,%eax
 48d:	5d                   	pop    %ebp
 48e:	c3                   	ret    
 48f:	90                   	nop
  for(n = 0; s[n]; n++)
 490:	31 c9                	xor    %ecx,%ecx
}
 492:	5d                   	pop    %ebp
 493:	89 c8                	mov    %ecx,%eax
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 4a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ad:	89 d7                	mov    %edx,%edi
 4af:	fc                   	cld    
 4b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4b5:	89 d0                	mov    %edx,%eax
 4b7:	c9                   	leave  
 4b8:	c3                   	ret    
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <strchr>:

char*
strchr(const char *s, char c)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4ca:	0f b6 10             	movzbl (%eax),%edx
 4cd:	84 d2                	test   %dl,%dl
 4cf:	75 12                	jne    4e3 <strchr+0x23>
 4d1:	eb 1d                	jmp    4f0 <strchr+0x30>
 4d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d7:	90                   	nop
 4d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4dc:	83 c0 01             	add    $0x1,%eax
 4df:	84 d2                	test   %dl,%dl
 4e1:	74 0d                	je     4f0 <strchr+0x30>
    if(*s == c)
 4e3:	38 d1                	cmp    %dl,%cl
 4e5:	75 f1                	jne    4d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4e7:	5d                   	pop    %ebp
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4f0:	31 c0                	xor    %eax,%eax
}
 4f2:	5d                   	pop    %ebp
 4f3:	c3                   	ret    
 4f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <gets>:

char*
gets(char *buf, int max)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 505:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 508:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 509:	31 db                	xor    %ebx,%ebx
{
 50b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 50e:	eb 27                	jmp    537 <gets+0x37>
    cc = read(0, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	6a 01                	push   $0x1
 515:	57                   	push   %edi
 516:	6a 00                	push   $0x0
 518:	e8 2e 01 00 00       	call   64b <read>
    if(cc < 1)
 51d:	83 c4 10             	add    $0x10,%esp
 520:	85 c0                	test   %eax,%eax
 522:	7e 1d                	jle    541 <gets+0x41>
      break;
    buf[i++] = c;
 524:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 528:	8b 55 08             	mov    0x8(%ebp),%edx
 52b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 52f:	3c 0a                	cmp    $0xa,%al
 531:	74 1d                	je     550 <gets+0x50>
 533:	3c 0d                	cmp    $0xd,%al
 535:	74 19                	je     550 <gets+0x50>
  for(i=0; i+1 < max; ){
 537:	89 de                	mov    %ebx,%esi
 539:	83 c3 01             	add    $0x1,%ebx
 53c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 53f:	7c cf                	jl     510 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 541:	8b 45 08             	mov    0x8(%ebp),%eax
 544:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 548:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54b:	5b                   	pop    %ebx
 54c:	5e                   	pop    %esi
 54d:	5f                   	pop    %edi
 54e:	5d                   	pop    %ebp
 54f:	c3                   	ret    
  buf[i] = '\0';
 550:	8b 45 08             	mov    0x8(%ebp),%eax
 553:	89 de                	mov    %ebx,%esi
 555:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 559:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55c:	5b                   	pop    %ebx
 55d:	5e                   	pop    %esi
 55e:	5f                   	pop    %edi
 55f:	5d                   	pop    %ebp
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <stat>:

int
stat(const char *n, struct stat *st)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 575:	83 ec 08             	sub    $0x8,%esp
 578:	6a 00                	push   $0x0
 57a:	ff 75 08             	push   0x8(%ebp)
 57d:	e8 f1 00 00 00       	call   673 <open>
  if(fd < 0)
 582:	83 c4 10             	add    $0x10,%esp
 585:	85 c0                	test   %eax,%eax
 587:	78 27                	js     5b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 589:	83 ec 08             	sub    $0x8,%esp
 58c:	ff 75 0c             	push   0xc(%ebp)
 58f:	89 c3                	mov    %eax,%ebx
 591:	50                   	push   %eax
 592:	e8 f4 00 00 00       	call   68b <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 ba 00 00 00       	call   65b <close>
  return r;
 5a1:	83 c4 10             	add    $0x10,%esp
}
 5a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5a7:	89 f0                	mov    %esi,%eax
 5a9:	5b                   	pop    %ebx
 5aa:	5e                   	pop    %esi
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5b5:	eb ed                	jmp    5a4 <stat+0x34>
 5b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5be:	66 90                	xchg   %ax,%ax

000005c0 <atoi>:

int
atoi(const char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
 5c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5c7:	0f be 02             	movsbl (%edx),%eax
 5ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5d5:	77 1e                	ja     5f5 <atoi+0x35>
 5d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5e0:	83 c2 01             	add    $0x1,%edx
 5e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ea:	0f be 02             	movsbl (%edx),%eax
 5ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5f0:	80 fb 09             	cmp    $0x9,%bl
 5f3:	76 eb                	jbe    5e0 <atoi+0x20>
  return n;
}
 5f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f8:	89 c8                	mov    %ecx,%eax
 5fa:	c9                   	leave  
 5fb:	c3                   	ret    
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	8b 45 10             	mov    0x10(%ebp),%eax
 607:	8b 55 08             	mov    0x8(%ebp),%edx
 60a:	56                   	push   %esi
 60b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 60e:	85 c0                	test   %eax,%eax
 610:	7e 13                	jle    625 <memmove+0x25>
 612:	01 d0                	add    %edx,%eax
  dst = vdst;
 614:	89 d7                	mov    %edx,%edi
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 620:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 621:	39 f8                	cmp    %edi,%eax
 623:	75 fb                	jne    620 <memmove+0x20>
  return vdst;
}
 625:	5e                   	pop    %esi
 626:	89 d0                	mov    %edx,%eax
 628:	5f                   	pop    %edi
 629:	5d                   	pop    %ebp
 62a:	c3                   	ret    

0000062b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 62b:	b8 01 00 00 00       	mov    $0x1,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <exit>:
SYSCALL(exit)
 633:	b8 02 00 00 00       	mov    $0x2,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <wait>:
SYSCALL(wait)
 63b:	b8 03 00 00 00       	mov    $0x3,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <pipe>:
SYSCALL(pipe)
 643:	b8 04 00 00 00       	mov    $0x4,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <read>:
SYSCALL(read)
 64b:	b8 05 00 00 00       	mov    $0x5,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <write>:
SYSCALL(write)
 653:	b8 10 00 00 00       	mov    $0x10,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <close>:
SYSCALL(close)
 65b:	b8 15 00 00 00       	mov    $0x15,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <kill>:
SYSCALL(kill)
 663:	b8 06 00 00 00       	mov    $0x6,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <exec>:
SYSCALL(exec)
 66b:	b8 07 00 00 00       	mov    $0x7,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <open>:
SYSCALL(open)
 673:	b8 0f 00 00 00       	mov    $0xf,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <mknod>:
SYSCALL(mknod)
 67b:	b8 11 00 00 00       	mov    $0x11,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <unlink>:
SYSCALL(unlink)
 683:	b8 12 00 00 00       	mov    $0x12,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <fstat>:
SYSCALL(fstat)
 68b:	b8 08 00 00 00       	mov    $0x8,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <link>:
SYSCALL(link)
 693:	b8 13 00 00 00       	mov    $0x13,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <mkdir>:
SYSCALL(mkdir)
 69b:	b8 14 00 00 00       	mov    $0x14,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <chdir>:
SYSCALL(chdir)
 6a3:	b8 09 00 00 00       	mov    $0x9,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <dup>:
SYSCALL(dup)
 6ab:	b8 0a 00 00 00       	mov    $0xa,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <getpid>:
SYSCALL(getpid)
 6b3:	b8 0b 00 00 00       	mov    $0xb,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <sbrk>:
SYSCALL(sbrk)
 6bb:	b8 0c 00 00 00       	mov    $0xc,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <sleep>:
SYSCALL(sleep)
 6c3:	b8 0d 00 00 00       	mov    $0xd,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <uptime>:
SYSCALL(uptime)
 6cb:	b8 0e 00 00 00       	mov    $0xe,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <clone>:
SYSCALL(clone)
 6d3:	b8 16 00 00 00       	mov    $0x16,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <join>:
SYSCALL(join)
 6db:	b8 17 00 00 00       	mov    $0x17,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    
 6e3:	66 90                	xchg   %ax,%ax
 6e5:	66 90                	xchg   %ax,%ax
 6e7:	66 90                	xchg   %ax,%ax
 6e9:	66 90                	xchg   %ax,%ax
 6eb:	66 90                	xchg   %ax,%ax
 6ed:	66 90                	xchg   %ax,%ax
 6ef:	90                   	nop

000006f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
 6f6:	83 ec 3c             	sub    $0x3c,%esp
 6f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6fc:	89 d1                	mov    %edx,%ecx
{
 6fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 701:	85 d2                	test   %edx,%edx
 703:	0f 89 7f 00 00 00    	jns    788 <printint+0x98>
 709:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 70d:	74 79                	je     788 <printint+0x98>
    neg = 1;
 70f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 716:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 718:	31 db                	xor    %ebx,%ebx
 71a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 71d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 720:	89 c8                	mov    %ecx,%eax
 722:	31 d2                	xor    %edx,%edx
 724:	89 cf                	mov    %ecx,%edi
 726:	f7 75 c4             	divl   -0x3c(%ebp)
 729:	0f b6 92 0c 0c 00 00 	movzbl 0xc0c(%edx),%edx
 730:	89 45 c0             	mov    %eax,-0x40(%ebp)
 733:	89 d8                	mov    %ebx,%eax
 735:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 738:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 73b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 73e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 741:	76 dd                	jbe    720 <printint+0x30>
  if(neg)
 743:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 746:	85 c9                	test   %ecx,%ecx
 748:	74 0c                	je     756 <printint+0x66>
    buf[i++] = '-';
 74a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 74f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 751:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 756:	8b 7d b8             	mov    -0x48(%ebp),%edi
 759:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 75d:	eb 07                	jmp    766 <printint+0x76>
 75f:	90                   	nop
    putc(fd, buf[i]);
 760:	0f b6 13             	movzbl (%ebx),%edx
 763:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 766:	83 ec 04             	sub    $0x4,%esp
 769:	88 55 d7             	mov    %dl,-0x29(%ebp)
 76c:	6a 01                	push   $0x1
 76e:	56                   	push   %esi
 76f:	57                   	push   %edi
 770:	e8 de fe ff ff       	call   653 <write>
  while(--i >= 0)
 775:	83 c4 10             	add    $0x10,%esp
 778:	39 de                	cmp    %ebx,%esi
 77a:	75 e4                	jne    760 <printint+0x70>
}
 77c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 77f:	5b                   	pop    %ebx
 780:	5e                   	pop    %esi
 781:	5f                   	pop    %edi
 782:	5d                   	pop    %ebp
 783:	c3                   	ret    
 784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 788:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 78f:	eb 87                	jmp    718 <printint+0x28>
 791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 798:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79f:	90                   	nop

000007a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7ac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7af:	0f b6 13             	movzbl (%ebx),%edx
 7b2:	84 d2                	test   %dl,%dl
 7b4:	74 6a                	je     820 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7b6:	8d 45 10             	lea    0x10(%ebp),%eax
 7b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7bf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7c4:	eb 36                	jmp    7fc <printf+0x5c>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
 7d0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7d3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7d8:	83 f8 25             	cmp    $0x25,%eax
 7db:	74 15                	je     7f2 <printf+0x52>
  write(fd, &c, 1);
 7dd:	83 ec 04             	sub    $0x4,%esp
 7e0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7e3:	6a 01                	push   $0x1
 7e5:	57                   	push   %edi
 7e6:	56                   	push   %esi
 7e7:	e8 67 fe ff ff       	call   653 <write>
 7ec:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7ef:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7f2:	0f b6 13             	movzbl (%ebx),%edx
 7f5:	83 c3 01             	add    $0x1,%ebx
 7f8:	84 d2                	test   %dl,%dl
 7fa:	74 24                	je     820 <printf+0x80>
    c = fmt[i] & 0xff;
 7fc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7ff:	85 c9                	test   %ecx,%ecx
 801:	74 cd                	je     7d0 <printf+0x30>
      }
    } else if(state == '%'){
 803:	83 f9 25             	cmp    $0x25,%ecx
 806:	75 ea                	jne    7f2 <printf+0x52>
      if(c == 'd'){
 808:	83 f8 25             	cmp    $0x25,%eax
 80b:	0f 84 07 01 00 00    	je     918 <printf+0x178>
 811:	83 e8 63             	sub    $0x63,%eax
 814:	83 f8 15             	cmp    $0x15,%eax
 817:	77 17                	ja     830 <printf+0x90>
 819:	ff 24 85 b4 0b 00 00 	jmp    *0xbb4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 820:	8d 65 f4             	lea    -0xc(%ebp),%esp
 823:	5b                   	pop    %ebx
 824:	5e                   	pop    %esi
 825:	5f                   	pop    %edi
 826:	5d                   	pop    %ebp
 827:	c3                   	ret    
 828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82f:	90                   	nop
  write(fd, &c, 1);
 830:	83 ec 04             	sub    $0x4,%esp
 833:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 836:	6a 01                	push   $0x1
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 83e:	e8 10 fe ff ff       	call   653 <write>
        putc(fd, c);
 843:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 847:	83 c4 0c             	add    $0xc,%esp
 84a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 84d:	6a 01                	push   $0x1
 84f:	57                   	push   %edi
 850:	56                   	push   %esi
 851:	e8 fd fd ff ff       	call   653 <write>
        putc(fd, c);
 856:	83 c4 10             	add    $0x10,%esp
      state = 0;
 859:	31 c9                	xor    %ecx,%ecx
 85b:	eb 95                	jmp    7f2 <printf+0x52>
 85d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 860:	83 ec 0c             	sub    $0xc,%esp
 863:	b9 10 00 00 00       	mov    $0x10,%ecx
 868:	6a 00                	push   $0x0
 86a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 86d:	8b 10                	mov    (%eax),%edx
 86f:	89 f0                	mov    %esi,%eax
 871:	e8 7a fe ff ff       	call   6f0 <printint>
        ap++;
 876:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 87a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 87d:	31 c9                	xor    %ecx,%ecx
 87f:	e9 6e ff ff ff       	jmp    7f2 <printf+0x52>
 884:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 888:	8b 45 d0             	mov    -0x30(%ebp),%eax
 88b:	8b 10                	mov    (%eax),%edx
        ap++;
 88d:	83 c0 04             	add    $0x4,%eax
 890:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 893:	85 d2                	test   %edx,%edx
 895:	0f 84 8d 00 00 00    	je     928 <printf+0x188>
        while(*s != 0){
 89b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 89e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8a0:	84 c0                	test   %al,%al
 8a2:	0f 84 4a ff ff ff    	je     7f2 <printf+0x52>
 8a8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8ab:	89 d3                	mov    %edx,%ebx
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8b0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8b3:	83 c3 01             	add    $0x1,%ebx
 8b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8b9:	6a 01                	push   $0x1
 8bb:	57                   	push   %edi
 8bc:	56                   	push   %esi
 8bd:	e8 91 fd ff ff       	call   653 <write>
        while(*s != 0){
 8c2:	0f b6 03             	movzbl (%ebx),%eax
 8c5:	83 c4 10             	add    $0x10,%esp
 8c8:	84 c0                	test   %al,%al
 8ca:	75 e4                	jne    8b0 <printf+0x110>
      state = 0;
 8cc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8cf:	31 c9                	xor    %ecx,%ecx
 8d1:	e9 1c ff ff ff       	jmp    7f2 <printf+0x52>
 8d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8e0:	83 ec 0c             	sub    $0xc,%esp
 8e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8e8:	6a 01                	push   $0x1
 8ea:	e9 7b ff ff ff       	jmp    86a <printf+0xca>
 8ef:	90                   	nop
        putc(fd, *ap);
 8f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8f6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8f8:	6a 01                	push   $0x1
 8fa:	57                   	push   %edi
 8fb:	56                   	push   %esi
        putc(fd, *ap);
 8fc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ff:	e8 4f fd ff ff       	call   653 <write>
        ap++;
 904:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 908:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90b:	31 c9                	xor    %ecx,%ecx
 90d:	e9 e0 fe ff ff       	jmp    7f2 <printf+0x52>
 912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 918:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 91b:	83 ec 04             	sub    $0x4,%esp
 91e:	e9 2a ff ff ff       	jmp    84d <printf+0xad>
 923:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 927:	90                   	nop
          s = "(null)";
 928:	ba ab 0b 00 00       	mov    $0xbab,%edx
        while(*s != 0){
 92d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 930:	b8 28 00 00 00       	mov    $0x28,%eax
 935:	89 d3                	mov    %edx,%ebx
 937:	e9 74 ff ff ff       	jmp    8b0 <printf+0x110>
 93c:	66 90                	xchg   %ax,%ax
 93e:	66 90                	xchg   %ax,%ax

00000940 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 940:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	a1 c0 12 00 00       	mov    0x12c0,%eax
{
 946:	89 e5                	mov    %esp,%ebp
 948:	57                   	push   %edi
 949:	56                   	push   %esi
 94a:	53                   	push   %ebx
 94b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 94e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 951:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 958:	89 c2                	mov    %eax,%edx
 95a:	8b 00                	mov    (%eax),%eax
 95c:	39 ca                	cmp    %ecx,%edx
 95e:	73 30                	jae    990 <free+0x50>
 960:	39 c1                	cmp    %eax,%ecx
 962:	72 04                	jb     968 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 964:	39 c2                	cmp    %eax,%edx
 966:	72 f0                	jb     958 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 968:	8b 73 fc             	mov    -0x4(%ebx),%esi
 96b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 96e:	39 f8                	cmp    %edi,%eax
 970:	74 30                	je     9a2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 972:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 975:	8b 42 04             	mov    0x4(%edx),%eax
 978:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 97b:	39 f1                	cmp    %esi,%ecx
 97d:	74 3a                	je     9b9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 97f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 981:	5b                   	pop    %ebx
  freep = p;
 982:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 988:	5e                   	pop    %esi
 989:	5f                   	pop    %edi
 98a:	5d                   	pop    %ebp
 98b:	c3                   	ret    
 98c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 990:	39 c2                	cmp    %eax,%edx
 992:	72 c4                	jb     958 <free+0x18>
 994:	39 c1                	cmp    %eax,%ecx
 996:	73 c0                	jae    958 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 998:	8b 73 fc             	mov    -0x4(%ebx),%esi
 99b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 99e:	39 f8                	cmp    %edi,%eax
 9a0:	75 d0                	jne    972 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9a2:	03 70 04             	add    0x4(%eax),%esi
 9a5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9a8:	8b 02                	mov    (%edx),%eax
 9aa:	8b 00                	mov    (%eax),%eax
 9ac:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9af:	8b 42 04             	mov    0x4(%edx),%eax
 9b2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9b5:	39 f1                	cmp    %esi,%ecx
 9b7:	75 c6                	jne    97f <free+0x3f>
    p->s.size += bp->s.size;
 9b9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9bc:	89 15 c0 12 00 00    	mov    %edx,0x12c0
    p->s.size += bp->s.size;
 9c2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9c5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9c8:	89 0a                	mov    %ecx,(%edx)
}
 9ca:	5b                   	pop    %ebx
 9cb:	5e                   	pop    %esi
 9cc:	5f                   	pop    %edi
 9cd:	5d                   	pop    %ebp
 9ce:	c3                   	ret    
 9cf:	90                   	nop

000009d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	57                   	push   %edi
 9d4:	56                   	push   %esi
 9d5:	53                   	push   %ebx
 9d6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9dc:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9e2:	8d 70 07             	lea    0x7(%eax),%esi
 9e5:	c1 ee 03             	shr    $0x3,%esi
 9e8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9eb:	85 ff                	test   %edi,%edi
 9ed:	0f 84 9d 00 00 00    	je     a90 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9f5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9f8:	39 f1                	cmp    %esi,%ecx
 9fa:	73 6a                	jae    a66 <malloc+0x96>
 9fc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a01:	39 de                	cmp    %ebx,%esi
 a03:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a06:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a0d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a10:	eb 17                	jmp    a29 <malloc+0x59>
 a12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a18:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a1a:	8b 48 04             	mov    0x4(%eax),%ecx
 a1d:	39 f1                	cmp    %esi,%ecx
 a1f:	73 4f                	jae    a70 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a21:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
 a27:	89 c2                	mov    %eax,%edx
 a29:	39 d7                	cmp    %edx,%edi
 a2b:	75 eb                	jne    a18 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a2d:	83 ec 0c             	sub    $0xc,%esp
 a30:	ff 75 e4             	push   -0x1c(%ebp)
 a33:	e8 83 fc ff ff       	call   6bb <sbrk>
  if(p == (char*)-1)
 a38:	83 c4 10             	add    $0x10,%esp
 a3b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a3e:	74 1c                	je     a5c <malloc+0x8c>
  hp->s.size = nu;
 a40:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a43:	83 ec 0c             	sub    $0xc,%esp
 a46:	83 c0 08             	add    $0x8,%eax
 a49:	50                   	push   %eax
 a4a:	e8 f1 fe ff ff       	call   940 <free>
  return freep;
 a4f:	8b 15 c0 12 00 00    	mov    0x12c0,%edx
      if((p = morecore(nunits)) == 0)
 a55:	83 c4 10             	add    $0x10,%esp
 a58:	85 d2                	test   %edx,%edx
 a5a:	75 bc                	jne    a18 <malloc+0x48>
        return 0;
  }
}
 a5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a5f:	31 c0                	xor    %eax,%eax
}
 a61:	5b                   	pop    %ebx
 a62:	5e                   	pop    %esi
 a63:	5f                   	pop    %edi
 a64:	5d                   	pop    %ebp
 a65:	c3                   	ret    
    if(p->s.size >= nunits){
 a66:	89 d0                	mov    %edx,%eax
 a68:	89 fa                	mov    %edi,%edx
 a6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a70:	39 ce                	cmp    %ecx,%esi
 a72:	74 4c                	je     ac0 <malloc+0xf0>
        p->s.size -= nunits;
 a74:	29 f1                	sub    %esi,%ecx
 a76:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a79:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a7c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a7f:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 a85:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a88:	83 c0 08             	add    $0x8,%eax
}
 a8b:	5b                   	pop    %ebx
 a8c:	5e                   	pop    %esi
 a8d:	5f                   	pop    %edi
 a8e:	5d                   	pop    %ebp
 a8f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a90:	c7 05 c0 12 00 00 c4 	movl   $0x12c4,0x12c0
 a97:	12 00 00 
    base.s.size = 0;
 a9a:	bf c4 12 00 00       	mov    $0x12c4,%edi
    base.s.ptr = freep = prevp = &base;
 a9f:	c7 05 c4 12 00 00 c4 	movl   $0x12c4,0x12c4
 aa6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 aab:	c7 05 c8 12 00 00 00 	movl   $0x0,0x12c8
 ab2:	00 00 00 
    if(p->s.size >= nunits){
 ab5:	e9 42 ff ff ff       	jmp    9fc <malloc+0x2c>
 aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ac0:	8b 08                	mov    (%eax),%ecx
 ac2:	89 0a                	mov    %ecx,(%edx)
 ac4:	eb b9                	jmp    a7f <malloc+0xaf>
