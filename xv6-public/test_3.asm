
_test_3:     file format elf32-i386


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
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 3b 06 00 00       	call   653 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 24 0f 00 00       	mov    %eax,0xf24
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 46 09 00 00       	call   970 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 1f 01 00 00    	je     154 <main+0x154>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  37:	89 c6                	mov    %eax,%esi
  39:	25 ff 0f 00 00       	and    $0xfff,%eax
  3e:	75 60                	jne    a0 <main+0xa0>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int fd = open("tmp", O_WRONLY|O_CREATE);
  40:	83 ec 08             	sub    $0x8,%esp
  43:	68 01 02 00 00       	push   $0x201
  48:	68 cc 0a 00 00       	push   $0xacc
  4d:	e8 c1 05 00 00       	call   613 <open>
   assert(fd == 3);
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 03             	cmp    $0x3,%eax
  58:	74 52                	je     ac <main+0xac>
  5a:	6a 24                	push   $0x24
  5c:	68 6f 0a 00 00       	push   $0xa6f
  61:	68 78 0a 00 00       	push   $0xa78
  66:	6a 01                	push   $0x1
  68:	e8 d3 06 00 00       	call   740 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 d0 0a 00 00       	push   $0xad0
  75:	68 9c 0a 00 00       	push   $0xa9c
  7a:	6a 01                	push   $0x1
  7c:	e8 bf 06 00 00       	call   740 <printf>
  81:	59                   	pop    %ecx
  82:	5b                   	pop    %ebx
  83:	68 b0 0a 00 00       	push   $0xab0
  88:	6a 01                	push   $0x1
  8a:	e8 b1 06 00 00       	call   740 <printf>
  8f:	5e                   	pop    %esi
  90:	ff 35 24 0f 00 00    	push   0xf24
  96:	e8 68 05 00 00       	call   603 <kill>
  9b:	e8 33 05 00 00       	call   5d3 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  a0:	89 da                	mov    %ebx,%edx
  a2:	29 c2                	sub    %eax,%edx
  a4:	8d b2 00 10 00 00    	lea    0x1000(%edx),%esi
  aa:	eb 94                	jmp    40 <main+0x40>
   int clone_pid = clone(worker, 0, 0, stack);
  ac:	56                   	push   %esi
  ad:	6a 00                	push   $0x0
  af:	6a 00                	push   $0x0
  b1:	68 b0 01 00 00       	push   $0x1b0
  b6:	e8 b8 05 00 00       	call   673 <clone>
   assert(clone_pid > 0);
  bb:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  be:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  c0:	85 c0                	test   %eax,%eax
  c2:	0f 8e ac 00 00 00    	jle    174 <main+0x174>
  c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cf:	90                   	nop
   while(!newfd);
  d0:	a1 20 0f 00 00       	mov    0xf20,%eax
  d5:	85 c0                	test   %eax,%eax
  d7:	74 f7                	je     d0 <main+0xd0>
   assert(write(newfd, "goodbye\n", 8) == -1);
  d9:	a1 20 0f 00 00       	mov    0xf20,%eax
  de:	52                   	push   %edx
  df:	6a 08                	push   $0x8
  e1:	68 e6 0a 00 00       	push   $0xae6
  e6:	50                   	push   %eax
  e7:	e8 07 05 00 00       	call   5f3 <write>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	83 c0 01             	add    $0x1,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 28                	push   $0x28
  f6:	68 6f 0a 00 00       	push   $0xa6f
  fb:	68 78 0a 00 00       	push   $0xa78
 100:	6a 01                	push   $0x1
 102:	e8 39 06 00 00       	call   740 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 14 0b 00 00       	push   $0xb14
 10f:	e9 61 ff ff ff       	jmp    75 <main+0x75>
   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 ef 0a 00 00       	push   $0xaef
 11b:	6a 01                	push   $0x1
 11d:	e8 1e 06 00 00       	call   740 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
 122:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 125:	89 04 24             	mov    %eax,(%esp)
 128:	e8 4e 05 00 00       	call   67b <join>
   assert(join_pid == clone_pid);
 12d:	83 c4 10             	add    $0x10,%esp
 130:	39 c6                	cmp    %eax,%esi
 132:	74 60                	je     194 <main+0x194>
 134:	6a 2d                	push   $0x2d
 136:	68 6f 0a 00 00       	push   $0xa6f
 13b:	68 78 0a 00 00       	push   $0xa78
 140:	6a 01                	push   $0x1
 142:	e8 f9 05 00 00       	call   740 <printf>
 147:	83 c4 0c             	add    $0xc,%esp
 14a:	68 fc 0a 00 00       	push   $0xafc
 14f:	e9 21 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 154:	6a 1d                	push   $0x1d
 156:	68 6f 0a 00 00       	push   $0xa6f
 15b:	68 78 0a 00 00       	push   $0xa78
 160:	6a 01                	push   $0x1
 162:	e8 d9 05 00 00       	call   740 <printf>
 167:	83 c4 0c             	add    $0xc,%esp
 16a:	68 c2 0a 00 00       	push   $0xac2
 16f:	e9 01 ff ff ff       	jmp    75 <main+0x75>
   assert(clone_pid > 0);
 174:	6a 26                	push   $0x26
 176:	68 6f 0a 00 00       	push   $0xa6f
 17b:	68 78 0a 00 00       	push   $0xa78
 180:	6a 01                	push   $0x1
 182:	e8 b9 05 00 00       	call   740 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 d8 0a 00 00       	push   $0xad8
 18f:	e9 e1 fe ff ff       	jmp    75 <main+0x75>
   free(p);
 194:	83 ec 0c             	sub    $0xc,%esp
 197:	53                   	push   %ebx
 198:	e8 43 07 00 00       	call   8e0 <free>
   exit();
 19d:	e8 31 04 00 00       	call   5d3 <exit>
 1a2:	66 90                	xchg   %ax,%ax
 1a4:	66 90                	xchg   %ax,%ax
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	66 90                	xchg   %ax,%ax
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	66 90                	xchg   %ax,%ax
 1ae:	66 90                	xchg   %ax,%ax

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 0c             	sub    $0xc,%esp
   assert(write(3, "hello\n", 6) == 6);
 1b6:	6a 06                	push   $0x6
 1b8:	68 68 0a 00 00       	push   $0xa68
 1bd:	6a 03                	push   $0x3
 1bf:	e8 2f 04 00 00       	call   5f3 <write>
 1c4:	83 c4 10             	add    $0x10,%esp
 1c7:	83 f8 06             	cmp    $0x6,%eax
 1ca:	74 46                	je     212 <worker+0x62>
 1cc:	6a 34                	push   $0x34
 1ce:	68 6f 0a 00 00       	push   $0xa6f
 1d3:	68 78 0a 00 00       	push   $0xa78
 1d8:	6a 01                	push   $0x1
 1da:	e8 61 05 00 00       	call   740 <printf>
 1df:	83 c4 0c             	add    $0xc,%esp
 1e2:	68 80 0a 00 00       	push   $0xa80
 1e7:	68 9c 0a 00 00       	push   $0xa9c
 1ec:	6a 01                	push   $0x1
 1ee:	e8 4d 05 00 00       	call   740 <printf>
 1f3:	5a                   	pop    %edx
 1f4:	59                   	pop    %ecx
 1f5:	68 b0 0a 00 00       	push   $0xab0
 1fa:	6a 01                	push   $0x1
 1fc:	e8 3f 05 00 00       	call   740 <printf>
 201:	58                   	pop    %eax
 202:	ff 35 24 0f 00 00    	push   0xf24
 208:	e8 f6 03 00 00       	call   603 <kill>
 20d:	e8 c1 03 00 00       	call   5d3 <exit>
   xchg(&newfd, open("tmp2", O_WRONLY|O_CREATE));
 212:	50                   	push   %eax
 213:	50                   	push   %eax
 214:	68 01 02 00 00       	push   $0x201
 219:	68 bd 0a 00 00       	push   $0xabd
 21e:	e8 f0 03 00 00       	call   613 <open>
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 223:	f0 87 05 20 0f 00 00 	lock xchg %eax,0xf20
   exit();
 22a:	e8 a4 03 00 00       	call   5d3 <exit>
 22f:	90                   	nop

