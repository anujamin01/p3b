
_test_8:     file format elf32-i386


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
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 5a 06 00 00       	call   673 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 40 0f 00 00       	mov    %eax,0xf40
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 65 09 00 00       	call   990 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 c0 00 00 00    	je     f6 <main+0xf6>
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
  4b:	8d 45 e0             	lea    -0x20(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 dc             	lea    -0x24(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 27 06 00 00       	call   693 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 64                	jle    d9 <main+0xd9>

   sleep(250);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 fa 00 00 00       	push   $0xfa
  7d:	e8 01 06 00 00       	call   683 <sleep>
   assert(wait() == -1);
  82:	e8 74 05 00 00       	call   5fb <wait>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	83 c0 01             	add    $0x1,%eax
  8d:	0f 84 80 00 00 00    	je     113 <main+0x113>
  93:	6a 28                	push   $0x28
  95:	68 88 0a 00 00       	push   $0xa88
  9a:	68 91 0a 00 00       	push   $0xa91
  9f:	6a 01                	push   $0x1
  a1:	e8 ba 06 00 00       	call   760 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 f4 0a 00 00       	push   $0xaf4
   assert(clone_pid > 0);
  ae:	68 a4 0a 00 00       	push   $0xaa4
  b3:	6a 01                	push   $0x1
  b5:	e8 a6 06 00 00       	call   760 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 b8 0a 00 00       	push   $0xab8
  c1:	6a 01                	push   $0x1
  c3:	e8 98 06 00 00       	call   760 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 40 0f 00 00    	push   0xf40
  cf:	e8 4f 05 00 00       	call   623 <kill>
  d4:	e8 1a 05 00 00       	call   5f3 <exit>
  d9:	6a 25                	push   $0x25
  db:	68 88 0a 00 00       	push   $0xa88
  e0:	68 91 0a 00 00       	push   $0xa91
  e5:	6a 01                	push   $0x1
  e7:	e8 74 06 00 00       	call   760 <printf>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	68 e6 0a 00 00       	push   $0xae6
  f4:	eb b8                	jmp    ae <main+0xae>
   assert(p != NULL);
  f6:	6a 1d                	push   $0x1d
  f8:	68 88 0a 00 00       	push   $0xa88
  fd:	68 91 0a 00 00       	push   $0xa91
 102:	6a 01                	push   $0x1
 104:	e8 57 06 00 00       	call   760 <printf>
 109:	83 c4 0c             	add    $0xc,%esp
 10c:	68 dc 0a 00 00       	push   $0xadc
 111:	eb 9b                	jmp    ae <main+0xae>

   void *join_stack;
   int join_pid = join(&join_stack);
 113:	83 ec 0c             	sub    $0xc,%esp
 116:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 119:	50                   	push   %eax
 11a:	e8 7c 05 00 00       	call   69b <join>
   assert(join_pid == clone_pid);
 11f:	83 c4 10             	add    $0x10,%esp
 122:	39 c6                	cmp    %eax,%esi
 124:	74 20                	je     146 <main+0x146>
 126:	6a 2c                	push   $0x2c
 128:	68 88 0a 00 00       	push   $0xa88
 12d:	68 91 0a 00 00       	push   $0xa91
 132:	6a 01                	push   $0x1
 134:	e8 27 06 00 00       	call   760 <printf>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	68 01 0b 00 00       	push   $0xb01
 141:	e9 68 ff ff ff       	jmp    ae <main+0xae>
   assert(stack == join_stack);
 146:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 149:	74 20                	je     16b <main+0x16b>
 14b:	6a 2d                	push   $0x2d
 14d:	68 88 0a 00 00       	push   $0xa88
 152:	68 91 0a 00 00       	push   $0xa91
 157:	6a 01                	push   $0x1
 159:	e8 02 06 00 00       	call   760 <printf>
 15e:	83 c4 0c             	add    $0xc,%esp
 161:	68 17 0b 00 00       	push   $0xb17
 166:	e9 43 ff ff ff       	jmp    ae <main+0xae>
   assert(global == 2);
 16b:	83 3d 30 0f 00 00 02 	cmpl   $0x2,0xf30
 172:	74 20                	je     194 <main+0x194>
 174:	6a 2e                	push   $0x2e
 176:	68 88 0a 00 00       	push   $0xa88
 17b:	68 91 0a 00 00       	push   $0xa91
 180:	6a 01                	push   $0x1
 182:	e8 d9 05 00 00       	call   760 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 2b 0b 00 00       	push   $0xb2b
 18f:	e9 1a ff ff ff       	jmp    ae <main+0xae>

   printf(1, "TEST PASSED\n");
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	68 37 0b 00 00       	push   $0xb37
 19b:	6a 01                	push   $0x1
 19d:	e8 be 05 00 00       	call   760 <printf>
   free(p);
 1a2:	89 1c 24             	mov    %ebx,(%esp)
 1a5:	e8 56 07 00 00       	call   900 <free>
   exit();
 1aa:	e8 44 04 00 00       	call   5f3 <exit>
 1af:	90                   	nop

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1bb:	8b 45 08             	mov    0x8(%ebp),%eax
 1be:	83 38 2a             	cmpl   $0x2a,(%eax)
 1c1:	75 75                	jne    238 <worker+0x88>
   assert(tmp2 == 24);
 1c3:	83 fa 18             	cmp    $0x18,%edx
 1c6:	75 2a                	jne    1f2 <worker+0x42>
   assert(global == 1);
 1c8:	83 3d 30 0f 00 00 01 	cmpl   $0x1,0xf30
 1cf:	0f 84 80 00 00 00    	je     255 <worker+0xa5>
 1d5:	6a 3b                	push   $0x3b
 1d7:	68 88 0a 00 00       	push   $0xa88
 1dc:	68 91 0a 00 00       	push   $0xa91
 1e1:	6a 01                	push   $0x1
 1e3:	e8 78 05 00 00       	call   760 <printf>
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	68 d0 0a 00 00       	push   $0xad0
 1f0:	eb 1b                	jmp    20d <worker+0x5d>
   assert(tmp2 == 24);
 1f2:	6a 3a                	push   $0x3a
 1f4:	68 88 0a 00 00       	push   $0xa88
 1f9:	68 91 0a 00 00       	push   $0xa91
 1fe:	6a 01                	push   $0x1
 200:	e8 5b 05 00 00       	call   760 <printf>
 205:	83 c4 0c             	add    $0xc,%esp
 208:	68 c5 0a 00 00       	push   $0xac5
 20d:	68 a4 0a 00 00       	push   $0xaa4
 212:	6a 01                	push   $0x1
 214:	e8 47 05 00 00       	call   760 <printf>
 219:	58                   	pop    %eax
 21a:	5a                   	pop    %edx
 21b:	68 b8 0a 00 00       	push   $0xab8
 220:	6a 01                	push   $0x1
 222:	e8 39 05 00 00       	call   760 <printf>
 227:	59                   	pop    %ecx
 228:	ff 35 40 0f 00 00    	push   0xf40
 22e:	e8 f0 03 00 00       	call   623 <kill>
 233:	e8 bb 03 00 00       	call   5f3 <exit>
   assert(tmp1 == 42);
 238:	6a 39                	push   $0x39
 23a:	68 88 0a 00 00       	push   $0xa88
 23f:	68 91 0a 00 00       	push   $0xa91
 244:	6a 01                	push   $0x1
 246:	e8 15 05 00 00       	call   760 <printf>
 24b:	83 c4 0c             	add    $0xc,%esp
 24e:	68 99 0a 00 00       	push   $0xa99
 253:	eb b8                	jmp    20d <worker+0x5d>
   global++;
 255:	c7 05 30 0f 00 00 02 	movl   $0x2,0xf30
 25c:	00 00 00 
   exit();
 25f:	e8 8f 03 00 00       	call   5f3 <exit>
 264:	66 90                	xchg   %ax,%ax
 266:	66 90                	xchg   %ax,%ax
 268:	66 90                	xchg   %ax,%ax
 26a:	66 90                	xchg   %ax,%ax
 26c:	66 90                	xchg   %ax,%ax
 26e:	66 90                	xchg   %ax,%ax

00000270 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	56                   	push   %esi
 274:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 275:	31 db                	xor    %ebx,%ebx
 277:	eb 0f                	jmp    288 <thread_create+0x18>
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 280:	83 c3 01             	add    $0x1,%ebx
 283:	83 fb 40             	cmp    $0x40,%ebx
 286:	74 60                	je     2e8 <thread_create+0x78>
    if (inUse[i] == 0){
 288:	8b 04 9d 60 0f 00 00 	mov    0xf60(,%ebx,4),%eax
 28f:	85 c0                	test   %eax,%eax
 291:	75 ed                	jne    280 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 293:	a1 34 0f 00 00       	mov    0xf34,%eax
 298:	83 ec 0c             	sub    $0xc,%esp
 29b:	01 c0                	add    %eax,%eax
 29d:	50                   	push   %eax
 29e:	e8 ed 06 00 00       	call   990 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 2a3:	8b 35 34 0f 00 00    	mov    0xf34,%esi
 2a9:	83 c4 10             	add    $0x10,%esp
 2ac:	99                   	cltd   
      malloc_addrs[i] = stack;
 2ad:	89 04 9d 60 10 00 00 	mov    %eax,0x1060(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 2b4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 2b6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 2b8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 2bb:	29 d6                	sub    %edx,%esi
 2bd:	01 f1                	add    %esi,%ecx
 2bf:	85 d2                	test   %edx,%edx
 2c1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 2c4:	51                   	push   %ecx
 2c5:	ff 75 10             	push   0x10(%ebp)
 2c8:	ff 75 0c             	push   0xc(%ebp)
 2cb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 2ce:	89 0c 9d 60 11 00 00 	mov    %ecx,0x1160(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 2d5:	e8 b9 03 00 00       	call   693 <clone>
 2da:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 2dd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2e0:	5b                   	pop    %ebx
 2e1:	5e                   	pop    %esi
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 2eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 2f0:	5b                   	pop    %ebx
 2f1:	5e                   	pop    %esi
 2f2:	5d                   	pop    %ebp
 2f3:	c3                   	ret    
 2f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ff:	90                   	nop

00000300 <thread_join>:

int 
thread_join()
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	56                   	push   %esi
 304:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 305:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 308:	31 db                	xor    %ebx,%ebx
{
 30a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 30d:	50                   	push   %eax
 30e:	e8 88 03 00 00       	call   69b <join>
 313:	83 c4 10             	add    $0x10,%esp
 316:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 318:	eb 0e                	jmp    328 <thread_join+0x28>
 31a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 320:	83 c3 01             	add    $0x1,%ebx
 323:	83 fb 40             	cmp    $0x40,%ebx
 326:	74 27                	je     34f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 328:	83 3c 9d 60 0f 00 00 	cmpl   $0x1,0xf60(,%ebx,4)
 32f:	01 
 330:	75 ee                	jne    320 <thread_join+0x20>
      free(malloc_addrs[i]);
 332:	83 ec 0c             	sub    $0xc,%esp
 335:	ff 34 9d 60 10 00 00 	push   0x1060(,%ebx,4)
 33c:	e8 bf 05 00 00       	call   900 <free>
      inUse[i] = 0;
      break;
 341:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 344:	c7 04 9d 60 0f 00 00 	movl   $0x0,0xf60(,%ebx,4)
 34b:	00 00 00 00 
    }
  }
  return id;
}
 34f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 352:	89 f0                	mov    %esi,%eax
 354:	5b                   	pop    %ebx
 355:	5e                   	pop    %esi
 356:	5d                   	pop    %ebp
 357:	c3                   	ret    
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <lock_init>:

void lock_init(lock_t *lock){
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 363:	8b 45 08             	mov    0x8(%ebp),%eax
 366:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 36c:	5d                   	pop    %ebp
 36d:	c3                   	ret    
 36e:	66 90                	xchg   %ax,%ax

00000370 <lock_acquire>:

void lock_acquire(lock_t *lock){
 370:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 371:	b9 01 00 00 00       	mov    $0x1,%ecx
 376:	89 e5                	mov    %esp,%ebp
 378:	8b 55 08             	mov    0x8(%ebp),%edx
 37b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop
 380:	89 c8                	mov    %ecx,%eax
 382:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 385:	85 c0                	test   %eax,%eax
 387:	75 f7                	jne    380 <lock_acquire+0x10>
}
 389:	5d                   	pop    %ebp
 38a:	c3                   	ret    
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <lock_release>:

void lock_release(lock_t *lock){
 390:	55                   	push   %ebp
 391:	31 c0                	xor    %eax,%eax
 393:	89 e5                	mov    %esp,%ebp
 395:	8b 55 08             	mov    0x8(%ebp),%edx
 398:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 39b:	5d                   	pop    %ebp
 39c:	c3                   	ret    
 39d:	8d 76 00             	lea    0x0(%esi),%esi

000003a0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 3a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3a1:	31 c0                	xor    %eax,%eax
{
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	53                   	push   %ebx
 3a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3b7:	83 c0 01             	add    $0x1,%eax
 3ba:	84 d2                	test   %dl,%dl
 3bc:	75 f2                	jne    3b0 <strcpy+0x10>
    ;
  return os;
}
 3be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c1:	89 c8                	mov    %ecx,%eax
 3c3:	c9                   	leave  
 3c4:	c3                   	ret    
 3c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
 3d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3da:	0f b6 02             	movzbl (%edx),%eax
 3dd:	84 c0                	test   %al,%al
 3df:	75 17                	jne    3f8 <strcmp+0x28>
 3e1:	eb 3a                	jmp    41d <strcmp+0x4d>
 3e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e7:	90                   	nop
 3e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ec:	83 c2 01             	add    $0x1,%edx
 3ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3f2:	84 c0                	test   %al,%al
 3f4:	74 1a                	je     410 <strcmp+0x40>
    p++, q++;
 3f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3f8:	0f b6 19             	movzbl (%ecx),%ebx
 3fb:	38 c3                	cmp    %al,%bl
 3fd:	74 e9                	je     3e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3ff:	29 d8                	sub    %ebx,%eax
}
 401:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 404:	c9                   	leave  
 405:	c3                   	ret    
 406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 410:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 414:	31 c0                	xor    %eax,%eax
 416:	29 d8                	sub    %ebx,%eax
}
 418:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 41b:	c9                   	leave  
 41c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 41d:	0f b6 19             	movzbl (%ecx),%ebx
 420:	31 c0                	xor    %eax,%eax
 422:	eb db                	jmp    3ff <strcmp+0x2f>
 424:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop

00000430 <strlen>:

uint
strlen(const char *s)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 436:	80 3a 00             	cmpb   $0x0,(%edx)
 439:	74 15                	je     450 <strlen+0x20>
 43b:	31 c0                	xor    %eax,%eax
 43d:	8d 76 00             	lea    0x0(%esi),%esi
 440:	83 c0 01             	add    $0x1,%eax
 443:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 447:	89 c1                	mov    %eax,%ecx
 449:	75 f5                	jne    440 <strlen+0x10>
    ;
  return n;
}
 44b:	89 c8                	mov    %ecx,%eax
 44d:	5d                   	pop    %ebp
 44e:	c3                   	ret    
 44f:	90                   	nop
  for(n = 0; s[n]; n++)
 450:	31 c9                	xor    %ecx,%ecx
}
 452:	5d                   	pop    %ebp
 453:	89 c8                	mov    %ecx,%eax
 455:	c3                   	ret    
 456:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45d:	8d 76 00             	lea    0x0(%esi),%esi

00000460 <memset>:

void*
memset(void *dst, int c, uint n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 467:	8b 4d 10             	mov    0x10(%ebp),%ecx
 46a:	8b 45 0c             	mov    0xc(%ebp),%eax
 46d:	89 d7                	mov    %edx,%edi
 46f:	fc                   	cld    
 470:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 472:	8b 7d fc             	mov    -0x4(%ebp),%edi
 475:	89 d0                	mov    %edx,%eax
 477:	c9                   	leave  
 478:	c3                   	ret    
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <strchr>:

char*
strchr(const char *s, char c)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 48a:	0f b6 10             	movzbl (%eax),%edx
 48d:	84 d2                	test   %dl,%dl
 48f:	75 12                	jne    4a3 <strchr+0x23>
 491:	eb 1d                	jmp    4b0 <strchr+0x30>
 493:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 497:	90                   	nop
 498:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 49c:	83 c0 01             	add    $0x1,%eax
 49f:	84 d2                	test   %dl,%dl
 4a1:	74 0d                	je     4b0 <strchr+0x30>
    if(*s == c)
 4a3:	38 d1                	cmp    %dl,%cl
 4a5:	75 f1                	jne    498 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4a7:	5d                   	pop    %ebp
 4a8:	c3                   	ret    
 4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4b0:	31 c0                	xor    %eax,%eax
}
 4b2:	5d                   	pop    %ebp
 4b3:	c3                   	ret    
 4b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <gets>:

char*
gets(char *buf, int max)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4c5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4c9:	31 db                	xor    %ebx,%ebx
{
 4cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4ce:	eb 27                	jmp    4f7 <gets+0x37>
    cc = read(0, &c, 1);
 4d0:	83 ec 04             	sub    $0x4,%esp
 4d3:	6a 01                	push   $0x1
 4d5:	57                   	push   %edi
 4d6:	6a 00                	push   $0x0
 4d8:	e8 2e 01 00 00       	call   60b <read>
    if(cc < 1)
 4dd:	83 c4 10             	add    $0x10,%esp
 4e0:	85 c0                	test   %eax,%eax
 4e2:	7e 1d                	jle    501 <gets+0x41>
      break;
    buf[i++] = c;
 4e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4ef:	3c 0a                	cmp    $0xa,%al
 4f1:	74 1d                	je     510 <gets+0x50>
 4f3:	3c 0d                	cmp    $0xd,%al
 4f5:	74 19                	je     510 <gets+0x50>
  for(i=0; i+1 < max; ){
 4f7:	89 de                	mov    %ebx,%esi
 4f9:	83 c3 01             	add    $0x1,%ebx
 4fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ff:	7c cf                	jl     4d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 501:	8b 45 08             	mov    0x8(%ebp),%eax
 504:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 508:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50b:	5b                   	pop    %ebx
 50c:	5e                   	pop    %esi
 50d:	5f                   	pop    %edi
 50e:	5d                   	pop    %ebp
 50f:	c3                   	ret    
  buf[i] = '\0';
 510:	8b 45 08             	mov    0x8(%ebp),%eax
 513:	89 de                	mov    %ebx,%esi
 515:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 519:	8d 65 f4             	lea    -0xc(%ebp),%esp
 51c:	5b                   	pop    %ebx
 51d:	5e                   	pop    %esi
 51e:	5f                   	pop    %edi
 51f:	5d                   	pop    %ebp
 520:	c3                   	ret    
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 528:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <stat>:

int
stat(const char *n, struct stat *st)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	56                   	push   %esi
 534:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 535:	83 ec 08             	sub    $0x8,%esp
 538:	6a 00                	push   $0x0
 53a:	ff 75 08             	push   0x8(%ebp)
 53d:	e8 f1 00 00 00       	call   633 <open>
  if(fd < 0)
 542:	83 c4 10             	add    $0x10,%esp
 545:	85 c0                	test   %eax,%eax
 547:	78 27                	js     570 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 549:	83 ec 08             	sub    $0x8,%esp
 54c:	ff 75 0c             	push   0xc(%ebp)
 54f:	89 c3                	mov    %eax,%ebx
 551:	50                   	push   %eax
 552:	e8 f4 00 00 00       	call   64b <fstat>
  close(fd);
 557:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 55a:	89 c6                	mov    %eax,%esi
  close(fd);
 55c:	e8 ba 00 00 00       	call   61b <close>
  return r;
 561:	83 c4 10             	add    $0x10,%esp
}
 564:	8d 65 f8             	lea    -0x8(%ebp),%esp
 567:	89 f0                	mov    %esi,%eax
 569:	5b                   	pop    %ebx
 56a:	5e                   	pop    %esi
 56b:	5d                   	pop    %ebp
 56c:	c3                   	ret    
 56d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 570:	be ff ff ff ff       	mov    $0xffffffff,%esi
 575:	eb ed                	jmp    564 <stat+0x34>
 577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57e:	66 90                	xchg   %ax,%ax

00000580 <atoi>:

int
atoi(const char *s)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	53                   	push   %ebx
 584:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 587:	0f be 02             	movsbl (%edx),%eax
 58a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 58d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 590:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 595:	77 1e                	ja     5b5 <atoi+0x35>
 597:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5a0:	83 c2 01             	add    $0x1,%edx
 5a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5aa:	0f be 02             	movsbl (%edx),%eax
 5ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5b0:	80 fb 09             	cmp    $0x9,%bl
 5b3:	76 eb                	jbe    5a0 <atoi+0x20>
  return n;
}
 5b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5b8:	89 c8                	mov    %ecx,%eax
 5ba:	c9                   	leave  
 5bb:	c3                   	ret    
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	8b 45 10             	mov    0x10(%ebp),%eax
 5c7:	8b 55 08             	mov    0x8(%ebp),%edx
 5ca:	56                   	push   %esi
 5cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ce:	85 c0                	test   %eax,%eax
 5d0:	7e 13                	jle    5e5 <memmove+0x25>
 5d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5d4:	89 d7                	mov    %edx,%edi
 5d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5e1:	39 f8                	cmp    %edi,%eax
 5e3:	75 fb                	jne    5e0 <memmove+0x20>
  return vdst;
}
 5e5:	5e                   	pop    %esi
 5e6:	89 d0                	mov    %edx,%eax
 5e8:	5f                   	pop    %edi
 5e9:	5d                   	pop    %ebp
 5ea:	c3                   	ret    

