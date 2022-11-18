
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
  14:	e8 7a 06 00 00       	call   693 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 80 0f 00 00       	mov    %eax,0xf80
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 85 09 00 00       	call   9b0 <malloc>
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
  67:	e8 47 06 00 00       	call   6b3 <clone>
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
  7d:	e8 19 06 00 00       	call   69b <sbrk>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
  82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  89:	e8 0d 06 00 00       	call   69b <sbrk>
  8e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   assert(join((void**)((uint)join_stack + 2)) == -1);
  91:	83 e8 02             	sub    $0x2,%eax
  94:	89 04 24             	mov    %eax,(%esp)
  97:	e8 1f 06 00 00       	call   6bb <join>
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	83 c0 01             	add    $0x1,%eax
  a2:	0f 84 80 00 00 00    	je     128 <main+0x128>
  a8:	6a 29                	push   $0x29
  aa:	68 a8 0a 00 00       	push   $0xaa8
  af:	68 b1 0a 00 00       	push   $0xab1
  b4:	6a 01                	push   $0x1
  b6:	e8 c5 06 00 00       	call   780 <printf>
  bb:	83 c4 0c             	add    $0xc,%esp
  be:	68 60 0b 00 00       	push   $0xb60
   assert(clone_pid > 0);
  c3:	68 c4 0a 00 00       	push   $0xac4
  c8:	6a 01                	push   $0x1
  ca:	e8 b1 06 00 00       	call   780 <printf>
  cf:	5a                   	pop    %edx
  d0:	59                   	pop    %ecx
  d1:	68 d8 0a 00 00       	push   $0xad8
  d6:	6a 01                	push   $0x1
  d8:	e8 a3 06 00 00       	call   780 <printf>
  dd:	5b                   	pop    %ebx
  de:	ff 35 80 0f 00 00    	push   0xf80
  e4:	e8 5a 05 00 00       	call   643 <kill>
  e9:	e8 25 05 00 00       	call   613 <exit>
  ee:	6a 25                	push   $0x25
  f0:	68 a8 0a 00 00       	push   $0xaa8
  f5:	68 b1 0a 00 00       	push   $0xab1
  fa:	6a 01                	push   $0x1
  fc:	e8 7f 06 00 00       	call   780 <printf>
 101:	83 c4 0c             	add    $0xc,%esp
 104:	68 06 0b 00 00       	push   $0xb06
 109:	eb b8                	jmp    c3 <main+0xc3>
   assert(p != NULL);
 10b:	6a 1d                	push   $0x1d
 10d:	68 a8 0a 00 00       	push   $0xaa8
 112:	68 b1 0a 00 00       	push   $0xab1
 117:	6a 01                	push   $0x1
 119:	e8 62 06 00 00       	call   780 <printf>
 11e:	83 c4 0c             	add    $0xc,%esp
 121:	68 fc 0a 00 00       	push   $0xafc
 126:	eb 9b                	jmp    c3 <main+0xc3>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   assert(join(join_stack) == clone_pid);
 12b:	83 ec 0c             	sub    $0xc,%esp
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 12e:	83 e8 04             	sub    $0x4,%eax
   assert(join(join_stack) == clone_pid);
 131:	50                   	push   %eax
 132:	e8 84 05 00 00       	call   6bb <join>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	39 f0                	cmp    %esi,%eax
 13c:	74 20                	je     15e <main+0x15e>
 13e:	6a 2a                	push   $0x2a
 140:	68 a8 0a 00 00       	push   $0xaa8
 145:	68 b1 0a 00 00       	push   $0xab1
 14a:	6a 01                	push   $0x1
 14c:	e8 2f 06 00 00       	call   780 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 14 0b 00 00       	push   $0xb14
 159:	e9 65 ff ff ff       	jmp    c3 <main+0xc3>
   assert(stack == *join_stack);
 15e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 161:	39 78 fc             	cmp    %edi,-0x4(%eax)
 164:	74 20                	je     186 <main+0x186>
 166:	6a 2b                	push   $0x2b
 168:	68 a8 0a 00 00       	push   $0xaa8
 16d:	68 b1 0a 00 00       	push   $0xab1
 172:	6a 01                	push   $0x1
 174:	e8 07 06 00 00       	call   780 <printf>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	68 32 0b 00 00       	push   $0xb32
 181:	e9 3d ff ff ff       	jmp    c3 <main+0xc3>
   assert(global == 2);
 186:	83 3d 78 0f 00 00 02 	cmpl   $0x2,0xf78
 18d:	74 20                	je     1af <main+0x1af>
 18f:	6a 2c                	push   $0x2c
 191:	68 a8 0a 00 00       	push   $0xaa8
 196:	68 b1 0a 00 00       	push   $0xab1
 19b:	6a 01                	push   $0x1
 19d:	e8 de 05 00 00       	call   780 <printf>
 1a2:	83 c4 0c             	add    $0xc,%esp
 1a5:	68 47 0b 00 00       	push   $0xb47
 1aa:	e9 14 ff ff ff       	jmp    c3 <main+0xc3>

   printf(1, "TEST PASSED\n");
 1af:	50                   	push   %eax
 1b0:	50                   	push   %eax
 1b1:	68 53 0b 00 00       	push   $0xb53
 1b6:	6a 01                	push   $0x1
 1b8:	e8 c3 05 00 00       	call   780 <printf>
   free(p);
 1bd:	89 1c 24             	mov    %ebx,(%esp)
 1c0:	e8 5b 07 00 00       	call   920 <free>
   exit();
 1c5:	e8 49 04 00 00       	call   613 <exit>
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
 1e8:	83 3d 78 0f 00 00 01 	cmpl   $0x1,0xf78
 1ef:	0f 84 80 00 00 00    	je     275 <worker+0xa5>
 1f5:	6a 39                	push   $0x39
 1f7:	68 a8 0a 00 00       	push   $0xaa8
 1fc:	68 b1 0a 00 00       	push   $0xab1
 201:	6a 01                	push   $0x1
 203:	e8 78 05 00 00       	call   780 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 f0 0a 00 00       	push   $0xaf0
 210:	eb 1b                	jmp    22d <worker+0x5d>
   assert(tmp2 == 24);
 212:	6a 38                	push   $0x38
 214:	68 a8 0a 00 00       	push   $0xaa8
 219:	68 b1 0a 00 00       	push   $0xab1
 21e:	6a 01                	push   $0x1
 220:	e8 5b 05 00 00       	call   780 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 e5 0a 00 00       	push   $0xae5
 22d:	68 c4 0a 00 00       	push   $0xac4
 232:	6a 01                	push   $0x1
 234:	e8 47 05 00 00       	call   780 <printf>
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	68 d8 0a 00 00       	push   $0xad8
 240:	6a 01                	push   $0x1
 242:	e8 39 05 00 00       	call   780 <printf>
 247:	59                   	pop    %ecx
 248:	ff 35 80 0f 00 00    	push   0xf80
 24e:	e8 f0 03 00 00       	call   643 <kill>
 253:	e8 bb 03 00 00       	call   613 <exit>
   assert(tmp1 == 42);
 258:	6a 37                	push   $0x37
 25a:	68 a8 0a 00 00       	push   $0xaa8
 25f:	68 b1 0a 00 00       	push   $0xab1
 264:	6a 01                	push   $0x1
 266:	e8 15 05 00 00       	call   780 <printf>
 26b:	83 c4 0c             	add    $0xc,%esp
 26e:	68 b9 0a 00 00       	push   $0xab9
 273:	eb b8                	jmp    22d <worker+0x5d>
   global++;
 275:	c7 05 78 0f 00 00 02 	movl   $0x2,0xf78
 27c:	00 00 00 
   exit();
 27f:	e8 8f 03 00 00       	call   613 <exit>
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	56                   	push   %esi
 294:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 295:	31 db                	xor    %ebx,%ebx
 297:	eb 0f                	jmp    2a8 <thread_create+0x18>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a0:	83 c3 01             	add    $0x1,%ebx
 2a3:	83 fb 40             	cmp    $0x40,%ebx
 2a6:	74 60                	je     308 <thread_create+0x78>
    if (inUse[i] == 0){
 2a8:	8b 04 9d a0 0f 00 00 	mov    0xfa0(,%ebx,4),%eax
 2af:	85 c0                	test   %eax,%eax
 2b1:	75 ed                	jne    2a0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 2b3:	a1 7c 0f 00 00       	mov    0xf7c,%eax
 2b8:	83 ec 0c             	sub    $0xc,%esp
 2bb:	01 c0                	add    %eax,%eax
 2bd:	50                   	push   %eax
 2be:	e8 ed 06 00 00       	call   9b0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 2c3:	8b 35 7c 0f 00 00    	mov    0xf7c,%esi
 2c9:	83 c4 10             	add    $0x10,%esp
 2cc:	99                   	cltd   
      malloc_addrs[i] = stack;
 2cd:	89 04 9d a0 10 00 00 	mov    %eax,0x10a0(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 2d4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 2d6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 2d8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 2db:	29 d6                	sub    %edx,%esi
 2dd:	01 f1                	add    %esi,%ecx
 2df:	85 d2                	test   %edx,%edx
 2e1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 2e4:	51                   	push   %ecx
 2e5:	ff 75 10             	push   0x10(%ebp)
 2e8:	ff 75 0c             	push   0xc(%ebp)
 2eb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 2ee:	89 0c 9d a0 11 00 00 	mov    %ecx,0x11a0(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 2f5:	e8 b9 03 00 00       	call   6b3 <clone>
 2fa:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 2fd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 300:	5b                   	pop    %ebx
 301:	5e                   	pop    %esi
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 308:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 30b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 310:	5b                   	pop    %ebx
 311:	5e                   	pop    %esi
 312:	5d                   	pop    %ebp
 313:	c3                   	ret    
 314:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 31f:	90                   	nop

00000320 <thread_join>:

int 
thread_join()
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 325:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 328:	31 db                	xor    %ebx,%ebx
{
 32a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 32d:	50                   	push   %eax
 32e:	e8 88 03 00 00       	call   6bb <join>
 333:	83 c4 10             	add    $0x10,%esp
 336:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 338:	eb 0e                	jmp    348 <thread_join+0x28>
 33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 340:	83 c3 01             	add    $0x1,%ebx
 343:	83 fb 40             	cmp    $0x40,%ebx
 346:	74 27                	je     36f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 348:	83 3c 9d a0 0f 00 00 	cmpl   $0x1,0xfa0(,%ebx,4)
 34f:	01 
 350:	75 ee                	jne    340 <thread_join+0x20>
      free(malloc_addrs[i]);
 352:	83 ec 0c             	sub    $0xc,%esp
 355:	ff 34 9d a0 10 00 00 	push   0x10a0(,%ebx,4)
 35c:	e8 bf 05 00 00       	call   920 <free>
      inUse[i] = 0;
      break;
 361:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 364:	c7 04 9d a0 0f 00 00 	movl   $0x0,0xfa0(,%ebx,4)
 36b:	00 00 00 00 
    }
  }
  return id;
}
 36f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 372:	89 f0                	mov    %esi,%eax
 374:	5b                   	pop    %ebx
 375:	5e                   	pop    %esi
 376:	5d                   	pop    %ebp
 377:	c3                   	ret    
 378:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <lock_init>:

void lock_init(lock_t *lock){
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 383:	8b 45 08             	mov    0x8(%ebp),%eax
 386:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 38c:	5d                   	pop    %ebp
 38d:	c3                   	ret    
 38e:	66 90                	xchg   %ax,%ax

00000390 <lock_acquire>:

void lock_acquire(lock_t *lock){
 390:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 391:	b9 01 00 00 00       	mov    $0x1,%ecx
 396:	89 e5                	mov    %esp,%ebp
 398:	8b 55 08             	mov    0x8(%ebp),%edx
 39b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop
 3a0:	89 c8                	mov    %ecx,%eax
 3a2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 3a5:	85 c0                	test   %eax,%eax
 3a7:	75 f7                	jne    3a0 <lock_acquire+0x10>
}
 3a9:	5d                   	pop    %ebp
 3aa:	c3                   	ret    
 3ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <lock_release>:

void lock_release(lock_t *lock){
 3b0:	55                   	push   %ebp
 3b1:	31 c0                	xor    %eax,%eax
 3b3:	89 e5                	mov    %esp,%ebp
 3b5:	8b 55 08             	mov    0x8(%ebp),%edx
 3b8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 3c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3c1:	31 c0                	xor    %eax,%eax
{
 3c3:	89 e5                	mov    %esp,%ebp
 3c5:	53                   	push   %ebx
 3c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3d7:	83 c0 01             	add    $0x1,%eax
 3da:	84 d2                	test   %dl,%dl
 3dc:	75 f2                	jne    3d0 <strcpy+0x10>
    ;
  return os;
}
 3de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e1:	89 c8                	mov    %ecx,%eax
 3e3:	c9                   	leave  
 3e4:	c3                   	ret    
 3e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 55 08             	mov    0x8(%ebp),%edx
 3f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3fa:	0f b6 02             	movzbl (%edx),%eax
 3fd:	84 c0                	test   %al,%al
 3ff:	75 17                	jne    418 <strcmp+0x28>
 401:	eb 3a                	jmp    43d <strcmp+0x4d>
 403:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 407:	90                   	nop
 408:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 40c:	83 c2 01             	add    $0x1,%edx
 40f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 412:	84 c0                	test   %al,%al
 414:	74 1a                	je     430 <strcmp+0x40>
    p++, q++;
 416:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 418:	0f b6 19             	movzbl (%ecx),%ebx
 41b:	38 c3                	cmp    %al,%bl
 41d:	74 e9                	je     408 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 41f:	29 d8                	sub    %ebx,%eax
}
 421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 424:	c9                   	leave  
 425:	c3                   	ret    
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 430:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 434:	31 c0                	xor    %eax,%eax
 436:	29 d8                	sub    %ebx,%eax
}
 438:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 43b:	c9                   	leave  
 43c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 43d:	0f b6 19             	movzbl (%ecx),%ebx
 440:	31 c0                	xor    %eax,%eax
 442:	eb db                	jmp    41f <strcmp+0x2f>
 444:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <strlen>:

uint
strlen(const char *s)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 456:	80 3a 00             	cmpb   $0x0,(%edx)
 459:	74 15                	je     470 <strlen+0x20>
 45b:	31 c0                	xor    %eax,%eax
 45d:	8d 76 00             	lea    0x0(%esi),%esi
 460:	83 c0 01             	add    $0x1,%eax
 463:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 467:	89 c1                	mov    %eax,%ecx
 469:	75 f5                	jne    460 <strlen+0x10>
    ;
  return n;
}
 46b:	89 c8                	mov    %ecx,%eax
 46d:	5d                   	pop    %ebp
 46e:	c3                   	ret    
 46f:	90                   	nop
  for(n = 0; s[n]; n++)
 470:	31 c9                	xor    %ecx,%ecx
}
 472:	5d                   	pop    %ebp
 473:	89 c8                	mov    %ecx,%eax
 475:	c3                   	ret    
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi

00000480 <memset>:

void*
memset(void *dst, int c, uint n)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 487:	8b 4d 10             	mov    0x10(%ebp),%ecx
 48a:	8b 45 0c             	mov    0xc(%ebp),%eax
 48d:	89 d7                	mov    %edx,%edi
 48f:	fc                   	cld    
 490:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 492:	8b 7d fc             	mov    -0x4(%ebp),%edi
 495:	89 d0                	mov    %edx,%eax
 497:	c9                   	leave  
 498:	c3                   	ret    
 499:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004a0 <strchr>:

char*
strchr(const char *s, char c)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
 4a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4aa:	0f b6 10             	movzbl (%eax),%edx
 4ad:	84 d2                	test   %dl,%dl
 4af:	75 12                	jne    4c3 <strchr+0x23>
 4b1:	eb 1d                	jmp    4d0 <strchr+0x30>
 4b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b7:	90                   	nop
 4b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4bc:	83 c0 01             	add    $0x1,%eax
 4bf:	84 d2                	test   %dl,%dl
 4c1:	74 0d                	je     4d0 <strchr+0x30>
    if(*s == c)
 4c3:	38 d1                	cmp    %dl,%cl
 4c5:	75 f1                	jne    4b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4c7:	5d                   	pop    %ebp
 4c8:	c3                   	ret    
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4d0:	31 c0                	xor    %eax,%eax
}
 4d2:	5d                   	pop    %ebp
 4d3:	c3                   	ret    
 4d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <gets>:

char*
gets(char *buf, int max)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4e9:	31 db                	xor    %ebx,%ebx
{
 4eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4ee:	eb 27                	jmp    517 <gets+0x37>
    cc = read(0, &c, 1);
 4f0:	83 ec 04             	sub    $0x4,%esp
 4f3:	6a 01                	push   $0x1
 4f5:	57                   	push   %edi
 4f6:	6a 00                	push   $0x0
 4f8:	e8 2e 01 00 00       	call   62b <read>
    if(cc < 1)
 4fd:	83 c4 10             	add    $0x10,%esp
 500:	85 c0                	test   %eax,%eax
 502:	7e 1d                	jle    521 <gets+0x41>
      break;
    buf[i++] = c;
 504:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 508:	8b 55 08             	mov    0x8(%ebp),%edx
 50b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 50f:	3c 0a                	cmp    $0xa,%al
 511:	74 1d                	je     530 <gets+0x50>
 513:	3c 0d                	cmp    $0xd,%al
 515:	74 19                	je     530 <gets+0x50>
  for(i=0; i+1 < max; ){
 517:	89 de                	mov    %ebx,%esi
 519:	83 c3 01             	add    $0x1,%ebx
 51c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 51f:	7c cf                	jl     4f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 521:	8b 45 08             	mov    0x8(%ebp),%eax
 524:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 528:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52b:	5b                   	pop    %ebx
 52c:	5e                   	pop    %esi
 52d:	5f                   	pop    %edi
 52e:	5d                   	pop    %ebp
 52f:	c3                   	ret    
  buf[i] = '\0';
 530:	8b 45 08             	mov    0x8(%ebp),%eax
 533:	89 de                	mov    %ebx,%esi
 535:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 539:	8d 65 f4             	lea    -0xc(%ebp),%esp
 53c:	5b                   	pop    %ebx
 53d:	5e                   	pop    %esi
 53e:	5f                   	pop    %edi
 53f:	5d                   	pop    %ebp
 540:	c3                   	ret    
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <stat>:

int
stat(const char *n, struct stat *st)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	56                   	push   %esi
 554:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 555:	83 ec 08             	sub    $0x8,%esp
 558:	6a 00                	push   $0x0
 55a:	ff 75 08             	push   0x8(%ebp)
 55d:	e8 f1 00 00 00       	call   653 <open>
  if(fd < 0)
 562:	83 c4 10             	add    $0x10,%esp
 565:	85 c0                	test   %eax,%eax
 567:	78 27                	js     590 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 569:	83 ec 08             	sub    $0x8,%esp
 56c:	ff 75 0c             	push   0xc(%ebp)
 56f:	89 c3                	mov    %eax,%ebx
 571:	50                   	push   %eax
 572:	e8 f4 00 00 00       	call   66b <fstat>
  close(fd);
 577:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 57a:	89 c6                	mov    %eax,%esi
  close(fd);
 57c:	e8 ba 00 00 00       	call   63b <close>
  return r;
 581:	83 c4 10             	add    $0x10,%esp
}
 584:	8d 65 f8             	lea    -0x8(%ebp),%esp
 587:	89 f0                	mov    %esi,%eax
 589:	5b                   	pop    %ebx
 58a:	5e                   	pop    %esi
 58b:	5d                   	pop    %ebp
 58c:	c3                   	ret    
 58d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 590:	be ff ff ff ff       	mov    $0xffffffff,%esi
 595:	eb ed                	jmp    584 <stat+0x34>
 597:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59e:	66 90                	xchg   %ax,%ax

000005a0 <atoi>:

int
atoi(const char *s)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	53                   	push   %ebx
 5a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5a7:	0f be 02             	movsbl (%edx),%eax
 5aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5b5:	77 1e                	ja     5d5 <atoi+0x35>
 5b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5c0:	83 c2 01             	add    $0x1,%edx
 5c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ca:	0f be 02             	movsbl (%edx),%eax
 5cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5d0:	80 fb 09             	cmp    $0x9,%bl
 5d3:	76 eb                	jbe    5c0 <atoi+0x20>
  return n;
}
 5d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5d8:	89 c8                	mov    %ecx,%eax
 5da:	c9                   	leave  
 5db:	c3                   	ret    
 5dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	8b 45 10             	mov    0x10(%ebp),%eax
 5e7:	8b 55 08             	mov    0x8(%ebp),%edx
 5ea:	56                   	push   %esi
 5eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ee:	85 c0                	test   %eax,%eax
 5f0:	7e 13                	jle    605 <memmove+0x25>
 5f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5f4:	89 d7                	mov    %edx,%edi
 5f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 600:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 601:	39 f8                	cmp    %edi,%eax
 603:	75 fb                	jne    600 <memmove+0x20>
  return vdst;
}
 605:	5e                   	pop    %esi
 606:	89 d0                	mov    %edx,%eax
 608:	5f                   	pop    %edi
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret    

