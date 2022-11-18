
_test_5:     file format elf32-i386


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
  14:	e8 2a 06 00 00       	call   643 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 00 0f 00 00       	mov    %eax,0xf00
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 35 09 00 00       	call   960 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 00 01 00 00    	je     136 <main+0x136>
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
  54:	68 80 01 00 00       	push   $0x180
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 f7 05 00 00       	call   663 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 59                	jle    ce <main+0xce>

   void *join_stack;
   int join_pid = join(&join_stack);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7b:	50                   	push   %eax
  7c:	e8 ea 05 00 00       	call   66b <join>
   assert(join_pid == clone_pid);
  81:	83 c4 10             	add    $0x10,%esp
  84:	39 c6                	cmp    %eax,%esi
  86:	74 63                	je     eb <main+0xeb>
  88:	6a 29                	push   $0x29
  8a:	68 58 0a 00 00       	push   $0xa58
  8f:	68 61 0a 00 00       	push   $0xa61
  94:	6a 01                	push   $0x1
  96:	e8 95 06 00 00       	call   730 <printf>
  9b:	83 c4 0c             	add    $0xc,%esp
  9e:	68 c4 0a 00 00       	push   $0xac4
   assert(clone_pid > 0);
  a3:	68 74 0a 00 00       	push   $0xa74
  a8:	6a 01                	push   $0x1
  aa:	e8 81 06 00 00       	call   730 <printf>
  af:	5a                   	pop    %edx
  b0:	59                   	pop    %ecx
  b1:	68 88 0a 00 00       	push   $0xa88
  b6:	6a 01                	push   $0x1
  b8:	e8 73 06 00 00       	call   730 <printf>
  bd:	5b                   	pop    %ebx
  be:	ff 35 00 0f 00 00    	push   0xf00
  c4:	e8 2a 05 00 00       	call   5f3 <kill>
  c9:	e8 f5 04 00 00       	call   5c3 <exit>
  ce:	6a 25                	push   $0x25
  d0:	68 58 0a 00 00       	push   $0xa58
  d5:	68 61 0a 00 00       	push   $0xa61
  da:	6a 01                	push   $0x1
  dc:	e8 4f 06 00 00       	call   730 <printf>
  e1:	83 c4 0c             	add    $0xc,%esp
  e4:	68 b6 0a 00 00       	push   $0xab6
  e9:	eb b8                	jmp    a3 <main+0xa3>
   assert(stack == join_stack);
  eb:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  ee:	74 1d                	je     10d <main+0x10d>
  f0:	6a 2a                	push   $0x2a
  f2:	68 58 0a 00 00       	push   $0xa58
  f7:	68 61 0a 00 00       	push   $0xa61
  fc:	6a 01                	push   $0x1
  fe:	e8 2d 06 00 00       	call   730 <printf>
 103:	83 c4 0c             	add    $0xc,%esp
 106:	68 da 0a 00 00       	push   $0xada
 10b:	eb 96                	jmp    a3 <main+0xa3>
   assert(global == 2);
 10d:	83 3d f4 0e 00 00 02 	cmpl   $0x2,0xef4
 114:	74 40                	je     156 <main+0x156>
 116:	6a 2b                	push   $0x2b
 118:	68 58 0a 00 00       	push   $0xa58
 11d:	68 61 0a 00 00       	push   $0xa61
 122:	6a 01                	push   $0x1
 124:	e8 07 06 00 00       	call   730 <printf>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	68 ee 0a 00 00       	push   $0xaee
 131:	e9 6d ff ff ff       	jmp    a3 <main+0xa3>
   assert(p != NULL);
 136:	6a 1d                	push   $0x1d
 138:	68 58 0a 00 00       	push   $0xa58
 13d:	68 61 0a 00 00       	push   $0xa61
 142:	6a 01                	push   $0x1
 144:	e8 e7 05 00 00       	call   730 <printf>
 149:	83 c4 0c             	add    $0xc,%esp
 14c:	68 ac 0a 00 00       	push   $0xaac
 151:	e9 4d ff ff ff       	jmp    a3 <main+0xa3>
   
   printf(1, "TEST PASSED\n");
 156:	50                   	push   %eax
 157:	50                   	push   %eax
 158:	68 fa 0a 00 00       	push   $0xafa
 15d:	6a 01                	push   $0x1
 15f:	e8 cc 05 00 00       	call   730 <printf>
   free(p);
 164:	89 1c 24             	mov    %ebx,(%esp)
 167:	e8 64 07 00 00       	call   8d0 <free>
   exit();
 16c:	e8 52 04 00 00       	call   5c3 <exit>
 171:	66 90                	xchg   %ax,%ax
 173:	66 90                	xchg   %ax,%ax
 175:	66 90                	xchg   %ax,%ax
 177:	66 90                	xchg   %ax,%ax
 179:	66 90                	xchg   %ax,%ax
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <worker>:
}