00000230 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	53                   	push   %ebx
 234:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 237:	a1 0c 0f 00 00       	mov    0xf0c,%eax
 23c:	01 c0                	add    %eax,%eax
 23e:	50                   	push   %eax
 23f:	e8 2c 07 00 00       	call   970 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 244:	8b 0d 0c 0f 00 00    	mov    0xf0c,%ecx
 24a:	31 d2                	xor    %edx,%edx
 24c:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 24f:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 251:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 253:	89 c8                	mov    %ecx,%eax
 255:	01 d9                	add    %ebx,%ecx
 257:	29 d0                	sub    %edx,%eax
 259:	01 d8                	add    %ebx,%eax
 25b:	85 d2                	test   %edx,%edx
 25d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 260:	31 d2                	xor    %edx,%edx
 262:	eb 0c                	jmp    270 <thread_create+0x40>
 264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 268:	83 c2 01             	add    $0x1,%edx
 26b:	83 fa 40             	cmp    $0x40,%edx
 26e:	74 2f                	je     29f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 270:	8b 04 95 40 11 00 00 	mov    0x1140(,%edx,4),%eax
 277:	85 c0                	test   %eax,%eax
 279:	75 ed                	jne    268 <thread_create+0x38>
 27b:	8b 04 95 40 0f 00 00 	mov    0xf40(,%edx,4),%eax
 282:	85 c0                	test   %eax,%eax
 284:	75 e2                	jne    268 <thread_create+0x38>
      inUse[i] = 1;
 286:	c7 04 95 40 0f 00 00 	movl   $0x1,0xf40(,%edx,4)
 28d:	01 00 00 00 
      malloc_addrs[i] = original;
 291:	89 1c 95 40 10 00 00 	mov    %ebx,0x1040(,%edx,4)
      stack_addrs[i] = stack;
 298:	89 0c 95 40 11 00 00 	mov    %ecx,0x1140(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 29f:	51                   	push   %ecx
 2a0:	ff 75 10             	push   0x10(%ebp)
 2a3:	ff 75 0c             	push   0xc(%ebp)
 2a6:	ff 75 08             	push   0x8(%ebp)
 2a9:	e8 c5 03 00 00       	call   673 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 2ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b1:	c9                   	leave  
 2b2:	c3                   	ret    
 2b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002c0 <thread_join>:

int 
thread_join()
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 2c4:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 2c6:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 2c9:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 2cc:	50                   	push   %eax
 2cd:	e8 a9 03 00 00       	call   67b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 2d2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2d5:	83 c4 10             	add    $0x10,%esp
 2d8:	eb 0e                	jmp    2e8 <thread_join+0x28>
 2da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 2e0:	83 c3 01             	add    $0x1,%ebx
 2e3:	83 fb 40             	cmp    $0x40,%ebx
 2e6:	74 4c                	je     334 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 2e8:	83 3c 9d 40 0f 00 00 	cmpl   $0x1,0xf40(,%ebx,4)
 2ef:	01 
 2f0:	75 ee                	jne    2e0 <thread_join+0x20>
 2f2:	39 14 9d 40 11 00 00 	cmp    %edx,0x1140(,%ebx,4)
 2f9:	75 e5                	jne    2e0 <thread_join+0x20>
      free(malloc_addrs[i]);
 2fb:	83 ec 0c             	sub    $0xc,%esp
 2fe:	ff 34 9d 40 10 00 00 	push   0x1040(,%ebx,4)
 305:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 308:	e8 d3 05 00 00       	call   8e0 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 30d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 310:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 313:	c7 04 9d 40 10 00 00 	movl   $0x0,0x1040(,%ebx,4)
 31a:	00 00 00 00 
      stack_addrs[i] = 0;
 31e:	c7 04 9d 40 11 00 00 	movl   $0x0,0x1140(,%ebx,4)
 325:	00 00 00 00 
      inUse[i] = 0;
 329:	c7 04 9d 40 0f 00 00 	movl   $0x0,0xf40(,%ebx,4)
 330:	00 00 00 00 
    }
  }
  return threadId; 
}
 334:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 337:	c9                   	leave  
 338:	c3                   	ret    
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000340 <lock_init>:

void lock_init(lock_t *lock){
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 343:	8b 45 08             	mov    0x8(%ebp),%eax
 346:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 34c:	5d                   	pop    %ebp
 34d:	c3                   	ret    
 34e:	66 90                	xchg   %ax,%ax

00000350 <lock_acquire>:

void lock_acquire(lock_t *lock){
 350:	55                   	push   %ebp
 351:	b9 01 00 00 00       	mov    $0x1,%ecx
 356:	89 e5                	mov    %esp,%ebp
 358:	8b 55 08             	mov    0x8(%ebp),%edx
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop
 360:	89 c8                	mov    %ecx,%eax
 362:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 365:	85 c0                	test   %eax,%eax
 367:	75 f7                	jne    360 <lock_acquire+0x10>
}
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <lock_release>:

void lock_release(lock_t *lock){
 370:	55                   	push   %ebp
 371:	31 c0                	xor    %eax,%eax
 373:	89 e5                	mov    %esp,%ebp
 375:	8b 55 08             	mov    0x8(%ebp),%edx
 378:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    
 37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 380:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 381:	31 c0                	xor    %eax,%eax
{
 383:	89 e5                	mov    %esp,%ebp
 385:	53                   	push   %ebx
 386:	8b 4d 08             	mov    0x8(%ebp),%ecx
 389:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 390:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 394:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 397:	83 c0 01             	add    $0x1,%eax
 39a:	84 d2                	test   %dl,%dl
 39c:	75 f2                	jne    390 <strcpy+0x10>
    ;
  return os;
}
 39e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a1:	89 c8                	mov    %ecx,%eax
 3a3:	c9                   	leave  
 3a4:	c3                   	ret    
 3a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	53                   	push   %ebx
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
 3b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3ba:	0f b6 02             	movzbl (%edx),%eax
 3bd:	84 c0                	test   %al,%al
 3bf:	75 17                	jne    3d8 <strcmp+0x28>
 3c1:	eb 3a                	jmp    3fd <strcmp+0x4d>
 3c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3c7:	90                   	nop
 3c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3cc:	83 c2 01             	add    $0x1,%edx
 3cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3d2:	84 c0                	test   %al,%al
 3d4:	74 1a                	je     3f0 <strcmp+0x40>
    p++, q++;
 3d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3d8:	0f b6 19             	movzbl (%ecx),%ebx
 3db:	38 c3                	cmp    %al,%bl
 3dd:	74 e9                	je     3c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3df:	29 d8                	sub    %ebx,%eax
}
 3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e4:	c9                   	leave  
 3e5:	c3                   	ret    
 3e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3f4:	31 c0                	xor    %eax,%eax
 3f6:	29 d8                	sub    %ebx,%eax
}
 3f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3fb:	c9                   	leave  
 3fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3fd:	0f b6 19             	movzbl (%ecx),%ebx
 400:	31 c0                	xor    %eax,%eax
 402:	eb db                	jmp    3df <strcmp+0x2f>
 404:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 40f:	90                   	nop