0000060b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 60b:	b8 01 00 00 00       	mov    $0x1,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <exit>:
SYSCALL(exit)
 613:	b8 02 00 00 00       	mov    $0x2,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <wait>:
SYSCALL(wait)
 61b:	b8 03 00 00 00       	mov    $0x3,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <pipe>:
SYSCALL(pipe)
 623:	b8 04 00 00 00       	mov    $0x4,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <read>:
SYSCALL(read)
 62b:	b8 05 00 00 00       	mov    $0x5,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <write>:
SYSCALL(write)
 633:	b8 10 00 00 00       	mov    $0x10,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <close>:
SYSCALL(close)
 63b:	b8 15 00 00 00       	mov    $0x15,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <kill>:
SYSCALL(kill)
 643:	b8 06 00 00 00       	mov    $0x6,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <exec>:
SYSCALL(exec)
 64b:	b8 07 00 00 00       	mov    $0x7,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <open>:
SYSCALL(open)
 653:	b8 0f 00 00 00       	mov    $0xf,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <mknod>:
SYSCALL(mknod)
 65b:	b8 11 00 00 00       	mov    $0x11,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <unlink>:
SYSCALL(unlink)
 663:	b8 12 00 00 00       	mov    $0x12,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <fstat>:
SYSCALL(fstat)
 66b:	b8 08 00 00 00       	mov    $0x8,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <link>:
SYSCALL(link)
 673:	b8 13 00 00 00       	mov    $0x13,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <mkdir>:
SYSCALL(mkdir)
 67b:	b8 14 00 00 00       	mov    $0x14,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <chdir>:
SYSCALL(chdir)
 683:	b8 09 00 00 00       	mov    $0x9,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <dup>:
SYSCALL(dup)
 68b:	b8 0a 00 00 00       	mov    $0xa,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <getpid>:
SYSCALL(getpid)
 693:	b8 0b 00 00 00       	mov    $0xb,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <sbrk>:
SYSCALL(sbrk)
 69b:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <sleep>:
SYSCALL(sleep)
 6a3:	b8 0d 00 00 00       	mov    $0xd,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <uptime>:
SYSCALL(uptime)
 6ab:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <clone>:
SYSCALL(clone)
 6b3:	b8 16 00 00 00       	mov    $0x16,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <join>:
SYSCALL(join)
 6bb:	b8 17 00 00 00       	mov    $0x17,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    
 6c3:	66 90                	xchg   %ax,%ax
 6c5:	66 90                	xchg   %ax,%ax
 6c7:	66 90                	xchg   %ax,%ax
 6c9:	66 90                	xchg   %ax,%ax
 6cb:	66 90                	xchg   %ax,%ax
 6cd:	66 90                	xchg   %ax,%ax
 6cf:	90                   	nop