void
worker(void *arg1, void *arg2) {
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 186:	8b 45 0c             	mov    0xc(%ebp),%eax
 189:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 18b:	8b 45 08             	mov    0x8(%ebp),%eax
 18e:	83 38 2a             	cmpl   $0x2a,(%eax)
 191:	75 75                	jne    208 <worker+0x88>
   assert(tmp2 == 24);
 193:	83 fa 18             	cmp    $0x18,%edx
 196:	75 2a                	jne    1c2 <worker+0x42>
   assert(global == 1);
 198:	83 3d f4 0e 00 00 01 	cmpl   $0x1,0xef4
 19f:	0f 84 80 00 00 00    	je     225 <worker+0xa5>
 1a5:	6a 38                	push   $0x38
 1a7:	68 58 0a 00 00       	push   $0xa58
 1ac:	68 61 0a 00 00       	push   $0xa61
 1b1:	6a 01                	push   $0x1
 1b3:	e8 78 05 00 00       	call   730 <printf>
 1b8:	83 c4 0c             	add    $0xc,%esp
 1bb:	68 a0 0a 00 00       	push   $0xaa0
 1c0:	eb 1b                	jmp    1dd <worker+0x5d>
   assert(tmp2 == 24);
 1c2:	6a 37                	push   $0x37
 1c4:	68 58 0a 00 00       	push   $0xa58
 1c9:	68 61 0a 00 00       	push   $0xa61
 1ce:	6a 01                	push   $0x1
 1d0:	e8 5b 05 00 00       	call   730 <printf>
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	68 95 0a 00 00       	push   $0xa95
 1dd:	68 74 0a 00 00       	push   $0xa74
 1e2:	6a 01                	push   $0x1
 1e4:	e8 47 05 00 00       	call   730 <printf>
 1e9:	58                   	pop    %eax
 1ea:	5a                   	pop    %edx
 1eb:	68 88 0a 00 00       	push   $0xa88
 1f0:	6a 01                	push   $0x1
 1f2:	e8 39 05 00 00       	call   730 <printf>
 1f7:	59                   	pop    %ecx
 1f8:	ff 35 00 0f 00 00    	push   0xf00
 1fe:	e8 f0 03 00 00       	call   5f3 <kill>
 203:	e8 bb 03 00 00       	call   5c3 <exit>
   assert(tmp1 == 42);
 208:	6a 36                	push   $0x36
 20a:	68 58 0a 00 00       	push   $0xa58
 20f:	68 61 0a 00 00       	push   $0xa61
 214:	6a 01                	push   $0x1
 216:	e8 15 05 00 00       	call   730 <printf>
 21b:	83 c4 0c             	add    $0xc,%esp
 21e:	68 69 0a 00 00       	push   $0xa69
 223:	eb b8                	jmp    1dd <worker+0x5d>
   global++;
 225:	c7 05 f4 0e 00 00 02 	movl   $0x2,0xef4
 22c:	00 00 00 
   exit();
 22f:	e8 8f 03 00 00       	call   5c3 <exit>
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
 243:	56                   	push   %esi
 244:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 245:	31 db                	xor    %ebx,%ebx
 247:	eb 0f                	jmp    258 <thread_create+0x18>
 249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 250:	83 c3 01             	add    $0x1,%ebx
 253:	83 fb 40             	cmp    $0x40,%ebx
 256:	74 60                	je     2b8 <thread_create+0x78>
    if (inUse[i] == 0){
 258:	8b 04 9d 20 0f 00 00 	mov    0xf20(,%ebx,4),%eax
 25f:	85 c0                	test   %eax,%eax
 261:	75 ed                	jne    250 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 263:	a1 f8 0e 00 00       	mov    0xef8,%eax
 268:	83 ec 0c             	sub    $0xc,%esp
 26b:	01 c0                	add    %eax,%eax
 26d:	50                   	push   %eax
 26e:	e8 ed 06 00 00       	call   960 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 273:	8b 35 f8 0e 00 00    	mov    0xef8,%esi
 279:	83 c4 10             	add    $0x10,%esp
 27c:	99                   	cltd   
      malloc_addrs[i] = stack;
 27d:	89 04 9d 20 10 00 00 	mov    %eax,0x1020(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 284:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 286:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 288:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 28b:	29 d6                	sub    %edx,%esi
 28d:	01 f1                	add    %esi,%ecx
 28f:	85 d2                	test   %edx,%edx
 291:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 294:	51                   	push   %ecx
 295:	ff 75 10             	push   0x10(%ebp)
 298:	ff 75 0c             	push   0xc(%ebp)
 29b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 29e:	89 0c 9d 20 11 00 00 	mov    %ecx,0x1120(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 2a5:	e8 b9 03 00 00       	call   663 <clone>
 2aa:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 2ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2b0:	5b                   	pop    %ebx
 2b1:	5e                   	pop    %esi
 2b2:	5d                   	pop    %ebp
 2b3:	c3                   	ret    
 2b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 2bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 2c0:	5b                   	pop    %ebx
 2c1:	5e                   	pop    %esi
 2c2:	5d                   	pop    %ebp
 2c3:	c3                   	ret    
 2c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <thread_join>:

int 
thread_join()
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	56                   	push   %esi
 2d4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 2d5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 2d8:	31 db                	xor    %ebx,%ebx
{
 2da:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 2dd:	50                   	push   %eax
 2de:	e8 88 03 00 00       	call   66b <join>
 2e3:	83 c4 10             	add    $0x10,%esp
 2e6:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 2e8:	eb 0e                	jmp    2f8 <thread_join+0x28>
 2ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2f0:	83 c3 01             	add    $0x1,%ebx
 2f3:	83 fb 40             	cmp    $0x40,%ebx
 2f6:	74 27                	je     31f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 2f8:	83 3c 9d 20 0f 00 00 	cmpl   $0x1,0xf20(,%ebx,4)
 2ff:	01 
 300:	75 ee                	jne    2f0 <thread_join+0x20>
      free(malloc_addrs[i]);
 302:	83 ec 0c             	sub    $0xc,%esp
 305:	ff 34 9d 20 10 00 00 	push   0x1020(,%ebx,4)
 30c:	e8 bf 05 00 00       	call   8d0 <free>
      inUse[i] = 0;
      break;
 311:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 314:	c7 04 9d 20 0f 00 00 	movl   $0x0,0xf20(,%ebx,4)
 31b:	00 00 00 00 
    }
  }
  return id;
}
 31f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 322:	89 f0                	mov    %esi,%eax
 324:	5b                   	pop    %ebx
 325:	5e                   	pop    %esi
 326:	5d                   	pop    %ebp
 327:	c3                   	ret    
 328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <lock_init>:

void lock_init(lock_t *lock){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 333:	8b 45 08             	mov    0x8(%ebp),%eax
 336:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 33c:	5d                   	pop    %ebp
 33d:	c3                   	ret    
 33e:	66 90                	xchg   %ax,%ax

00000340 <lock_acquire>:

void lock_acquire(lock_t *lock){
 340:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 341:	b9 01 00 00 00       	mov    $0x1,%ecx
 346:	89 e5                	mov    %esp,%ebp
 348:	8b 55 08             	mov    0x8(%ebp),%edx
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop
 350:	89 c8                	mov    %ecx,%eax
 352:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 355:	85 c0                	test   %eax,%eax
 357:	75 f7                	jne    350 <lock_acquire+0x10>
}
 359:	5d                   	pop    %ebp
 35a:	c3                   	ret    
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <lock_release>:

void lock_release(lock_t *lock){
 360:	55                   	push   %ebp
 361:	31 c0                	xor    %eax,%eax
 363:	89 e5                	mov    %esp,%ebp
 365:	8b 55 08             	mov    0x8(%ebp),%edx
 368:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
 36d:	8d 76 00             	lea    0x0(%esi),%esi

00000370 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 370:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 371:	31 c0                	xor    %eax,%eax
{
 373:	89 e5                	mov    %esp,%ebp
 375:	53                   	push   %ebx
 376:	8b 4d 08             	mov    0x8(%ebp),%ecx
 379:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 380:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 384:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 387:	83 c0 01             	add    $0x1,%eax
 38a:	84 d2                	test   %dl,%dl
 38c:	75 f2                	jne    380 <strcpy+0x10>
    ;
  return os;
}
 38e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 391:	89 c8                	mov    %ecx,%eax
 393:	c9                   	leave  
 394:	c3                   	ret    
 395:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
 3a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3aa:	0f b6 02             	movzbl (%edx),%eax
 3ad:	84 c0                	test   %al,%al
 3af:	75 17                	jne    3c8 <strcmp+0x28>
 3b1:	eb 3a                	jmp    3ed <strcmp+0x4d>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3bc:	83 c2 01             	add    $0x1,%edx
 3bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3c2:	84 c0                	test   %al,%al
 3c4:	74 1a                	je     3e0 <strcmp+0x40>
    p++, q++;
 3c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3c8:	0f b6 19             	movzbl (%ecx),%ebx
 3cb:	38 c3                	cmp    %al,%bl
 3cd:	74 e9                	je     3b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3cf:	29 d8                	sub    %ebx,%eax
}
 3d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3d4:	c9                   	leave  
 3d5:	c3                   	ret    
 3d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3e4:	31 c0                	xor    %eax,%eax
 3e6:	29 d8                	sub    %ebx,%eax
}
 3e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3eb:	c9                   	leave  
 3ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3ed:	0f b6 19             	movzbl (%ecx),%ebx
 3f0:	31 c0                	xor    %eax,%eax
 3f2:	eb db                	jmp    3cf <strcmp+0x2f>
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <strlen>:

uint
strlen(const char *s)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 406:	80 3a 00             	cmpb   $0x0,(%edx)
 409:	74 15                	je     420 <strlen+0x20>
 40b:	31 c0                	xor    %eax,%eax
 40d:	8d 76 00             	lea    0x0(%esi),%esi
 410:	83 c0 01             	add    $0x1,%eax
 413:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 417:	89 c1                	mov    %eax,%ecx
 419:	75 f5                	jne    410 <strlen+0x10>
    ;
  return n;
}
 41b:	89 c8                	mov    %ecx,%eax
 41d:	5d                   	pop    %ebp
 41e:	c3                   	ret    
 41f:	90                   	nop
  for(n = 0; s[n]; n++)
 420:	31 c9                	xor    %ecx,%ecx
}
 422:	5d                   	pop    %ebp
 423:	89 c8                	mov    %ecx,%eax
 425:	c3                   	ret    
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <memset>:

void*
memset(void *dst, int c, uint n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 437:	8b 4d 10             	mov    0x10(%ebp),%ecx
 43a:	8b 45 0c             	mov    0xc(%ebp),%eax
 43d:	89 d7                	mov    %edx,%edi
 43f:	fc                   	cld    
 440:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 442:	8b 7d fc             	mov    -0x4(%ebp),%edi
 445:	89 d0                	mov    %edx,%eax
 447:	c9                   	leave  
 448:	c3                   	ret    
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000450 <strchr>:

char*
strchr(const char *s, char c)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 45 08             	mov    0x8(%ebp),%eax
 456:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 45a:	0f b6 10             	movzbl (%eax),%edx
 45d:	84 d2                	test   %dl,%dl
 45f:	75 12                	jne    473 <strchr+0x23>
 461:	eb 1d                	jmp    480 <strchr+0x30>
 463:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 467:	90                   	nop
 468:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 46c:	83 c0 01             	add    $0x1,%eax
 46f:	84 d2                	test   %dl,%dl
 471:	74 0d                	je     480 <strchr+0x30>
    if(*s == c)
 473:	38 d1                	cmp    %dl,%cl
 475:	75 f1                	jne    468 <strchr+0x18>
      return (char*)s;
  return 0;
}
 477:	5d                   	pop    %ebp
 478:	c3                   	ret    
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 480:	31 c0                	xor    %eax,%eax
}
 482:	5d                   	pop    %ebp
 483:	c3                   	ret    
 484:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <gets>:

char*
gets(char *buf, int max)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 495:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 498:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 499:	31 db                	xor    %ebx,%ebx
{
 49b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 49e:	eb 27                	jmp    4c7 <gets+0x37>
    cc = read(0, &c, 1);
 4a0:	83 ec 04             	sub    $0x4,%esp
 4a3:	6a 01                	push   $0x1
 4a5:	57                   	push   %edi
 4a6:	6a 00                	push   $0x0
 4a8:	e8 2e 01 00 00       	call   5db <read>
    if(cc < 1)
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	85 c0                	test   %eax,%eax
 4b2:	7e 1d                	jle    4d1 <gets+0x41>
      break;
    buf[i++] = c;
 4b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4bf:	3c 0a                	cmp    $0xa,%al
 4c1:	74 1d                	je     4e0 <gets+0x50>
 4c3:	3c 0d                	cmp    $0xd,%al
 4c5:	74 19                	je     4e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4c7:	89 de                	mov    %ebx,%esi
 4c9:	83 c3 01             	add    $0x1,%ebx
 4cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4cf:	7c cf                	jl     4a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4d1:	8b 45 08             	mov    0x8(%ebp),%eax
 4d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
  buf[i] = '\0';
 4e0:	8b 45 08             	mov    0x8(%ebp),%eax
 4e3:	89 de                	mov    %ebx,%esi
 4e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ec:	5b                   	pop    %ebx
 4ed:	5e                   	pop    %esi
 4ee:	5f                   	pop    %edi
 4ef:	5d                   	pop    %ebp
 4f0:	c3                   	ret    
 4f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <stat>:

int
stat(const char *n, struct stat *st)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 505:	83 ec 08             	sub    $0x8,%esp
 508:	6a 00                	push   $0x0
 50a:	ff 75 08             	push   0x8(%ebp)
 50d:	e8 f1 00 00 00       	call   603 <open>
  if(fd < 0)
 512:	83 c4 10             	add    $0x10,%esp
 515:	85 c0                	test   %eax,%eax
 517:	78 27                	js     540 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 519:	83 ec 08             	sub    $0x8,%esp
 51c:	ff 75 0c             	push   0xc(%ebp)
 51f:	89 c3                	mov    %eax,%ebx
 521:	50                   	push   %eax
 522:	e8 f4 00 00 00       	call   61b <fstat>
  close(fd);
 527:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 52a:	89 c6                	mov    %eax,%esi
  close(fd);
 52c:	e8 ba 00 00 00       	call   5eb <close>
  return r;
 531:	83 c4 10             	add    $0x10,%esp
}
 534:	8d 65 f8             	lea    -0x8(%ebp),%esp
 537:	89 f0                	mov    %esi,%eax
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 540:	be ff ff ff ff       	mov    $0xffffffff,%esi
 545:	eb ed                	jmp    534 <stat+0x34>
 547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54e:	66 90                	xchg   %ax,%ax