00000410 <strlen>:

uint
strlen(const char *s)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 416:	80 3a 00             	cmpb   $0x0,(%edx)
 419:	74 15                	je     430 <strlen+0x20>
 41b:	31 c0                	xor    %eax,%eax
 41d:	8d 76 00             	lea    0x0(%esi),%esi
 420:	83 c0 01             	add    $0x1,%eax
 423:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 427:	89 c1                	mov    %eax,%ecx
 429:	75 f5                	jne    420 <strlen+0x10>
    ;
  return n;
}
 42b:	89 c8                	mov    %ecx,%eax
 42d:	5d                   	pop    %ebp
 42e:	c3                   	ret    
 42f:	90                   	nop
  for(n = 0; s[n]; n++)
 430:	31 c9                	xor    %ecx,%ecx
}
 432:	5d                   	pop    %ebp
 433:	89 c8                	mov    %ecx,%eax
 435:	c3                   	ret    
 436:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43d:	8d 76 00             	lea    0x0(%esi),%esi

00000440 <memset>:

void*
memset(void *dst, int c, uint n)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 447:	8b 4d 10             	mov    0x10(%ebp),%ecx
 44a:	8b 45 0c             	mov    0xc(%ebp),%eax
 44d:	89 d7                	mov    %edx,%edi
 44f:	fc                   	cld    
 450:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 452:	8b 7d fc             	mov    -0x4(%ebp),%edi
 455:	89 d0                	mov    %edx,%eax
 457:	c9                   	leave  
 458:	c3                   	ret    
 459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000460 <strchr>:

char*
strchr(const char *s, char c)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 46a:	0f b6 10             	movzbl (%eax),%edx
 46d:	84 d2                	test   %dl,%dl
 46f:	75 12                	jne    483 <strchr+0x23>
 471:	eb 1d                	jmp    490 <strchr+0x30>
 473:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 477:	90                   	nop
 478:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 47c:	83 c0 01             	add    $0x1,%eax
 47f:	84 d2                	test   %dl,%dl
 481:	74 0d                	je     490 <strchr+0x30>
    if(*s == c)
 483:	38 d1                	cmp    %dl,%cl
 485:	75 f1                	jne    478 <strchr+0x18>
      return (char*)s;
  return 0;
}
 487:	5d                   	pop    %ebp
 488:	c3                   	ret    
 489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 490:	31 c0                	xor    %eax,%eax
}
 492:	5d                   	pop    %ebp
 493:	c3                   	ret    
 494:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <gets>:

char*
gets(char *buf, int max)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4a9:	31 db                	xor    %ebx,%ebx
{
 4ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4ae:	eb 27                	jmp    4d7 <gets+0x37>
    cc = read(0, &c, 1);
 4b0:	83 ec 04             	sub    $0x4,%esp
 4b3:	6a 01                	push   $0x1
 4b5:	57                   	push   %edi
 4b6:	6a 00                	push   $0x0
 4b8:	e8 2e 01 00 00       	call   5eb <read>
    if(cc < 1)
 4bd:	83 c4 10             	add    $0x10,%esp
 4c0:	85 c0                	test   %eax,%eax
 4c2:	7e 1d                	jle    4e1 <gets+0x41>
      break;
    buf[i++] = c;
 4c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4c8:	8b 55 08             	mov    0x8(%ebp),%edx
 4cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4cf:	3c 0a                	cmp    $0xa,%al
 4d1:	74 1d                	je     4f0 <gets+0x50>
 4d3:	3c 0d                	cmp    $0xd,%al
 4d5:	74 19                	je     4f0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4d7:	89 de                	mov    %ebx,%esi
 4d9:	83 c3 01             	add    $0x1,%ebx
 4dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4df:	7c cf                	jl     4b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4e1:	8b 45 08             	mov    0x8(%ebp),%eax
 4e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4eb:	5b                   	pop    %ebx
 4ec:	5e                   	pop    %esi
 4ed:	5f                   	pop    %edi
 4ee:	5d                   	pop    %ebp
 4ef:	c3                   	ret    
  buf[i] = '\0';
 4f0:	8b 45 08             	mov    0x8(%ebp),%eax
 4f3:	89 de                	mov    %ebx,%esi
 4f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4fc:	5b                   	pop    %ebx
 4fd:	5e                   	pop    %esi
 4fe:	5f                   	pop    %edi
 4ff:	5d                   	pop    %ebp
 500:	c3                   	ret    
 501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 508:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <stat>:

int
stat(const char *n, struct stat *st)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 515:	83 ec 08             	sub    $0x8,%esp
 518:	6a 00                	push   $0x0
 51a:	ff 75 08             	push   0x8(%ebp)
 51d:	e8 f1 00 00 00       	call   613 <open>
  if(fd < 0)
 522:	83 c4 10             	add    $0x10,%esp
 525:	85 c0                	test   %eax,%eax
 527:	78 27                	js     550 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 529:	83 ec 08             	sub    $0x8,%esp
 52c:	ff 75 0c             	push   0xc(%ebp)
 52f:	89 c3                	mov    %eax,%ebx
 531:	50                   	push   %eax
 532:	e8 f4 00 00 00       	call   62b <fstat>
  close(fd);
 537:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 53a:	89 c6                	mov    %eax,%esi
  close(fd);
 53c:	e8 ba 00 00 00       	call   5fb <close>
  return r;
 541:	83 c4 10             	add    $0x10,%esp
}
 544:	8d 65 f8             	lea    -0x8(%ebp),%esp
 547:	89 f0                	mov    %esi,%eax
 549:	5b                   	pop    %ebx
 54a:	5e                   	pop    %esi
 54b:	5d                   	pop    %ebp
 54c:	c3                   	ret    
 54d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 550:	be ff ff ff ff       	mov    $0xffffffff,%esi
 555:	eb ed                	jmp    544 <stat+0x34>
 557:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55e:	66 90                	xchg   %ax,%ax