000005eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5eb:	b8 01 00 00 00       	mov    $0x1,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    

000005f3 <exit>:
SYSCALL(exit)
 5f3:	b8 02 00 00 00       	mov    $0x2,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret    

000005fb <wait>:
SYSCALL(wait)
 5fb:	b8 03 00 00 00       	mov    $0x3,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret    

00000603 <pipe>:
SYSCALL(pipe)
 603:	b8 04 00 00 00       	mov    $0x4,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret    

0000060b <read>:
SYSCALL(read)
 60b:	b8 05 00 00 00       	mov    $0x5,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <write>:
SYSCALL(write)
 613:	b8 10 00 00 00       	mov    $0x10,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <close>:
SYSCALL(close)
 61b:	b8 15 00 00 00       	mov    $0x15,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <kill>:
SYSCALL(kill)
 623:	b8 06 00 00 00       	mov    $0x6,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <exec>:
SYSCALL(exec)
 62b:	b8 07 00 00 00       	mov    $0x7,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <open>:
SYSCALL(open)
 633:	b8 0f 00 00 00       	mov    $0xf,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <mknod>:
SYSCALL(mknod)
 63b:	b8 11 00 00 00       	mov    $0x11,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <unlink>:
SYSCALL(unlink)
 643:	b8 12 00 00 00       	mov    $0x12,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <fstat>:
SYSCALL(fstat)
 64b:	b8 08 00 00 00       	mov    $0x8,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <link>:
SYSCALL(link)
 653:	b8 13 00 00 00       	mov    $0x13,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <mkdir>:
SYSCALL(mkdir)
 65b:	b8 14 00 00 00       	mov    $0x14,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <chdir>:
SYSCALL(chdir)
 663:	b8 09 00 00 00       	mov    $0x9,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <dup>:
SYSCALL(dup)
 66b:	b8 0a 00 00 00       	mov    $0xa,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <getpid>:
SYSCALL(getpid)
 673:	b8 0b 00 00 00       	mov    $0xb,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <sbrk>:
SYSCALL(sbrk)
 67b:	b8 0c 00 00 00       	mov    $0xc,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <sleep>:
SYSCALL(sleep)
 683:	b8 0d 00 00 00       	mov    $0xd,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <uptime>:
SYSCALL(uptime)
 68b:	b8 0e 00 00 00       	mov    $0xe,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <clone>:
SYSCALL(clone)
 693:	b8 16 00 00 00       	mov    $0x16,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <join>:
SYSCALL(join)
 69b:	b8 17 00 00 00       	mov    $0x17,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    
 6a3:	66 90                	xchg   %ax,%ax
 6a5:	66 90                	xchg   %ax,%ax
 6a7:	66 90                	xchg   %ax,%ax
 6a9:	66 90                	xchg   %ax,%ax
 6ab:	66 90                	xchg   %ax,%ax
 6ad:	66 90                	xchg   %ax,%ax
 6af:	90                   	nop