000006d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 3c             	sub    $0x3c,%esp
 6d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6dc:	89 d1                	mov    %edx,%ecx
{
 6de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6e1:	85 d2                	test   %edx,%edx
 6e3:	0f 89 7f 00 00 00    	jns    768 <printint+0x98>
 6e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ed:	74 79                	je     768 <printint+0x98>
    neg = 1;
 6ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6f8:	31 db                	xor    %ebx,%ebx
 6fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 cf                	mov    %ecx,%edi
 706:	f7 75 c4             	divl   -0x3c(%ebp)
 709:	0f b6 92 ec 0b 00 00 	movzbl 0xbec(%edx),%edx
 710:	89 45 c0             	mov    %eax,-0x40(%ebp)
 713:	89 d8                	mov    %ebx,%eax
 715:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 718:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 71b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 71e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 721:	76 dd                	jbe    700 <printint+0x30>
  if(neg)
 723:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 726:	85 c9                	test   %ecx,%ecx
 728:	74 0c                	je     736 <printint+0x66>
    buf[i++] = '-';
 72a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 72f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 731:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 736:	8b 7d b8             	mov    -0x48(%ebp),%edi
 739:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 73d:	eb 07                	jmp    746 <printint+0x76>
 73f:	90                   	nop
    putc(fd, buf[i]);
 740:	0f b6 13             	movzbl (%ebx),%edx
 743:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 746:	83 ec 04             	sub    $0x4,%esp
 749:	88 55 d7             	mov    %dl,-0x29(%ebp)
 74c:	6a 01                	push   $0x1
 74e:	56                   	push   %esi
 74f:	57                   	push   %edi
 750:	e8 de fe ff ff       	call   633 <write>
  while(--i >= 0)
 755:	83 c4 10             	add    $0x10,%esp
 758:	39 de                	cmp    %ebx,%esi
 75a:	75 e4                	jne    740 <printint+0x70>
}
 75c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75f:	5b                   	pop    %ebx
 760:	5e                   	pop    %esi
 761:	5f                   	pop    %edi
 762:	5d                   	pop    %ebp
 763:	c3                   	ret    
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 768:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 76f:	eb 87                	jmp    6f8 <printint+0x28>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 789:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 78c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 13             	movzbl (%ebx),%edx
 792:	84 d2                	test   %dl,%dl
 794:	74 6a                	je     800 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 796:	8d 45 10             	lea    0x10(%ebp),%eax
 799:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 79c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 79f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7a4:	eb 36                	jmp    7dc <printf+0x5c>
 7a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
 7b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	74 15                	je     7d2 <printf+0x52>
  write(fd, &c, 1);
 7bd:	83 ec 04             	sub    $0x4,%esp
 7c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7c3:	6a 01                	push   $0x1
 7c5:	57                   	push   %edi
 7c6:	56                   	push   %esi
 7c7:	e8 67 fe ff ff       	call   633 <write>
 7cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7d2:	0f b6 13             	movzbl (%ebx),%edx
 7d5:	83 c3 01             	add    $0x1,%ebx
 7d8:	84 d2                	test   %dl,%dl
 7da:	74 24                	je     800 <printf+0x80>
    c = fmt[i] & 0xff;
 7dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7df:	85 c9                	test   %ecx,%ecx
 7e1:	74 cd                	je     7b0 <printf+0x30>
      }
    } else if(state == '%'){
 7e3:	83 f9 25             	cmp    $0x25,%ecx
 7e6:	75 ea                	jne    7d2 <printf+0x52>
      if(c == 'd'){
 7e8:	83 f8 25             	cmp    $0x25,%eax
 7eb:	0f 84 07 01 00 00    	je     8f8 <printf+0x178>
 7f1:	83 e8 63             	sub    $0x63,%eax
 7f4:	83 f8 15             	cmp    $0x15,%eax
 7f7:	77 17                	ja     810 <printf+0x90>
 7f9:	ff 24 85 94 0b 00 00 	jmp    *0xb94(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 800:	8d 65 f4             	lea    -0xc(%ebp),%esp
 803:	5b                   	pop    %ebx
 804:	5e                   	pop    %esi
 805:	5f                   	pop    %edi
 806:	5d                   	pop    %ebp
 807:	c3                   	ret    
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 816:	6a 01                	push   $0x1
 818:	57                   	push   %edi
 819:	56                   	push   %esi
 81a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 81e:	e8 10 fe ff ff       	call   633 <write>
        putc(fd, c);
 823:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 827:	83 c4 0c             	add    $0xc,%esp
 82a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 82d:	6a 01                	push   $0x1
 82f:	57                   	push   %edi
 830:	56                   	push   %esi
 831:	e8 fd fd ff ff       	call   633 <write>
        putc(fd, c);
 836:	83 c4 10             	add    $0x10,%esp
      state = 0;
 839:	31 c9                	xor    %ecx,%ecx
 83b:	eb 95                	jmp    7d2 <printf+0x52>
 83d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 10 00 00 00       	mov    $0x10,%ecx
 848:	6a 00                	push   $0x0
 84a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84d:	8b 10                	mov    (%eax),%edx
 84f:	89 f0                	mov    %esi,%eax
 851:	e8 7a fe ff ff       	call   6d0 <printint>
        ap++;
 856:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 85a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 85d:	31 c9                	xor    %ecx,%ecx
 85f:	e9 6e ff ff ff       	jmp    7d2 <printf+0x52>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 868:	8b 45 d0             	mov    -0x30(%ebp),%eax
 86b:	8b 10                	mov    (%eax),%edx
        ap++;
 86d:	83 c0 04             	add    $0x4,%eax
 870:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 873:	85 d2                	test   %edx,%edx
 875:	0f 84 8d 00 00 00    	je     908 <printf+0x188>
        while(*s != 0){
 87b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 87e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 880:	84 c0                	test   %al,%al
 882:	0f 84 4a ff ff ff    	je     7d2 <printf+0x52>
 888:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 88b:	89 d3                	mov    %edx,%ebx
 88d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
          s++;
 893:	83 c3 01             	add    $0x1,%ebx
 896:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 899:	6a 01                	push   $0x1
 89b:	57                   	push   %edi
 89c:	56                   	push   %esi
 89d:	e8 91 fd ff ff       	call   633 <write>
        while(*s != 0){
 8a2:	0f b6 03             	movzbl (%ebx),%eax
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	84 c0                	test   %al,%al
 8aa:	75 e4                	jne    890 <printf+0x110>
      state = 0;
 8ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8af:	31 c9                	xor    %ecx,%ecx
 8b1:	e9 1c ff ff ff       	jmp    7d2 <printf+0x52>
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8c8:	6a 01                	push   $0x1
 8ca:	e9 7b ff ff ff       	jmp    84a <printf+0xca>
 8cf:	90                   	nop
        putc(fd, *ap);
 8d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8d8:	6a 01                	push   $0x1
 8da:	57                   	push   %edi
 8db:	56                   	push   %esi
        putc(fd, *ap);
 8dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8df:	e8 4f fd ff ff       	call   633 <write>
        ap++;
 8e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8eb:	31 c9                	xor    %ecx,%ecx
 8ed:	e9 e0 fe ff ff       	jmp    7d2 <printf+0x52>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8fb:	83 ec 04             	sub    $0x4,%esp
 8fe:	e9 2a ff ff ff       	jmp    82d <printf+0xad>
 903:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 907:	90                   	nop
          s = "(null)";
 908:	ba 8b 0b 00 00       	mov    $0xb8b,%edx
        while(*s != 0){
 90d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 910:	b8 28 00 00 00       	mov    $0x28,%eax
 915:	89 d3                	mov    %edx,%ebx
 917:	e9 74 ff ff ff       	jmp    890 <printf+0x110>
 91c:	66 90                	xchg   %ax,%ax
 91e:	66 90                	xchg   %ax,%ax

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 a0 12 00 00       	mov    0x12a0,%eax
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 92e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 938:	89 c2                	mov    %eax,%edx
 93a:	8b 00                	mov    (%eax),%eax
 93c:	39 ca                	cmp    %ecx,%edx
 93e:	73 30                	jae    970 <free+0x50>
 940:	39 c1                	cmp    %eax,%ecx
 942:	72 04                	jb     948 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 944:	39 c2                	cmp    %eax,%edx
 946:	72 f0                	jb     938 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	74 30                	je     982 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 952:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 955:	8b 42 04             	mov    0x4(%edx),%eax
 958:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 95b:	39 f1                	cmp    %esi,%ecx
 95d:	74 3a                	je     999 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 95f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 961:	5b                   	pop    %ebx
  freep = p;
 962:	89 15 a0 12 00 00    	mov    %edx,0x12a0
}
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 970:	39 c2                	cmp    %eax,%edx
 972:	72 c4                	jb     938 <free+0x18>
 974:	39 c1                	cmp    %eax,%ecx
 976:	73 c0                	jae    938 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 978:	8b 73 fc             	mov    -0x4(%ebx),%esi
 97b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 97e:	39 f8                	cmp    %edi,%eax
 980:	75 d0                	jne    952 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 982:	03 70 04             	add    0x4(%eax),%esi
 985:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 988:	8b 02                	mov    (%edx),%eax
 98a:	8b 00                	mov    (%eax),%eax
 98c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 98f:	8b 42 04             	mov    0x4(%edx),%eax
 992:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 995:	39 f1                	cmp    %esi,%ecx
 997:	75 c6                	jne    95f <free+0x3f>
    p->s.size += bp->s.size;
 999:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 99c:	89 15 a0 12 00 00    	mov    %edx,0x12a0
    p->s.size += bp->s.size;
 9a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9a8:	89 0a                	mov    %ecx,(%edx)
}
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9bc:	8b 3d a0 12 00 00    	mov    0x12a0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c2:	8d 70 07             	lea    0x7(%eax),%esi
 9c5:	c1 ee 03             	shr    $0x3,%esi
 9c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9cb:	85 ff                	test   %edi,%edi
 9cd:	0f 84 9d 00 00 00    	je     a70 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9d8:	39 f1                	cmp    %esi,%ecx
 9da:	73 6a                	jae    a46 <malloc+0x96>
 9dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9e1:	39 de                	cmp    %ebx,%esi
 9e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9f0:	eb 17                	jmp    a09 <malloc+0x59>
 9f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9fa:	8b 48 04             	mov    0x4(%eax),%ecx
 9fd:	39 f1                	cmp    %esi,%ecx
 9ff:	73 4f                	jae    a50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a01:	8b 3d a0 12 00 00    	mov    0x12a0,%edi
 a07:	89 c2                	mov    %eax,%edx
 a09:	39 d7                	cmp    %edx,%edi
 a0b:	75 eb                	jne    9f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a0d:	83 ec 0c             	sub    $0xc,%esp
 a10:	ff 75 e4             	push   -0x1c(%ebp)
 a13:	e8 83 fc ff ff       	call   69b <sbrk>
  if(p == (char*)-1)
 a18:	83 c4 10             	add    $0x10,%esp
 a1b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a1e:	74 1c                	je     a3c <malloc+0x8c>
  hp->s.size = nu;
 a20:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a23:	83 ec 0c             	sub    $0xc,%esp
 a26:	83 c0 08             	add    $0x8,%eax
 a29:	50                   	push   %eax
 a2a:	e8 f1 fe ff ff       	call   920 <free>
  return freep;
 a2f:	8b 15 a0 12 00 00    	mov    0x12a0,%edx
      if((p = morecore(nunits)) == 0)
 a35:	83 c4 10             	add    $0x10,%esp
 a38:	85 d2                	test   %edx,%edx
 a3a:	75 bc                	jne    9f8 <malloc+0x48>
        return 0;
  }
}
 a3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a3f:	31 c0                	xor    %eax,%eax
}
 a41:	5b                   	pop    %ebx
 a42:	5e                   	pop    %esi
 a43:	5f                   	pop    %edi
 a44:	5d                   	pop    %ebp
 a45:	c3                   	ret    
    if(p->s.size >= nunits){
 a46:	89 d0                	mov    %edx,%eax
 a48:	89 fa                	mov    %edi,%edx
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a50:	39 ce                	cmp    %ecx,%esi
 a52:	74 4c                	je     aa0 <malloc+0xf0>
        p->s.size -= nunits;
 a54:	29 f1                	sub    %esi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a5f:	89 15 a0 12 00 00    	mov    %edx,0x12a0
}
 a65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a68:	83 c0 08             	add    $0x8,%eax
}
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a70:	c7 05 a0 12 00 00 a4 	movl   $0x12a4,0x12a0
 a77:	12 00 00 
    base.s.size = 0;
 a7a:	bf a4 12 00 00       	mov    $0x12a4,%edi
    base.s.ptr = freep = prevp = &base;
 a7f:	c7 05 a4 12 00 00 a4 	movl   $0x12a4,0x12a4
 a86:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a89:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a8b:	c7 05 a8 12 00 00 00 	movl   $0x0,0x12a8
 a92:	00 00 00 
    if(p->s.size >= nunits){
 a95:	e9 42 ff ff ff       	jmp    9dc <malloc+0x2c>
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 aa0:	8b 08                	mov    (%eax),%ecx
 aa2:	89 0a                	mov    %ecx,(%edx)
 aa4:	eb b9                	jmp    a5f <malloc+0xaf>