00000560 <atoi>:

int
atoi(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	53                   	push   %ebx
 564:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 567:	0f be 02             	movsbl (%edx),%eax
 56a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 56d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 570:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 575:	77 1e                	ja     595 <atoi+0x35>
 577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 580:	83 c2 01             	add    $0x1,%edx
 583:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 586:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 58a:	0f be 02             	movsbl (%edx),%eax
 58d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 590:	80 fb 09             	cmp    $0x9,%bl
 593:	76 eb                	jbe    580 <atoi+0x20>
  return n;
}
 595:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 598:	89 c8                	mov    %ecx,%eax
 59a:	c9                   	leave  
 59b:	c3                   	ret    
 59c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	8b 45 10             	mov    0x10(%ebp),%eax
 5a7:	8b 55 08             	mov    0x8(%ebp),%edx
 5aa:	56                   	push   %esi
 5ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ae:	85 c0                	test   %eax,%eax
 5b0:	7e 13                	jle    5c5 <memmove+0x25>
 5b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5b4:	89 d7                	mov    %edx,%edi
 5b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5c1:	39 f8                	cmp    %edi,%eax
 5c3:	75 fb                	jne    5c0 <memmove+0x20>
  return vdst;
}
 5c5:	5e                   	pop    %esi
 5c6:	89 d0                	mov    %edx,%eax
 5c8:	5f                   	pop    %edi
 5c9:	5d                   	pop    %ebp
 5ca:	c3                   	ret    

000005cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5cb:	b8 01 00 00 00       	mov    $0x1,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret    

000005d3 <exit>:
SYSCALL(exit)
 5d3:	b8 02 00 00 00       	mov    $0x2,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret    

000005db <wait>:
SYSCALL(wait)
 5db:	b8 03 00 00 00       	mov    $0x3,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret    

000005e3 <pipe>:
SYSCALL(pipe)
 5e3:	b8 04 00 00 00       	mov    $0x4,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret    

000005eb <read>:
SYSCALL(read)
 5eb:	b8 05 00 00 00       	mov    $0x5,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    

000005f3 <write>:
SYSCALL(write)
 5f3:	b8 10 00 00 00       	mov    $0x10,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret    

000005fb <close>:
SYSCALL(close)
 5fb:	b8 15 00 00 00       	mov    $0x15,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret    

00000603 <kill>:
SYSCALL(kill)
 603:	b8 06 00 00 00       	mov    $0x6,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret    

0000060b <exec>:
SYSCALL(exec)
 60b:	b8 07 00 00 00       	mov    $0x7,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <open>:
SYSCALL(open)
 613:	b8 0f 00 00 00       	mov    $0xf,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <mknod>:
SYSCALL(mknod)
 61b:	b8 11 00 00 00       	mov    $0x11,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <unlink>:
SYSCALL(unlink)
 623:	b8 12 00 00 00       	mov    $0x12,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <fstat>:
SYSCALL(fstat)
 62b:	b8 08 00 00 00       	mov    $0x8,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <link>:
SYSCALL(link)
 633:	b8 13 00 00 00       	mov    $0x13,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <mkdir>:
SYSCALL(mkdir)
 63b:	b8 14 00 00 00       	mov    $0x14,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <chdir>:
SYSCALL(chdir)
 643:	b8 09 00 00 00       	mov    $0x9,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <dup>:
SYSCALL(dup)
 64b:	b8 0a 00 00 00       	mov    $0xa,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <getpid>:
SYSCALL(getpid)
 653:	b8 0b 00 00 00       	mov    $0xb,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <sbrk>:
SYSCALL(sbrk)
 65b:	b8 0c 00 00 00       	mov    $0xc,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <sleep>:
SYSCALL(sleep)
 663:	b8 0d 00 00 00       	mov    $0xd,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <uptime>:
SYSCALL(uptime)
 66b:	b8 0e 00 00 00       	mov    $0xe,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <clone>:
SYSCALL(clone)
 673:	b8 16 00 00 00       	mov    $0x16,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <join>:
SYSCALL(join)
 67b:	b8 17 00 00 00       	mov    $0x17,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    
 683:	66 90                	xchg   %ax,%ax
 685:	66 90                	xchg   %ax,%ax
 687:	66 90                	xchg   %ax,%ax
 689:	66 90                	xchg   %ax,%ax
 68b:	66 90                	xchg   %ax,%ax
 68d:	66 90                	xchg   %ax,%ax
 68f:	90                   	nop

00000690 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 3c             	sub    $0x3c,%esp
 699:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 69c:	89 d1                	mov    %edx,%ecx
{
 69e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6a1:	85 d2                	test   %edx,%edx
 6a3:	0f 89 7f 00 00 00    	jns    728 <printint+0x98>
 6a9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ad:	74 79                	je     728 <printint+0x98>
    neg = 1;
 6af:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6b6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6b8:	31 db                	xor    %ebx,%ebx
 6ba:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6c0:	89 c8                	mov    %ecx,%eax
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	89 cf                	mov    %ecx,%edi
 6c6:	f7 75 c4             	divl   -0x3c(%ebp)
 6c9:	0f b6 92 98 0b 00 00 	movzbl 0xb98(%edx),%edx
 6d0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6d3:	89 d8                	mov    %ebx,%eax
 6d5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6d8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6db:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6de:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6e1:	76 dd                	jbe    6c0 <printint+0x30>
  if(neg)
 6e3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6e6:	85 c9                	test   %ecx,%ecx
 6e8:	74 0c                	je     6f6 <printint+0x66>
    buf[i++] = '-';
 6ea:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6ef:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6f1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6f6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6f9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6fd:	eb 07                	jmp    706 <printint+0x76>
 6ff:	90                   	nop
    putc(fd, buf[i]);
 700:	0f b6 13             	movzbl (%ebx),%edx
 703:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 706:	83 ec 04             	sub    $0x4,%esp
 709:	88 55 d7             	mov    %dl,-0x29(%ebp)
 70c:	6a 01                	push   $0x1
 70e:	56                   	push   %esi
 70f:	57                   	push   %edi
 710:	e8 de fe ff ff       	call   5f3 <write>
  while(--i >= 0)
 715:	83 c4 10             	add    $0x10,%esp
 718:	39 de                	cmp    %ebx,%esi
 71a:	75 e4                	jne    700 <printint+0x70>
}
 71c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 71f:	5b                   	pop    %ebx
 720:	5e                   	pop    %esi
 721:	5f                   	pop    %edi
 722:	5d                   	pop    %ebp
 723:	c3                   	ret    
 724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 728:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 72f:	eb 87                	jmp    6b8 <printint+0x28>
 731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop

00000740 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 749:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 74c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 74f:	0f b6 13             	movzbl (%ebx),%edx
 752:	84 d2                	test   %dl,%dl
 754:	74 6a                	je     7c0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 756:	8d 45 10             	lea    0x10(%ebp),%eax
 759:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 75c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 75f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 761:	89 45 d0             	mov    %eax,-0x30(%ebp)
 764:	eb 36                	jmp    79c <printf+0x5c>
 766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
 770:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 773:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 778:	83 f8 25             	cmp    $0x25,%eax
 77b:	74 15                	je     792 <printf+0x52>
  write(fd, &c, 1);
 77d:	83 ec 04             	sub    $0x4,%esp
 780:	88 55 e7             	mov    %dl,-0x19(%ebp)
 783:	6a 01                	push   $0x1
 785:	57                   	push   %edi
 786:	56                   	push   %esi
 787:	e8 67 fe ff ff       	call   5f3 <write>
 78c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 78f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 792:	0f b6 13             	movzbl (%ebx),%edx
 795:	83 c3 01             	add    $0x1,%ebx
 798:	84 d2                	test   %dl,%dl
 79a:	74 24                	je     7c0 <printf+0x80>
    c = fmt[i] & 0xff;
 79c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 79f:	85 c9                	test   %ecx,%ecx
 7a1:	74 cd                	je     770 <printf+0x30>
      }
    } else if(state == '%'){
 7a3:	83 f9 25             	cmp    $0x25,%ecx
 7a6:	75 ea                	jne    792 <printf+0x52>
      if(c == 'd'){
 7a8:	83 f8 25             	cmp    $0x25,%eax
 7ab:	0f 84 07 01 00 00    	je     8b8 <printf+0x178>
 7b1:	83 e8 63             	sub    $0x63,%eax
 7b4:	83 f8 15             	cmp    $0x15,%eax
 7b7:	77 17                	ja     7d0 <printf+0x90>
 7b9:	ff 24 85 40 0b 00 00 	jmp    *0xb40(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7c3:	5b                   	pop    %ebx
 7c4:	5e                   	pop    %esi
 7c5:	5f                   	pop    %edi
 7c6:	5d                   	pop    %ebp
 7c7:	c3                   	ret    
 7c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cf:	90                   	nop
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
 7d3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7d6:	6a 01                	push   $0x1
 7d8:	57                   	push   %edi
 7d9:	56                   	push   %esi
 7da:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7de:	e8 10 fe ff ff       	call   5f3 <write>
        putc(fd, c);
 7e3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7e7:	83 c4 0c             	add    $0xc,%esp
 7ea:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7ed:	6a 01                	push   $0x1
 7ef:	57                   	push   %edi
 7f0:	56                   	push   %esi
 7f1:	e8 fd fd ff ff       	call   5f3 <write>
        putc(fd, c);
 7f6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7f9:	31 c9                	xor    %ecx,%ecx
 7fb:	eb 95                	jmp    792 <printf+0x52>
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 10 00 00 00       	mov    $0x10,%ecx
 808:	6a 00                	push   $0x0
 80a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80d:	8b 10                	mov    (%eax),%edx
 80f:	89 f0                	mov    %esi,%eax
 811:	e8 7a fe ff ff       	call   690 <printint>
        ap++;
 816:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 81a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 81d:	31 c9                	xor    %ecx,%ecx
 81f:	e9 6e ff ff ff       	jmp    792 <printf+0x52>
 824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 828:	8b 45 d0             	mov    -0x30(%ebp),%eax
 82b:	8b 10                	mov    (%eax),%edx
        ap++;
 82d:	83 c0 04             	add    $0x4,%eax
 830:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 833:	85 d2                	test   %edx,%edx
 835:	0f 84 8d 00 00 00    	je     8c8 <printf+0x188>
        while(*s != 0){
 83b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 83e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 840:	84 c0                	test   %al,%al
 842:	0f 84 4a ff ff ff    	je     792 <printf+0x52>
 848:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 84b:	89 d3                	mov    %edx,%ebx
 84d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
          s++;
 853:	83 c3 01             	add    $0x1,%ebx
 856:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 859:	6a 01                	push   $0x1
 85b:	57                   	push   %edi
 85c:	56                   	push   %esi
 85d:	e8 91 fd ff ff       	call   5f3 <write>
        while(*s != 0){
 862:	0f b6 03             	movzbl (%ebx),%eax
 865:	83 c4 10             	add    $0x10,%esp
 868:	84 c0                	test   %al,%al
 86a:	75 e4                	jne    850 <printf+0x110>
      state = 0;
 86c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 86f:	31 c9                	xor    %ecx,%ecx
 871:	e9 1c ff ff ff       	jmp    792 <printf+0x52>
 876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 0a 00 00 00       	mov    $0xa,%ecx
 888:	6a 01                	push   $0x1
 88a:	e9 7b ff ff ff       	jmp    80a <printf+0xca>
 88f:	90                   	nop
        putc(fd, *ap);
 890:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 893:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 896:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 898:	6a 01                	push   $0x1
 89a:	57                   	push   %edi
 89b:	56                   	push   %esi
        putc(fd, *ap);
 89c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 89f:	e8 4f fd ff ff       	call   5f3 <write>
        ap++;
 8a4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ab:	31 c9                	xor    %ecx,%ecx
 8ad:	e9 e0 fe ff ff       	jmp    792 <printf+0x52>
 8b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8b8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8bb:	83 ec 04             	sub    $0x4,%esp
 8be:	e9 2a ff ff ff       	jmp    7ed <printf+0xad>
 8c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8c7:	90                   	nop
          s = "(null)";
 8c8:	ba 37 0b 00 00       	mov    $0xb37,%edx
        while(*s != 0){
 8cd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8d0:	b8 28 00 00 00       	mov    $0x28,%eax
 8d5:	89 d3                	mov    %edx,%ebx
 8d7:	e9 74 ff ff ff       	jmp    850 <printf+0x110>
 8dc:	66 90                	xchg   %ax,%ax
 8de:	66 90                	xchg   %ax,%ax

000008e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	a1 40 12 00 00       	mov    0x1240,%eax
{
 8e6:	89 e5                	mov    %esp,%ebp
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	53                   	push   %ebx
 8eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8f8:	89 c2                	mov    %eax,%edx
 8fa:	8b 00                	mov    (%eax),%eax
 8fc:	39 ca                	cmp    %ecx,%edx
 8fe:	73 30                	jae    930 <free+0x50>
 900:	39 c1                	cmp    %eax,%ecx
 902:	72 04                	jb     908 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 904:	39 c2                	cmp    %eax,%edx
 906:	72 f0                	jb     8f8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 908:	8b 73 fc             	mov    -0x4(%ebx),%esi
 90b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 90e:	39 f8                	cmp    %edi,%eax
 910:	74 30                	je     942 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 912:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 915:	8b 42 04             	mov    0x4(%edx),%eax
 918:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 91b:	39 f1                	cmp    %esi,%ecx
 91d:	74 3a                	je     959 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 91f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 921:	5b                   	pop    %ebx
  freep = p;
 922:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 928:	5e                   	pop    %esi
 929:	5f                   	pop    %edi
 92a:	5d                   	pop    %ebp
 92b:	c3                   	ret    
 92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 930:	39 c2                	cmp    %eax,%edx
 932:	72 c4                	jb     8f8 <free+0x18>
 934:	39 c1                	cmp    %eax,%ecx
 936:	73 c0                	jae    8f8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 938:	8b 73 fc             	mov    -0x4(%ebx),%esi
 93b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 93e:	39 f8                	cmp    %edi,%eax
 940:	75 d0                	jne    912 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 942:	03 70 04             	add    0x4(%eax),%esi
 945:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 948:	8b 02                	mov    (%edx),%eax
 94a:	8b 00                	mov    (%eax),%eax
 94c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 94f:	8b 42 04             	mov    0x4(%edx),%eax
 952:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 955:	39 f1                	cmp    %esi,%ecx
 957:	75 c6                	jne    91f <free+0x3f>
    p->s.size += bp->s.size;
 959:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 95c:	89 15 40 12 00 00    	mov    %edx,0x1240
    p->s.size += bp->s.size;
 962:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 965:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 968:	89 0a                	mov    %ecx,(%edx)
}
 96a:	5b                   	pop    %ebx
 96b:	5e                   	pop    %esi
 96c:	5f                   	pop    %edi
 96d:	5d                   	pop    %ebp
 96e:	c3                   	ret    
 96f:	90                   	nop

00000970 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
 976:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 979:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 97c:	8b 3d 40 12 00 00    	mov    0x1240,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 982:	8d 70 07             	lea    0x7(%eax),%esi
 985:	c1 ee 03             	shr    $0x3,%esi
 988:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 98b:	85 ff                	test   %edi,%edi
 98d:	0f 84 9d 00 00 00    	je     a30 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 993:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 995:	8b 4a 04             	mov    0x4(%edx),%ecx
 998:	39 f1                	cmp    %esi,%ecx
 99a:	73 6a                	jae    a06 <malloc+0x96>
 99c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9a1:	39 de                	cmp    %ebx,%esi
 9a3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9a6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9b0:	eb 17                	jmp    9c9 <malloc+0x59>
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ba:	8b 48 04             	mov    0x4(%eax),%ecx
 9bd:	39 f1                	cmp    %esi,%ecx
 9bf:	73 4f                	jae    a10 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9c1:	8b 3d 40 12 00 00    	mov    0x1240,%edi
 9c7:	89 c2                	mov    %eax,%edx
 9c9:	39 d7                	cmp    %edx,%edi
 9cb:	75 eb                	jne    9b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9cd:	83 ec 0c             	sub    $0xc,%esp
 9d0:	ff 75 e4             	push   -0x1c(%ebp)
 9d3:	e8 83 fc ff ff       	call   65b <sbrk>
  if(p == (char*)-1)
 9d8:	83 c4 10             	add    $0x10,%esp
 9db:	83 f8 ff             	cmp    $0xffffffff,%eax
 9de:	74 1c                	je     9fc <malloc+0x8c>
  hp->s.size = nu;
 9e0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9e3:	83 ec 0c             	sub    $0xc,%esp
 9e6:	83 c0 08             	add    $0x8,%eax
 9e9:	50                   	push   %eax
 9ea:	e8 f1 fe ff ff       	call   8e0 <free>
  return freep;
 9ef:	8b 15 40 12 00 00    	mov    0x1240,%edx
      if((p = morecore(nunits)) == 0)
 9f5:	83 c4 10             	add    $0x10,%esp
 9f8:	85 d2                	test   %edx,%edx
 9fa:	75 bc                	jne    9b8 <malloc+0x48>
        return 0;
  }
}
 9fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ff:	31 c0                	xor    %eax,%eax
}
 a01:	5b                   	pop    %ebx
 a02:	5e                   	pop    %esi
 a03:	5f                   	pop    %edi
 a04:	5d                   	pop    %ebp
 a05:	c3                   	ret    
    if(p->s.size >= nunits){
 a06:	89 d0                	mov    %edx,%eax
 a08:	89 fa                	mov    %edi,%edx
 a0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a10:	39 ce                	cmp    %ecx,%esi
 a12:	74 4c                	je     a60 <malloc+0xf0>
        p->s.size -= nunits;
 a14:	29 f1                	sub    %esi,%ecx
 a16:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a19:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a1c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a1f:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 a25:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a28:	83 c0 08             	add    $0x8,%eax
}
 a2b:	5b                   	pop    %ebx
 a2c:	5e                   	pop    %esi
 a2d:	5f                   	pop    %edi
 a2e:	5d                   	pop    %ebp
 a2f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a30:	c7 05 40 12 00 00 44 	movl   $0x1244,0x1240
 a37:	12 00 00 
    base.s.size = 0;
 a3a:	bf 44 12 00 00       	mov    $0x1244,%edi
    base.s.ptr = freep = prevp = &base;
 a3f:	c7 05 44 12 00 00 44 	movl   $0x1244,0x1244
 a46:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a49:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a4b:	c7 05 48 12 00 00 00 	movl   $0x0,0x1248
 a52:	00 00 00 
    if(p->s.size >= nunits){
 a55:	e9 42 ff ff ff       	jmp    99c <malloc+0x2c>
 a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a60:	8b 08                	mov    (%eax),%ecx
 a62:	89 0a                	mov    %ecx,(%edx)
 a64:	eb b9                	jmp    a1f <malloc+0xaf>