00000550 <atoi>:

int
atoi(const char *s)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	53                   	push   %ebx
 554:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 557:	0f be 02             	movsbl (%edx),%eax
 55a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 55d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 560:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 565:	77 1e                	ja     585 <atoi+0x35>
 567:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 570:	83 c2 01             	add    $0x1,%edx
 573:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 576:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 57a:	0f be 02             	movsbl (%edx),%eax
 57d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 580:	80 fb 09             	cmp    $0x9,%bl
 583:	76 eb                	jbe    570 <atoi+0x20>
  return n;
}
 585:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 588:	89 c8                	mov    %ecx,%eax
 58a:	c9                   	leave  
 58b:	c3                   	ret    
 58c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000590 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	8b 45 10             	mov    0x10(%ebp),%eax
 597:	8b 55 08             	mov    0x8(%ebp),%edx
 59a:	56                   	push   %esi
 59b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 59e:	85 c0                	test   %eax,%eax
 5a0:	7e 13                	jle    5b5 <memmove+0x25>
 5a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5a4:	89 d7                	mov    %edx,%edi
 5a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5b1:	39 f8                	cmp    %edi,%eax
 5b3:	75 fb                	jne    5b0 <memmove+0x20>
  return vdst;
}
 5b5:	5e                   	pop    %esi
 5b6:	89 d0                	mov    %edx,%eax
 5b8:	5f                   	pop    %edi
 5b9:	5d                   	pop    %ebp
 5ba:	c3                   	ret    

000005bb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5bb:	b8 01 00 00 00       	mov    $0x1,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret    

000005c3 <exit>:
SYSCALL(exit)
 5c3:	b8 02 00 00 00       	mov    $0x2,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret    

000005cb <wait>:
SYSCALL(wait)
 5cb:	b8 03 00 00 00       	mov    $0x3,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret    

000005d3 <pipe>:
SYSCALL(pipe)
 5d3:	b8 04 00 00 00       	mov    $0x4,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret    

000005db <read>:
SYSCALL(read)
 5db:	b8 05 00 00 00       	mov    $0x5,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret    

000005e3 <write>:
SYSCALL(write)
 5e3:	b8 10 00 00 00       	mov    $0x10,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret    

000005eb <close>:
SYSCALL(close)
 5eb:	b8 15 00 00 00       	mov    $0x15,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    

000005f3 <kill>:
SYSCALL(kill)
 5f3:	b8 06 00 00 00       	mov    $0x6,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret    

000005fb <exec>:
SYSCALL(exec)
 5fb:	b8 07 00 00 00       	mov    $0x7,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret    

00000603 <open>:
SYSCALL(open)
 603:	b8 0f 00 00 00       	mov    $0xf,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret    

0000060b <mknod>:
SYSCALL(mknod)
 60b:	b8 11 00 00 00       	mov    $0x11,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <unlink>:
SYSCALL(unlink)
 613:	b8 12 00 00 00       	mov    $0x12,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <fstat>:
SYSCALL(fstat)
 61b:	b8 08 00 00 00       	mov    $0x8,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <link>:
SYSCALL(link)
 623:	b8 13 00 00 00       	mov    $0x13,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <mkdir>:
SYSCALL(mkdir)
 62b:	b8 14 00 00 00       	mov    $0x14,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <chdir>:
SYSCALL(chdir)
 633:	b8 09 00 00 00       	mov    $0x9,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <dup>:
SYSCALL(dup)
 63b:	b8 0a 00 00 00       	mov    $0xa,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <getpid>:
SYSCALL(getpid)
 643:	b8 0b 00 00 00       	mov    $0xb,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <sbrk>:
SYSCALL(sbrk)
 64b:	b8 0c 00 00 00       	mov    $0xc,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <sleep>:
SYSCALL(sleep)
 653:	b8 0d 00 00 00       	mov    $0xd,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <uptime>:
SYSCALL(uptime)
 65b:	b8 0e 00 00 00       	mov    $0xe,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <clone>:
SYSCALL(clone)
 663:	b8 16 00 00 00       	mov    $0x16,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <join>:
SYSCALL(join)
 66b:	b8 17 00 00 00       	mov    $0x17,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    
 673:	66 90                	xchg   %ax,%ax
 675:	66 90                	xchg   %ax,%ax
 677:	66 90                	xchg   %ax,%ax
 679:	66 90                	xchg   %ax,%ax
 67b:	66 90                	xchg   %ax,%ax
 67d:	66 90                	xchg   %ax,%ax
 67f:	90                   	nop