000006b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 3c             	sub    $0x3c,%esp
 6b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6bc:	89 d1                	mov    %edx,%ecx
{
 6be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6c1:	85 d2                	test   %edx,%edx
 6c3:	0f 89 7f 00 00 00    	jns    748 <printint+0x98>
 6c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6cd:	74 79                	je     748 <printint+0x98>
    neg = 1;
 6cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6d8:	31 db                	xor    %ebx,%ebx
 6da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6e0:	89 c8                	mov    %ecx,%eax
 6e2:	31 d2                	xor    %edx,%edx
 6e4:	89 cf                	mov    %ecx,%edi
 6e6:	f7 75 c4             	divl   -0x3c(%ebp)
 6e9:	0f b6 92 a4 0b 00 00 	movzbl 0xba4(%edx),%edx
 6f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6f3:	89 d8                	mov    %ebx,%eax
 6f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 701:	76 dd                	jbe    6e0 <printint+0x30>
  if(neg)
 703:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 706:	85 c9                	test   %ecx,%ecx
 708:	74 0c                	je     716 <printint+0x66>
    buf[i++] = '-';
 70a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 70f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 711:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 716:	8b 7d b8             	mov    -0x48(%ebp),%edi
 719:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 71d:	eb 07                	jmp    726 <printint+0x76>
 71f:	90                   	nop
    putc(fd, buf[i]);
 720:	0f b6 13             	movzbl (%ebx),%edx
 723:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 726:	83 ec 04             	sub    $0x4,%esp
 729:	88 55 d7             	mov    %dl,-0x29(%ebp)
 72c:	6a 01                	push   $0x1
 72e:	56                   	push   %esi
 72f:	57                   	push   %edi
 730:	e8 de fe ff ff       	call   613 <write>
  while(--i >= 0)
 735:	83 c4 10             	add    $0x10,%esp
 738:	39 de                	cmp    %ebx,%esi
 73a:	75 e4                	jne    720 <printint+0x70>
}
 73c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 73f:	5b                   	pop    %ebx
 740:	5e                   	pop    %esi
 741:	5f                   	pop    %edi
 742:	5d                   	pop    %ebp
 743:	c3                   	ret    
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 748:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 74f:	eb 87                	jmp    6d8 <printint+0x28>
 751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop

00000760 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 769:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 76c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 76f:	0f b6 13             	movzbl (%ebx),%edx
 772:	84 d2                	test   %dl,%dl
 774:	74 6a                	je     7e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 776:	8d 45 10             	lea    0x10(%ebp),%eax
 779:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 77c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 77f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 781:	89 45 d0             	mov    %eax,-0x30(%ebp)
 784:	eb 36                	jmp    7bc <printf+0x5c>
 786:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
 790:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 793:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	74 15                	je     7b2 <printf+0x52>
  write(fd, &c, 1);
 79d:	83 ec 04             	sub    $0x4,%esp
 7a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7a3:	6a 01                	push   $0x1
 7a5:	57                   	push   %edi
 7a6:	56                   	push   %esi
 7a7:	e8 67 fe ff ff       	call   613 <write>
 7ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7b2:	0f b6 13             	movzbl (%ebx),%edx
 7b5:	83 c3 01             	add    $0x1,%ebx
 7b8:	84 d2                	test   %dl,%dl
 7ba:	74 24                	je     7e0 <printf+0x80>
    c = fmt[i] & 0xff;
 7bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7bf:	85 c9                	test   %ecx,%ecx
 7c1:	74 cd                	je     790 <printf+0x30>
      }
    } else if(state == '%'){
 7c3:	83 f9 25             	cmp    $0x25,%ecx
 7c6:	75 ea                	jne    7b2 <printf+0x52>
      if(c == 'd'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	0f 84 07 01 00 00    	je     8d8 <printf+0x178>
 7d1:	83 e8 63             	sub    $0x63,%eax
 7d4:	83 f8 15             	cmp    $0x15,%eax
 7d7:	77 17                	ja     7f0 <printf+0x90>
 7d9:	ff 24 85 4c 0b 00 00 	jmp    *0xb4c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7e3:	5b                   	pop    %ebx
 7e4:	5e                   	pop    %esi
 7e5:	5f                   	pop    %edi
 7e6:	5d                   	pop    %ebp
 7e7:	c3                   	ret    
 7e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop
  write(fd, &c, 1);
 7f0:	83 ec 04             	sub    $0x4,%esp
 7f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7f6:	6a 01                	push   $0x1
 7f8:	57                   	push   %edi
 7f9:	56                   	push   %esi
 7fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7fe:	e8 10 fe ff ff       	call   613 <write>
        putc(fd, c);
 803:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 807:	83 c4 0c             	add    $0xc,%esp
 80a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 80d:	6a 01                	push   $0x1
 80f:	57                   	push   %edi
 810:	56                   	push   %esi
 811:	e8 fd fd ff ff       	call   613 <write>
        putc(fd, c);
 816:	83 c4 10             	add    $0x10,%esp
      state = 0;
 819:	31 c9                	xor    %ecx,%ecx
 81b:	eb 95                	jmp    7b2 <printf+0x52>
 81d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 820:	83 ec 0c             	sub    $0xc,%esp
 823:	b9 10 00 00 00       	mov    $0x10,%ecx
 828:	6a 00                	push   $0x0
 82a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 82d:	8b 10                	mov    (%eax),%edx
 82f:	89 f0                	mov    %esi,%eax
 831:	e8 7a fe ff ff       	call   6b0 <printint>
        ap++;
 836:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 83a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 83d:	31 c9                	xor    %ecx,%ecx
 83f:	e9 6e ff ff ff       	jmp    7b2 <printf+0x52>
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 848:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84b:	8b 10                	mov    (%eax),%edx
        ap++;
 84d:	83 c0 04             	add    $0x4,%eax
 850:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 853:	85 d2                	test   %edx,%edx
 855:	0f 84 8d 00 00 00    	je     8e8 <printf+0x188>
        while(*s != 0){
 85b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 85e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 860:	84 c0                	test   %al,%al
 862:	0f 84 4a ff ff ff    	je     7b2 <printf+0x52>
 868:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 86b:	89 d3                	mov    %edx,%ebx
 86d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 870:	83 ec 04             	sub    $0x4,%esp
          s++;
 873:	83 c3 01             	add    $0x1,%ebx
 876:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 879:	6a 01                	push   $0x1
 87b:	57                   	push   %edi
 87c:	56                   	push   %esi
 87d:	e8 91 fd ff ff       	call   613 <write>
        while(*s != 0){
 882:	0f b6 03             	movzbl (%ebx),%eax
 885:	83 c4 10             	add    $0x10,%esp
 888:	84 c0                	test   %al,%al
 88a:	75 e4                	jne    870 <printf+0x110>
      state = 0;
 88c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 88f:	31 c9                	xor    %ecx,%ecx
 891:	e9 1c ff ff ff       	jmp    7b2 <printf+0x52>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8a0:	83 ec 0c             	sub    $0xc,%esp
 8a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8a8:	6a 01                	push   $0x1
 8aa:	e9 7b ff ff ff       	jmp    82a <printf+0xca>
 8af:	90                   	nop
        putc(fd, *ap);
 8b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8b8:	6a 01                	push   $0x1
 8ba:	57                   	push   %edi
 8bb:	56                   	push   %esi
        putc(fd, *ap);
 8bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8bf:	e8 4f fd ff ff       	call   613 <write>
        ap++;
 8c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8cb:	31 c9                	xor    %ecx,%ecx
 8cd:	e9 e0 fe ff ff       	jmp    7b2 <printf+0x52>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8db:	83 ec 04             	sub    $0x4,%esp
 8de:	e9 2a ff ff ff       	jmp    80d <printf+0xad>
 8e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8e7:	90                   	nop
          s = "(null)";
 8e8:	ba 44 0b 00 00       	mov    $0xb44,%edx
        while(*s != 0){
 8ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8f0:	b8 28 00 00 00       	mov    $0x28,%eax
 8f5:	89 d3                	mov    %edx,%ebx
 8f7:	e9 74 ff ff ff       	jmp    870 <printf+0x110>
 8fc:	66 90                	xchg   %ax,%ax
 8fe:	66 90                	xchg   %ax,%ax

00000900 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 900:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 901:	a1 60 12 00 00       	mov    0x1260,%eax
{
 906:	89 e5                	mov    %esp,%ebp
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	53                   	push   %ebx
 90b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 90e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 918:	89 c2                	mov    %eax,%edx
 91a:	8b 00                	mov    (%eax),%eax
 91c:	39 ca                	cmp    %ecx,%edx
 91e:	73 30                	jae    950 <free+0x50>
 920:	39 c1                	cmp    %eax,%ecx
 922:	72 04                	jb     928 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 924:	39 c2                	cmp    %eax,%edx
 926:	72 f0                	jb     918 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	74 30                	je     962 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 932:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 935:	8b 42 04             	mov    0x4(%edx),%eax
 938:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 93b:	39 f1                	cmp    %esi,%ecx
 93d:	74 3a                	je     979 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 93f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 941:	5b                   	pop    %ebx
  freep = p;
 942:	89 15 60 12 00 00    	mov    %edx,0x1260
}
 948:	5e                   	pop    %esi
 949:	5f                   	pop    %edi
 94a:	5d                   	pop    %ebp
 94b:	c3                   	ret    
 94c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 950:	39 c2                	cmp    %eax,%edx
 952:	72 c4                	jb     918 <free+0x18>
 954:	39 c1                	cmp    %eax,%ecx
 956:	73 c0                	jae    918 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	75 d0                	jne    932 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 962:	03 70 04             	add    0x4(%eax),%esi
 965:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 968:	8b 02                	mov    (%edx),%eax
 96a:	8b 00                	mov    (%eax),%eax
 96c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 96f:	8b 42 04             	mov    0x4(%edx),%eax
 972:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 975:	39 f1                	cmp    %esi,%ecx
 977:	75 c6                	jne    93f <free+0x3f>
    p->s.size += bp->s.size;
 979:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 97c:	89 15 60 12 00 00    	mov    %edx,0x1260
    p->s.size += bp->s.size;
 982:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 985:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 988:	89 0a                	mov    %ecx,(%edx)
}
 98a:	5b                   	pop    %ebx
 98b:	5e                   	pop    %esi
 98c:	5f                   	pop    %edi
 98d:	5d                   	pop    %ebp
 98e:	c3                   	ret    
 98f:	90                   	nop

00000990 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 990:	55                   	push   %ebp
 991:	89 e5                	mov    %esp,%ebp
 993:	57                   	push   %edi
 994:	56                   	push   %esi
 995:	53                   	push   %ebx
 996:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 999:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 99c:	8b 3d 60 12 00 00    	mov    0x1260,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a2:	8d 70 07             	lea    0x7(%eax),%esi
 9a5:	c1 ee 03             	shr    $0x3,%esi
 9a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9ab:	85 ff                	test   %edi,%edi
 9ad:	0f 84 9d 00 00 00    	je     a50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9b8:	39 f1                	cmp    %esi,%ecx
 9ba:	73 6a                	jae    a26 <malloc+0x96>
 9bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9c1:	39 de                	cmp    %ebx,%esi
 9c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9d0:	eb 17                	jmp    9e9 <malloc+0x59>
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9da:	8b 48 04             	mov    0x4(%eax),%ecx
 9dd:	39 f1                	cmp    %esi,%ecx
 9df:	73 4f                	jae    a30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9e1:	8b 3d 60 12 00 00    	mov    0x1260,%edi
 9e7:	89 c2                	mov    %eax,%edx
 9e9:	39 d7                	cmp    %edx,%edi
 9eb:	75 eb                	jne    9d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ed:	83 ec 0c             	sub    $0xc,%esp
 9f0:	ff 75 e4             	push   -0x1c(%ebp)
 9f3:	e8 83 fc ff ff       	call   67b <sbrk>
  if(p == (char*)-1)
 9f8:	83 c4 10             	add    $0x10,%esp
 9fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9fe:	74 1c                	je     a1c <malloc+0x8c>
  hp->s.size = nu;
 a00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a03:	83 ec 0c             	sub    $0xc,%esp
 a06:	83 c0 08             	add    $0x8,%eax
 a09:	50                   	push   %eax
 a0a:	e8 f1 fe ff ff       	call   900 <free>
  return freep;
 a0f:	8b 15 60 12 00 00    	mov    0x1260,%edx
      if((p = morecore(nunits)) == 0)
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	85 d2                	test   %edx,%edx
 a1a:	75 bc                	jne    9d8 <malloc+0x48>
        return 0;
  }
}
 a1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a1f:	31 c0                	xor    %eax,%eax
}
 a21:	5b                   	pop    %ebx
 a22:	5e                   	pop    %esi
 a23:	5f                   	pop    %edi
 a24:	5d                   	pop    %ebp
 a25:	c3                   	ret    
    if(p->s.size >= nunits){
 a26:	89 d0                	mov    %edx,%eax
 a28:	89 fa                	mov    %edi,%edx
 a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a30:	39 ce                	cmp    %ecx,%esi
 a32:	74 4c                	je     a80 <malloc+0xf0>
        p->s.size -= nunits;
 a34:	29 f1                	sub    %esi,%ecx
 a36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a3f:	89 15 60 12 00 00    	mov    %edx,0x1260
}
 a45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a48:	83 c0 08             	add    $0x8,%eax
}
 a4b:	5b                   	pop    %ebx
 a4c:	5e                   	pop    %esi
 a4d:	5f                   	pop    %edi
 a4e:	5d                   	pop    %ebp
 a4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a50:	c7 05 60 12 00 00 64 	movl   $0x1264,0x1260
 a57:	12 00 00 
    base.s.size = 0;
 a5a:	bf 64 12 00 00       	mov    $0x1264,%edi
    base.s.ptr = freep = prevp = &base;
 a5f:	c7 05 64 12 00 00 64 	movl   $0x1264,0x1264
 a66:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a6b:	c7 05 68 12 00 00 00 	movl   $0x0,0x1268
 a72:	00 00 00 
    if(p->s.size >= nunits){
 a75:	e9 42 ff ff ff       	jmp    9bc <malloc+0x2c>
 a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a80:	8b 08                	mov    (%eax),%ecx
 a82:	89 0a                	mov    %ecx,(%edx)
 a84:	eb b9                	jmp    a3f <malloc+0xaf>