00000680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 3c             	sub    $0x3c,%esp
 689:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 68c:	89 d1                	mov    %edx,%ecx
{
 68e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 691:	85 d2                	test   %edx,%edx
 693:	0f 89 7f 00 00 00    	jns    718 <printint+0x98>
 699:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 69d:	74 79                	je     718 <printint+0x98>
    neg = 1;
 69f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6a8:	31 db                	xor    %ebx,%ebx
 6aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6b0:	89 c8                	mov    %ecx,%eax
 6b2:	31 d2                	xor    %edx,%edx
 6b4:	89 cf                	mov    %ecx,%edi
 6b6:	f7 75 c4             	divl   -0x3c(%ebp)
 6b9:	0f b6 92 68 0b 00 00 	movzbl 0xb68(%edx),%edx
 6c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6c3:	89 d8                	mov    %ebx,%eax
 6c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6d1:	76 dd                	jbe    6b0 <printint+0x30>
  if(neg)
 6d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6d6:	85 c9                	test   %ecx,%ecx
 6d8:	74 0c                	je     6e6 <printint+0x66>
    buf[i++] = '-';
 6da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6ed:	eb 07                	jmp    6f6 <printint+0x76>
 6ef:	90                   	nop
    putc(fd, buf[i]);
 6f0:	0f b6 13             	movzbl (%ebx),%edx
 6f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6f6:	83 ec 04             	sub    $0x4,%esp
 6f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6fc:	6a 01                	push   $0x1
 6fe:	56                   	push   %esi
 6ff:	57                   	push   %edi
 700:	e8 de fe ff ff       	call   5e3 <write>
  while(--i >= 0)
 705:	83 c4 10             	add    $0x10,%esp
 708:	39 de                	cmp    %ebx,%esi
 70a:	75 e4                	jne    6f0 <printint+0x70>
}
 70c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 70f:	5b                   	pop    %ebx
 710:	5e                   	pop    %esi
 711:	5f                   	pop    %edi
 712:	5d                   	pop    %ebp
 713:	c3                   	ret    
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 718:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 71f:	eb 87                	jmp    6a8 <printint+0x28>
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop

00000730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 739:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 73c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 73f:	0f b6 13             	movzbl (%ebx),%edx
 742:	84 d2                	test   %dl,%dl
 744:	74 6a                	je     7b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 746:	8d 45 10             	lea    0x10(%ebp),%eax
 749:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 74c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 74f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 751:	89 45 d0             	mov    %eax,-0x30(%ebp)
 754:	eb 36                	jmp    78c <printf+0x5c>
 756:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75d:	8d 76 00             	lea    0x0(%esi),%esi
 760:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 763:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 768:	83 f8 25             	cmp    $0x25,%eax
 76b:	74 15                	je     782 <printf+0x52>
  write(fd, &c, 1);
 76d:	83 ec 04             	sub    $0x4,%esp
 770:	88 55 e7             	mov    %dl,-0x19(%ebp)
 773:	6a 01                	push   $0x1
 775:	57                   	push   %edi
 776:	56                   	push   %esi
 777:	e8 67 fe ff ff       	call   5e3 <write>
 77c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 77f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 782:	0f b6 13             	movzbl (%ebx),%edx
 785:	83 c3 01             	add    $0x1,%ebx
 788:	84 d2                	test   %dl,%dl
 78a:	74 24                	je     7b0 <printf+0x80>
    c = fmt[i] & 0xff;
 78c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 78f:	85 c9                	test   %ecx,%ecx
 791:	74 cd                	je     760 <printf+0x30>
      }
    } else if(state == '%'){
 793:	83 f9 25             	cmp    $0x25,%ecx
 796:	75 ea                	jne    782 <printf+0x52>
      if(c == 'd'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	0f 84 07 01 00 00    	je     8a8 <printf+0x178>
 7a1:	83 e8 63             	sub    $0x63,%eax
 7a4:	83 f8 15             	cmp    $0x15,%eax
 7a7:	77 17                	ja     7c0 <printf+0x90>
 7a9:	ff 24 85 10 0b 00 00 	jmp    *0xb10(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b3:	5b                   	pop    %ebx
 7b4:	5e                   	pop    %esi
 7b5:	5f                   	pop    %edi
 7b6:	5d                   	pop    %ebp
 7b7:	c3                   	ret    
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7c6:	6a 01                	push   $0x1
 7c8:	57                   	push   %edi
 7c9:	56                   	push   %esi
 7ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ce:	e8 10 fe ff ff       	call   5e3 <write>
        putc(fd, c);
 7d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7d7:	83 c4 0c             	add    $0xc,%esp
 7da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7dd:	6a 01                	push   $0x1
 7df:	57                   	push   %edi
 7e0:	56                   	push   %esi
 7e1:	e8 fd fd ff ff       	call   5e3 <write>
        putc(fd, c);
 7e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7e9:	31 c9                	xor    %ecx,%ecx
 7eb:	eb 95                	jmp    782 <printf+0x52>
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7f8:	6a 00                	push   $0x0
 7fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7fd:	8b 10                	mov    (%eax),%edx
 7ff:	89 f0                	mov    %esi,%eax
 801:	e8 7a fe ff ff       	call   680 <printint>
        ap++;
 806:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 80a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80d:	31 c9                	xor    %ecx,%ecx
 80f:	e9 6e ff ff ff       	jmp    782 <printf+0x52>
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 818:	8b 45 d0             	mov    -0x30(%ebp),%eax
 81b:	8b 10                	mov    (%eax),%edx
        ap++;
 81d:	83 c0 04             	add    $0x4,%eax
 820:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 823:	85 d2                	test   %edx,%edx
 825:	0f 84 8d 00 00 00    	je     8b8 <printf+0x188>
        while(*s != 0){
 82b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 82e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 830:	84 c0                	test   %al,%al
 832:	0f 84 4a ff ff ff    	je     782 <printf+0x52>
 838:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 83b:	89 d3                	mov    %edx,%ebx
 83d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
          s++;
 843:	83 c3 01             	add    $0x1,%ebx
 846:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 849:	6a 01                	push   $0x1
 84b:	57                   	push   %edi
 84c:	56                   	push   %esi
 84d:	e8 91 fd ff ff       	call   5e3 <write>
        while(*s != 0){
 852:	0f b6 03             	movzbl (%ebx),%eax
 855:	83 c4 10             	add    $0x10,%esp
 858:	84 c0                	test   %al,%al
 85a:	75 e4                	jne    840 <printf+0x110>
      state = 0;
 85c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 85f:	31 c9                	xor    %ecx,%ecx
 861:	e9 1c ff ff ff       	jmp    782 <printf+0x52>
 866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 870:	83 ec 0c             	sub    $0xc,%esp
 873:	b9 0a 00 00 00       	mov    $0xa,%ecx
 878:	6a 01                	push   $0x1
 87a:	e9 7b ff ff ff       	jmp    7fa <printf+0xca>
 87f:	90                   	nop
        putc(fd, *ap);
 880:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 883:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 886:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 888:	6a 01                	push   $0x1
 88a:	57                   	push   %edi
 88b:	56                   	push   %esi
        putc(fd, *ap);
 88c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 88f:	e8 4f fd ff ff       	call   5e3 <write>
        ap++;
 894:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 898:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89b:	31 c9                	xor    %ecx,%ecx
 89d:	e9 e0 fe ff ff       	jmp    782 <printf+0x52>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8ab:	83 ec 04             	sub    $0x4,%esp
 8ae:	e9 2a ff ff ff       	jmp    7dd <printf+0xad>
 8b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8b7:	90                   	nop
          s = "(null)";
 8b8:	ba 07 0b 00 00       	mov    $0xb07,%edx
        while(*s != 0){
 8bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8c0:	b8 28 00 00 00       	mov    $0x28,%eax
 8c5:	89 d3                	mov    %edx,%ebx
 8c7:	e9 74 ff ff ff       	jmp    840 <printf+0x110>
 8cc:	66 90                	xchg   %ax,%ax
 8ce:	66 90                	xchg   %ax,%ax

000008d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	a1 20 12 00 00       	mov    0x1220,%eax
{
 8d6:	89 e5                	mov    %esp,%ebp
 8d8:	57                   	push   %edi
 8d9:	56                   	push   %esi
 8da:	53                   	push   %ebx
 8db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8e8:	89 c2                	mov    %eax,%edx
 8ea:	8b 00                	mov    (%eax),%eax
 8ec:	39 ca                	cmp    %ecx,%edx
 8ee:	73 30                	jae    920 <free+0x50>
 8f0:	39 c1                	cmp    %eax,%ecx
 8f2:	72 04                	jb     8f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f4:	39 c2                	cmp    %eax,%edx
 8f6:	72 f0                	jb     8e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8fe:	39 f8                	cmp    %edi,%eax
 900:	74 30                	je     932 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 902:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 905:	8b 42 04             	mov    0x4(%edx),%eax
 908:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 90b:	39 f1                	cmp    %esi,%ecx
 90d:	74 3a                	je     949 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 90f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 911:	5b                   	pop    %ebx
  freep = p;
 912:	89 15 20 12 00 00    	mov    %edx,0x1220
}
 918:	5e                   	pop    %esi
 919:	5f                   	pop    %edi
 91a:	5d                   	pop    %ebp
 91b:	c3                   	ret    
 91c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 920:	39 c2                	cmp    %eax,%edx
 922:	72 c4                	jb     8e8 <free+0x18>
 924:	39 c1                	cmp    %eax,%ecx
 926:	73 c0                	jae    8e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	75 d0                	jne    902 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 932:	03 70 04             	add    0x4(%eax),%esi
 935:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 938:	8b 02                	mov    (%edx),%eax
 93a:	8b 00                	mov    (%eax),%eax
 93c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 93f:	8b 42 04             	mov    0x4(%edx),%eax
 942:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 945:	39 f1                	cmp    %esi,%ecx
 947:	75 c6                	jne    90f <free+0x3f>
    p->s.size += bp->s.size;
 949:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 94c:	89 15 20 12 00 00    	mov    %edx,0x1220
    p->s.size += bp->s.size;
 952:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 955:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 958:	89 0a                	mov    %ecx,(%edx)
}
 95a:	5b                   	pop    %ebx
 95b:	5e                   	pop    %esi
 95c:	5f                   	pop    %edi
 95d:	5d                   	pop    %ebp
 95e:	c3                   	ret    
 95f:	90                   	nop

00000960 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 960:	55                   	push   %ebp
 961:	89 e5                	mov    %esp,%ebp
 963:	57                   	push   %edi
 964:	56                   	push   %esi
 965:	53                   	push   %ebx
 966:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 969:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 96c:	8b 3d 20 12 00 00    	mov    0x1220,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 972:	8d 70 07             	lea    0x7(%eax),%esi
 975:	c1 ee 03             	shr    $0x3,%esi
 978:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 97b:	85 ff                	test   %edi,%edi
 97d:	0f 84 9d 00 00 00    	je     a20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 983:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 985:	8b 4a 04             	mov    0x4(%edx),%ecx
 988:	39 f1                	cmp    %esi,%ecx
 98a:	73 6a                	jae    9f6 <malloc+0x96>
 98c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 991:	39 de                	cmp    %ebx,%esi
 993:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 996:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 99d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9a0:	eb 17                	jmp    9b9 <malloc+0x59>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9aa:	8b 48 04             	mov    0x4(%eax),%ecx
 9ad:	39 f1                	cmp    %esi,%ecx
 9af:	73 4f                	jae    a00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9b1:	8b 3d 20 12 00 00    	mov    0x1220,%edi
 9b7:	89 c2                	mov    %eax,%edx
 9b9:	39 d7                	cmp    %edx,%edi
 9bb:	75 eb                	jne    9a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9bd:	83 ec 0c             	sub    $0xc,%esp
 9c0:	ff 75 e4             	push   -0x1c(%ebp)
 9c3:	e8 83 fc ff ff       	call   64b <sbrk>
  if(p == (char*)-1)
 9c8:	83 c4 10             	add    $0x10,%esp
 9cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ce:	74 1c                	je     9ec <malloc+0x8c>
  hp->s.size = nu;
 9d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9d3:	83 ec 0c             	sub    $0xc,%esp
 9d6:	83 c0 08             	add    $0x8,%eax
 9d9:	50                   	push   %eax
 9da:	e8 f1 fe ff ff       	call   8d0 <free>
  return freep;
 9df:	8b 15 20 12 00 00    	mov    0x1220,%edx
      if((p = morecore(nunits)) == 0)
 9e5:	83 c4 10             	add    $0x10,%esp
 9e8:	85 d2                	test   %edx,%edx
 9ea:	75 bc                	jne    9a8 <malloc+0x48>
        return 0;
  }
}
 9ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ef:	31 c0                	xor    %eax,%eax
}
 9f1:	5b                   	pop    %ebx
 9f2:	5e                   	pop    %esi
 9f3:	5f                   	pop    %edi
 9f4:	5d                   	pop    %ebp
 9f5:	c3                   	ret    
    if(p->s.size >= nunits){
 9f6:	89 d0                	mov    %edx,%eax
 9f8:	89 fa                	mov    %edi,%edx
 9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a00:	39 ce                	cmp    %ecx,%esi
 a02:	74 4c                	je     a50 <malloc+0xf0>
        p->s.size -= nunits;
 a04:	29 f1                	sub    %esi,%ecx
 a06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a0f:	89 15 20 12 00 00    	mov    %edx,0x1220
}
 a15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a18:	83 c0 08             	add    $0x8,%eax
}
 a1b:	5b                   	pop    %ebx
 a1c:	5e                   	pop    %esi
 a1d:	5f                   	pop    %edi
 a1e:	5d                   	pop    %ebp
 a1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a20:	c7 05 20 12 00 00 24 	movl   $0x1224,0x1220
 a27:	12 00 00 
    base.s.size = 0;
 a2a:	bf 24 12 00 00       	mov    $0x1224,%edi
    base.s.ptr = freep = prevp = &base;
 a2f:	c7 05 24 12 00 00 24 	movl   $0x1224,0x1224
 a36:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a3b:	c7 05 28 12 00 00 00 	movl   $0x0,0x1228
 a42:	00 00 00 
    if(p->s.size >= nunits){
 a45:	e9 42 ff ff ff       	jmp    98c <malloc+0x2c>
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a50:	8b 08                	mov    (%eax),%ecx
 a52:	89 0a                	mov    %ecx,(%edx)
 a54:	eb b9                	jmp    a0f <malloc+0xaf>
