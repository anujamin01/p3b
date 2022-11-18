
_test_10:     file format elf32-i386


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
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 ac 05 00 00       	call   5c3 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 60 0e 00 00       	mov    %eax,0xe60
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 00 01 00 00       	push   $0x100
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 81 01 00 00       	call   1c0 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 03 02 00 00       	call   250 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 2);
  51:	83 3d 58 0e 00 00 02 	cmpl   $0x2,0xe58
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 23                	push   $0x23
  60:	68 d8 09 00 00       	push   $0x9d8
  65:	68 e2 09 00 00       	push   $0x9e2
  6a:	6a 01                	push   $0x1
  6c:	e8 3f 06 00 00       	call   6b0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 5b 0a 00 00       	push   $0xa5b
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 22                	push   $0x22
  7d:	68 d8 09 00 00       	push   $0x9d8
  82:	68 e2 09 00 00       	push   $0x9e2
  87:	6a 01                	push   $0x1
  89:	e8 22 06 00 00       	call   6b0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 44 0a 00 00       	push   $0xa44
  96:	68 f9 09 00 00       	push   $0x9f9
  9b:	6a 01                	push   $0x1
  9d:	e8 0e 06 00 00       	call   6b0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 0d 0a 00 00       	push   $0xa0d
  a9:	6a 01                	push   $0x1
  ab:	e8 00 06 00 00       	call   6b0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 60 0e 00 00    	push   0xe60
  b7:	e8 b7 04 00 00       	call   573 <kill>
  bc:	e8 82 04 00 00       	call   543 <exit>
   assert(thread_pid > 0);
  c1:	6a 1f                	push   $0x1f
  c3:	68 d8 09 00 00       	push   $0x9d8
  c8:	68 e2 09 00 00       	push   $0x9e2
  cd:	6a 01                	push   $0x1
  cf:	e8 dc 05 00 00       	call   6b0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 35 0a 00 00       	push   $0xa35
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 67 0a 00 00       	push   $0xa67
  e5:	6a 01                	push   $0x1
  e7:	e8 c4 05 00 00       	call   6b0 <printf>
   exit();
  ec:	e8 52 04 00 00       	call   543 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <worker>:
}

void
worker(void *arg1, void *arg2) {
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 35);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 23             	cmpl   $0x23,(%eax)
 111:	75 75                	jne    188 <worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <worker+0x42>
   assert(global == 1);
 118:	83 3d 58 0e 00 00 01 	cmpl   $0x1,0xe58
 11f:	0f 84 80 00 00 00    	je     1a5 <worker+0xa5>
 125:	6a 2f                	push   $0x2f
 127:	68 d8 09 00 00       	push   $0x9d8
 12c:	68 e2 09 00 00       	push   $0x9e2
 131:	6a 01                	push   $0x1
 133:	e8 78 05 00 00       	call   6b0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 29 0a 00 00       	push   $0xa29
 140:	eb 1b                	jmp    15d <worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2e                	push   $0x2e
 144:	68 d8 09 00 00       	push   $0x9d8
 149:	68 e2 09 00 00       	push   $0x9e2
 14e:	6a 01                	push   $0x1
 150:	e8 5b 05 00 00       	call   6b0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 1a 0a 00 00       	push   $0xa1a
 15d:	68 f9 09 00 00       	push   $0x9f9
 162:	6a 01                	push   $0x1
 164:	e8 47 05 00 00       	call   6b0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 0d 0a 00 00       	push   $0xa0d
 170:	6a 01                	push   $0x1
 172:	e8 39 05 00 00       	call   6b0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 60 0e 00 00    	push   0xe60
 17e:	e8 f0 03 00 00       	call   573 <kill>
 183:	e8 bb 03 00 00       	call   543 <exit>
   assert(arg1_int == 35);
 188:	6a 2d                	push   $0x2d
 18a:	68 d8 09 00 00       	push   $0x9d8
 18f:	68 e2 09 00 00       	push   $0x9e2
 194:	6a 01                	push   $0x1
 196:	e8 15 05 00 00       	call   6b0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 ea 09 00 00       	push   $0x9ea
 1a3:	eb b8                	jmp    15d <worker+0x5d>
   global++;
 1a5:	c7 05 58 0e 00 00 02 	movl   $0x2,0xe58
 1ac:	00 00 00 
   exit();
 1af:	e8 8f 03 00 00       	call   543 <exit>
 1b4:	66 90                	xchg   %ax,%ax
 1b6:	66 90                	xchg   %ax,%ax
 1b8:	66 90                	xchg   %ax,%ax
 1ba:	66 90                	xchg   %ax,%ax
 1bc:	66 90                	xchg   %ax,%ax
 1be:	66 90                	xchg   %ax,%ax

000001c0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 1c5:	31 db                	xor    %ebx,%ebx
 1c7:	eb 0f                	jmp    1d8 <thread_create+0x18>
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1d0:	83 c3 01             	add    $0x1,%ebx
 1d3:	83 fb 40             	cmp    $0x40,%ebx
 1d6:	74 60                	je     238 <thread_create+0x78>
    if (inUse[i] == 0){
 1d8:	8b 04 9d 80 0e 00 00 	mov    0xe80(,%ebx,4),%eax
 1df:	85 c0                	test   %eax,%eax
 1e1:	75 ed                	jne    1d0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 1e3:	a1 5c 0e 00 00       	mov    0xe5c,%eax
 1e8:	83 ec 0c             	sub    $0xc,%esp
 1eb:	01 c0                	add    %eax,%eax
 1ed:	50                   	push   %eax
 1ee:	e8 ed 06 00 00       	call   8e0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 1f3:	8b 35 5c 0e 00 00    	mov    0xe5c,%esi
 1f9:	83 c4 10             	add    $0x10,%esp
 1fc:	99                   	cltd   
      malloc_addrs[i] = stack;
 1fd:	89 04 9d 80 0f 00 00 	mov    %eax,0xf80(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 204:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 206:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 208:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 20b:	29 d6                	sub    %edx,%esi
 20d:	01 f1                	add    %esi,%ecx
 20f:	85 d2                	test   %edx,%edx
 211:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 214:	51                   	push   %ecx
 215:	ff 75 10             	push   0x10(%ebp)
 218:	ff 75 0c             	push   0xc(%ebp)
 21b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 21e:	89 0c 9d 80 10 00 00 	mov    %ecx,0x1080(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 225:	e8 b9 03 00 00       	call   5e3 <clone>
 22a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 22d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 230:	5b                   	pop    %ebx
 231:	5e                   	pop    %esi
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 238:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 23b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 240:	5b                   	pop    %ebx
 241:	5e                   	pop    %esi
 242:	5d                   	pop    %ebp
 243:	c3                   	ret    
 244:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 24f:	90                   	nop

00000250 <thread_join>:

int 
thread_join()
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	56                   	push   %esi
 254:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 255:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 258:	31 db                	xor    %ebx,%ebx
{
 25a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 25d:	50                   	push   %eax
 25e:	e8 88 03 00 00       	call   5eb <join>
 263:	83 c4 10             	add    $0x10,%esp
 266:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 268:	eb 0e                	jmp    278 <thread_join+0x28>
 26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 270:	83 c3 01             	add    $0x1,%ebx
 273:	83 fb 40             	cmp    $0x40,%ebx
 276:	74 27                	je     29f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 278:	83 3c 9d 80 0e 00 00 	cmpl   $0x1,0xe80(,%ebx,4)
 27f:	01 
 280:	75 ee                	jne    270 <thread_join+0x20>
      free(malloc_addrs[i]);
 282:	83 ec 0c             	sub    $0xc,%esp
 285:	ff 34 9d 80 0f 00 00 	push   0xf80(,%ebx,4)
 28c:	e8 bf 05 00 00       	call   850 <free>
      inUse[i] = 0;
      break;
 291:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 294:	c7 04 9d 80 0e 00 00 	movl   $0x0,0xe80(,%ebx,4)
 29b:	00 00 00 00 
    }
  }
  return id;
}
 29f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2a2:	89 f0                	mov    %esi,%eax
 2a4:	5b                   	pop    %ebx
 2a5:	5e                   	pop    %esi
 2a6:	5d                   	pop    %ebp
 2a7:	c3                   	ret    
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <lock_init>:

void lock_init(lock_t *lock){
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 2bc:	5d                   	pop    %ebp
 2bd:	c3                   	ret    
 2be:	66 90                	xchg   %ax,%ax

000002c0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 2c0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 2c1:	b9 01 00 00 00       	mov    $0x1,%ecx
 2c6:	89 e5                	mov    %esp,%ebp
 2c8:	8b 55 08             	mov    0x8(%ebp),%edx
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop
 2d0:	89 c8                	mov    %ecx,%eax
 2d2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 2d5:	85 c0                	test   %eax,%eax
 2d7:	75 f7                	jne    2d0 <lock_acquire+0x10>
}
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret    
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop

000002e0 <lock_release>:

void lock_release(lock_t *lock){
 2e0:	55                   	push   %ebp
 2e1:	31 c0                	xor    %eax,%eax
 2e3:	89 e5                	mov    %esp,%ebp
 2e5:	8b 55 08             	mov    0x8(%ebp),%edx
 2e8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 2eb:	5d                   	pop    %ebp
 2ec:	c3                   	ret    
 2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 2f0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2f1:	31 c0                	xor    %eax,%eax
{
 2f3:	89 e5                	mov    %esp,%ebp
 2f5:	53                   	push   %ebx
 2f6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 300:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 304:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 307:	83 c0 01             	add    $0x1,%eax
 30a:	84 d2                	test   %dl,%dl
 30c:	75 f2                	jne    300 <strcpy+0x10>
    ;
  return os;
}
 30e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 311:	89 c8                	mov    %ecx,%eax
 313:	c9                   	leave  
 314:	c3                   	ret    
 315:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000320 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	8b 55 08             	mov    0x8(%ebp),%edx
 327:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 32a:	0f b6 02             	movzbl (%edx),%eax
 32d:	84 c0                	test   %al,%al
 32f:	75 17                	jne    348 <strcmp+0x28>
 331:	eb 3a                	jmp    36d <strcmp+0x4d>
 333:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 337:	90                   	nop
 338:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 33c:	83 c2 01             	add    $0x1,%edx
 33f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 342:	84 c0                	test   %al,%al
 344:	74 1a                	je     360 <strcmp+0x40>
    p++, q++;
 346:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 348:	0f b6 19             	movzbl (%ecx),%ebx
 34b:	38 c3                	cmp    %al,%bl
 34d:	74 e9                	je     338 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 34f:	29 d8                	sub    %ebx,%eax
}
 351:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 354:	c9                   	leave  
 355:	c3                   	ret    
 356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 360:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 364:	31 c0                	xor    %eax,%eax
 366:	29 d8                	sub    %ebx,%eax
}
 368:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 36b:	c9                   	leave  
 36c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 36d:	0f b6 19             	movzbl (%ecx),%ebx
 370:	31 c0                	xor    %eax,%eax
 372:	eb db                	jmp    34f <strcmp+0x2f>
 374:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <strlen>:

uint
strlen(const char *s)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 386:	80 3a 00             	cmpb   $0x0,(%edx)
 389:	74 15                	je     3a0 <strlen+0x20>
 38b:	31 c0                	xor    %eax,%eax
 38d:	8d 76 00             	lea    0x0(%esi),%esi
 390:	83 c0 01             	add    $0x1,%eax
 393:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 397:	89 c1                	mov    %eax,%ecx
 399:	75 f5                	jne    390 <strlen+0x10>
    ;
  return n;
}
 39b:	89 c8                	mov    %ecx,%eax
 39d:	5d                   	pop    %ebp
 39e:	c3                   	ret    
 39f:	90                   	nop
  for(n = 0; s[n]; n++)
 3a0:	31 c9                	xor    %ecx,%ecx
}
 3a2:	5d                   	pop    %ebp
 3a3:	89 c8                	mov    %ecx,%eax
 3a5:	c3                   	ret    
 3a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ad:	8d 76 00             	lea    0x0(%esi),%esi

000003b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 3b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 3bd:	89 d7                	mov    %edx,%edi
 3bf:	fc                   	cld    
 3c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3c2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3c5:	89 d0                	mov    %edx,%eax
 3c7:	c9                   	leave  
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <strchr>:

char*
strchr(const char *s, char c)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
 3d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3da:	0f b6 10             	movzbl (%eax),%edx
 3dd:	84 d2                	test   %dl,%dl
 3df:	75 12                	jne    3f3 <strchr+0x23>
 3e1:	eb 1d                	jmp    400 <strchr+0x30>
 3e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e7:	90                   	nop
 3e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3ec:	83 c0 01             	add    $0x1,%eax
 3ef:	84 d2                	test   %dl,%dl
 3f1:	74 0d                	je     400 <strchr+0x30>
    if(*s == c)
 3f3:	38 d1                	cmp    %dl,%cl
 3f5:	75 f1                	jne    3e8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3f7:	5d                   	pop    %ebp
 3f8:	c3                   	ret    
 3f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 400:	31 c0                	xor    %eax,%eax
}
 402:	5d                   	pop    %ebp
 403:	c3                   	ret    
 404:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 40f:	90                   	nop

00000410 <gets>:

char*
gets(char *buf, int max)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 415:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 418:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 419:	31 db                	xor    %ebx,%ebx
{
 41b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 41e:	eb 27                	jmp    447 <gets+0x37>
    cc = read(0, &c, 1);
 420:	83 ec 04             	sub    $0x4,%esp
 423:	6a 01                	push   $0x1
 425:	57                   	push   %edi
 426:	6a 00                	push   $0x0
 428:	e8 2e 01 00 00       	call   55b <read>
    if(cc < 1)
 42d:	83 c4 10             	add    $0x10,%esp
 430:	85 c0                	test   %eax,%eax
 432:	7e 1d                	jle    451 <gets+0x41>
      break;
    buf[i++] = c;
 434:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 438:	8b 55 08             	mov    0x8(%ebp),%edx
 43b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 43f:	3c 0a                	cmp    $0xa,%al
 441:	74 1d                	je     460 <gets+0x50>
 443:	3c 0d                	cmp    $0xd,%al
 445:	74 19                	je     460 <gets+0x50>
  for(i=0; i+1 < max; ){
 447:	89 de                	mov    %ebx,%esi
 449:	83 c3 01             	add    $0x1,%ebx
 44c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 44f:	7c cf                	jl     420 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 451:	8b 45 08             	mov    0x8(%ebp),%eax
 454:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 458:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45b:	5b                   	pop    %ebx
 45c:	5e                   	pop    %esi
 45d:	5f                   	pop    %edi
 45e:	5d                   	pop    %ebp
 45f:	c3                   	ret    
  buf[i] = '\0';
 460:	8b 45 08             	mov    0x8(%ebp),%eax
 463:	89 de                	mov    %ebx,%esi
 465:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 469:	8d 65 f4             	lea    -0xc(%ebp),%esp
 46c:	5b                   	pop    %ebx
 46d:	5e                   	pop    %esi
 46e:	5f                   	pop    %edi
 46f:	5d                   	pop    %ebp
 470:	c3                   	ret    
 471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 478:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <stat>:

int
stat(const char *n, struct stat *st)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	56                   	push   %esi
 484:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 485:	83 ec 08             	sub    $0x8,%esp
 488:	6a 00                	push   $0x0
 48a:	ff 75 08             	push   0x8(%ebp)
 48d:	e8 f1 00 00 00       	call   583 <open>
  if(fd < 0)
 492:	83 c4 10             	add    $0x10,%esp
 495:	85 c0                	test   %eax,%eax
 497:	78 27                	js     4c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 499:	83 ec 08             	sub    $0x8,%esp
 49c:	ff 75 0c             	push   0xc(%ebp)
 49f:	89 c3                	mov    %eax,%ebx
 4a1:	50                   	push   %eax
 4a2:	e8 f4 00 00 00       	call   59b <fstat>
  close(fd);
 4a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4aa:	89 c6                	mov    %eax,%esi
  close(fd);
 4ac:	e8 ba 00 00 00       	call   56b <close>
  return r;
 4b1:	83 c4 10             	add    $0x10,%esp
}
 4b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4b7:	89 f0                	mov    %esi,%eax
 4b9:	5b                   	pop    %ebx
 4ba:	5e                   	pop    %esi
 4bb:	5d                   	pop    %ebp
 4bc:	c3                   	ret    
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4c5:	eb ed                	jmp    4b4 <stat+0x34>
 4c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ce:	66 90                	xchg   %ax,%ax

000004d0 <atoi>:

int
atoi(const char *s)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4d7:	0f be 02             	movsbl (%edx),%eax
 4da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4e5:	77 1e                	ja     505 <atoi+0x35>
 4e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ee:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4f0:	83 c2 01             	add    $0x1,%edx
 4f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4fa:	0f be 02             	movsbl (%edx),%eax
 4fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 500:	80 fb 09             	cmp    $0x9,%bl
 503:	76 eb                	jbe    4f0 <atoi+0x20>
  return n;
}
 505:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 508:	89 c8                	mov    %ecx,%eax
 50a:	c9                   	leave  
 50b:	c3                   	ret    
 50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000510 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	57                   	push   %edi
 514:	8b 45 10             	mov    0x10(%ebp),%eax
 517:	8b 55 08             	mov    0x8(%ebp),%edx
 51a:	56                   	push   %esi
 51b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 51e:	85 c0                	test   %eax,%eax
 520:	7e 13                	jle    535 <memmove+0x25>
 522:	01 d0                	add    %edx,%eax
  dst = vdst;
 524:	89 d7                	mov    %edx,%edi
 526:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 530:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 531:	39 f8                	cmp    %edi,%eax
 533:	75 fb                	jne    530 <memmove+0x20>
  return vdst;
}
 535:	5e                   	pop    %esi
 536:	89 d0                	mov    %edx,%eax
 538:	5f                   	pop    %edi
 539:	5d                   	pop    %ebp
 53a:	c3                   	ret    

0000053b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 53b:	b8 01 00 00 00       	mov    $0x1,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <exit>:
SYSCALL(exit)
 543:	b8 02 00 00 00       	mov    $0x2,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <wait>:
SYSCALL(wait)
 54b:	b8 03 00 00 00       	mov    $0x3,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    

00000553 <pipe>:
SYSCALL(pipe)
 553:	b8 04 00 00 00       	mov    $0x4,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret    

0000055b <read>:
SYSCALL(read)
 55b:	b8 05 00 00 00       	mov    $0x5,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret    

00000563 <write>:
SYSCALL(write)
 563:	b8 10 00 00 00       	mov    $0x10,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret    

0000056b <close>:
SYSCALL(close)
 56b:	b8 15 00 00 00       	mov    $0x15,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret    

00000573 <kill>:
SYSCALL(kill)
 573:	b8 06 00 00 00       	mov    $0x6,%eax
 578:	cd 40                	int    $0x40
 57a:	c3                   	ret    

0000057b <exec>:
SYSCALL(exec)
 57b:	b8 07 00 00 00       	mov    $0x7,%eax
 580:	cd 40                	int    $0x40
 582:	c3                   	ret    

00000583 <open>:
SYSCALL(open)
 583:	b8 0f 00 00 00       	mov    $0xf,%eax
 588:	cd 40                	int    $0x40
 58a:	c3                   	ret    

0000058b <mknod>:
SYSCALL(mknod)
 58b:	b8 11 00 00 00       	mov    $0x11,%eax
 590:	cd 40                	int    $0x40
 592:	c3                   	ret    

00000593 <unlink>:
SYSCALL(unlink)
 593:	b8 12 00 00 00       	mov    $0x12,%eax
 598:	cd 40                	int    $0x40
 59a:	c3                   	ret    

0000059b <fstat>:
SYSCALL(fstat)
 59b:	b8 08 00 00 00       	mov    $0x8,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret    

000005a3 <link>:
SYSCALL(link)
 5a3:	b8 13 00 00 00       	mov    $0x13,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret    

000005ab <mkdir>:
SYSCALL(mkdir)
 5ab:	b8 14 00 00 00       	mov    $0x14,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret    

000005b3 <chdir>:
SYSCALL(chdir)
 5b3:	b8 09 00 00 00       	mov    $0x9,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret    

000005bb <dup>:
SYSCALL(dup)
 5bb:	b8 0a 00 00 00       	mov    $0xa,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret    

000005c3 <getpid>:
SYSCALL(getpid)
 5c3:	b8 0b 00 00 00       	mov    $0xb,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret    

000005cb <sbrk>:
SYSCALL(sbrk)
 5cb:	b8 0c 00 00 00       	mov    $0xc,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret    

000005d3 <sleep>:
SYSCALL(sleep)
 5d3:	b8 0d 00 00 00       	mov    $0xd,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret    

000005db <uptime>:
SYSCALL(uptime)
 5db:	b8 0e 00 00 00       	mov    $0xe,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret    

000005e3 <clone>:
SYSCALL(clone)
 5e3:	b8 16 00 00 00       	mov    $0x16,%eax
 5e8:	cd 40                	int    $0x40
 5ea:	c3                   	ret    

000005eb <join>:
SYSCALL(join)
 5eb:	b8 17 00 00 00       	mov    $0x17,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    
 5f3:	66 90                	xchg   %ax,%ax
 5f5:	66 90                	xchg   %ax,%ax
 5f7:	66 90                	xchg   %ax,%ax
 5f9:	66 90                	xchg   %ax,%ax
 5fb:	66 90                	xchg   %ax,%ax
 5fd:	66 90                	xchg   %ax,%ax
 5ff:	90                   	nop

00000600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 3c             	sub    $0x3c,%esp
 609:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 60c:	89 d1                	mov    %edx,%ecx
{
 60e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 611:	85 d2                	test   %edx,%edx
 613:	0f 89 7f 00 00 00    	jns    698 <printint+0x98>
 619:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 61d:	74 79                	je     698 <printint+0x98>
    neg = 1;
 61f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 626:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 628:	31 db                	xor    %ebx,%ebx
 62a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 630:	89 c8                	mov    %ecx,%eax
 632:	31 d2                	xor    %edx,%edx
 634:	89 cf                	mov    %ecx,%edi
 636:	f7 75 c4             	divl   -0x3c(%ebp)
 639:	0f b6 92 d4 0a 00 00 	movzbl 0xad4(%edx),%edx
 640:	89 45 c0             	mov    %eax,-0x40(%ebp)
 643:	89 d8                	mov    %ebx,%eax
 645:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 648:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 64b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 64e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 651:	76 dd                	jbe    630 <printint+0x30>
  if(neg)
 653:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 656:	85 c9                	test   %ecx,%ecx
 658:	74 0c                	je     666 <printint+0x66>
    buf[i++] = '-';
 65a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 65f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 661:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 666:	8b 7d b8             	mov    -0x48(%ebp),%edi
 669:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 66d:	eb 07                	jmp    676 <printint+0x76>
 66f:	90                   	nop
    putc(fd, buf[i]);
 670:	0f b6 13             	movzbl (%ebx),%edx
 673:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 676:	83 ec 04             	sub    $0x4,%esp
 679:	88 55 d7             	mov    %dl,-0x29(%ebp)
 67c:	6a 01                	push   $0x1
 67e:	56                   	push   %esi
 67f:	57                   	push   %edi
 680:	e8 de fe ff ff       	call   563 <write>
  while(--i >= 0)
 685:	83 c4 10             	add    $0x10,%esp
 688:	39 de                	cmp    %ebx,%esi
 68a:	75 e4                	jne    670 <printint+0x70>
}
 68c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68f:	5b                   	pop    %ebx
 690:	5e                   	pop    %esi
 691:	5f                   	pop    %edi
 692:	5d                   	pop    %ebp
 693:	c3                   	ret    
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 698:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 69f:	eb 87                	jmp    628 <printint+0x28>
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6bf:	0f b6 13             	movzbl (%ebx),%edx
 6c2:	84 d2                	test   %dl,%dl
 6c4:	74 6a                	je     730 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6c6:	8d 45 10             	lea    0x10(%ebp),%eax
 6c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d4:	eb 36                	jmp    70c <printf+0x5c>
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
 6e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	74 15                	je     702 <printf+0x52>
  write(fd, &c, 1);
 6ed:	83 ec 04             	sub    $0x4,%esp
 6f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6f3:	6a 01                	push   $0x1
 6f5:	57                   	push   %edi
 6f6:	56                   	push   %esi
 6f7:	e8 67 fe ff ff       	call   563 <write>
 6fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 702:	0f b6 13             	movzbl (%ebx),%edx
 705:	83 c3 01             	add    $0x1,%ebx
 708:	84 d2                	test   %dl,%dl
 70a:	74 24                	je     730 <printf+0x80>
    c = fmt[i] & 0xff;
 70c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 70f:	85 c9                	test   %ecx,%ecx
 711:	74 cd                	je     6e0 <printf+0x30>
      }
    } else if(state == '%'){
 713:	83 f9 25             	cmp    $0x25,%ecx
 716:	75 ea                	jne    702 <printf+0x52>
      if(c == 'd'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	0f 84 07 01 00 00    	je     828 <printf+0x178>
 721:	83 e8 63             	sub    $0x63,%eax
 724:	83 f8 15             	cmp    $0x15,%eax
 727:	77 17                	ja     740 <printf+0x90>
 729:	ff 24 85 7c 0a 00 00 	jmp    *0xa7c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 730:	8d 65 f4             	lea    -0xc(%ebp),%esp
 733:	5b                   	pop    %ebx
 734:	5e                   	pop    %esi
 735:	5f                   	pop    %edi
 736:	5d                   	pop    %ebp
 737:	c3                   	ret    
 738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop
  write(fd, &c, 1);
 740:	83 ec 04             	sub    $0x4,%esp
 743:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 746:	6a 01                	push   $0x1
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 74e:	e8 10 fe ff ff       	call   563 <write>
        putc(fd, c);
 753:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 757:	83 c4 0c             	add    $0xc,%esp
 75a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 75d:	6a 01                	push   $0x1
 75f:	57                   	push   %edi
 760:	56                   	push   %esi
 761:	e8 fd fd ff ff       	call   563 <write>
        putc(fd, c);
 766:	83 c4 10             	add    $0x10,%esp
      state = 0;
 769:	31 c9                	xor    %ecx,%ecx
 76b:	eb 95                	jmp    702 <printf+0x52>
 76d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 10 00 00 00       	mov    $0x10,%ecx
 778:	6a 00                	push   $0x0
 77a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77d:	8b 10                	mov    (%eax),%edx
 77f:	89 f0                	mov    %esi,%eax
 781:	e8 7a fe ff ff       	call   600 <printint>
        ap++;
 786:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 78a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 78d:	31 c9                	xor    %ecx,%ecx
 78f:	e9 6e ff ff ff       	jmp    702 <printf+0x52>
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 798:	8b 45 d0             	mov    -0x30(%ebp),%eax
 79b:	8b 10                	mov    (%eax),%edx
        ap++;
 79d:	83 c0 04             	add    $0x4,%eax
 7a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7a3:	85 d2                	test   %edx,%edx
 7a5:	0f 84 8d 00 00 00    	je     838 <printf+0x188>
        while(*s != 0){
 7ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7b0:	84 c0                	test   %al,%al
 7b2:	0f 84 4a ff ff ff    	je     702 <printf+0x52>
 7b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7bb:	89 d3                	mov    %edx,%ebx
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7c3:	83 c3 01             	add    $0x1,%ebx
 7c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7c9:	6a 01                	push   $0x1
 7cb:	57                   	push   %edi
 7cc:	56                   	push   %esi
 7cd:	e8 91 fd ff ff       	call   563 <write>
        while(*s != 0){
 7d2:	0f b6 03             	movzbl (%ebx),%eax
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	84 c0                	test   %al,%al
 7da:	75 e4                	jne    7c0 <printf+0x110>
      state = 0;
 7dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7df:	31 c9                	xor    %ecx,%ecx
 7e1:	e9 1c ff ff ff       	jmp    702 <printf+0x52>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7f8:	6a 01                	push   $0x1
 7fa:	e9 7b ff ff ff       	jmp    77a <printf+0xca>
 7ff:	90                   	nop
        putc(fd, *ap);
 800:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 803:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 806:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 808:	6a 01                	push   $0x1
 80a:	57                   	push   %edi
 80b:	56                   	push   %esi
        putc(fd, *ap);
 80c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 80f:	e8 4f fd ff ff       	call   563 <write>
        ap++;
 814:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 818:	83 c4 10             	add    $0x10,%esp
      state = 0;
 81b:	31 c9                	xor    %ecx,%ecx
 81d:	e9 e0 fe ff ff       	jmp    702 <printf+0x52>
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 828:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 82b:	83 ec 04             	sub    $0x4,%esp
 82e:	e9 2a ff ff ff       	jmp    75d <printf+0xad>
 833:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 837:	90                   	nop
          s = "(null)";
 838:	ba 74 0a 00 00       	mov    $0xa74,%edx
        while(*s != 0){
 83d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 840:	b8 28 00 00 00       	mov    $0x28,%eax
 845:	89 d3                	mov    %edx,%ebx
 847:	e9 74 ff ff ff       	jmp    7c0 <printf+0x110>
 84c:	66 90                	xchg   %ax,%ax
 84e:	66 90                	xchg   %ax,%ax

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	a1 80 11 00 00       	mov    0x1180,%eax
{
 856:	89 e5                	mov    %esp,%ebp
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	53                   	push   %ebx
 85b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 85e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	89 c2                	mov    %eax,%edx
 86a:	8b 00                	mov    (%eax),%eax
 86c:	39 ca                	cmp    %ecx,%edx
 86e:	73 30                	jae    8a0 <free+0x50>
 870:	39 c1                	cmp    %eax,%ecx
 872:	72 04                	jb     878 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 874:	39 c2                	cmp    %eax,%edx
 876:	72 f0                	jb     868 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	74 30                	je     8b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 882:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 885:	8b 42 04             	mov    0x4(%edx),%eax
 888:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 88b:	39 f1                	cmp    %esi,%ecx
 88d:	74 3a                	je     8c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 88f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 891:	5b                   	pop    %ebx
  freep = p;
 892:	89 15 80 11 00 00    	mov    %edx,0x1180
}
 898:	5e                   	pop    %esi
 899:	5f                   	pop    %edi
 89a:	5d                   	pop    %ebp
 89b:	c3                   	ret    
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a0:	39 c2                	cmp    %eax,%edx
 8a2:	72 c4                	jb     868 <free+0x18>
 8a4:	39 c1                	cmp    %eax,%ecx
 8a6:	73 c0                	jae    868 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ae:	39 f8                	cmp    %edi,%eax
 8b0:	75 d0                	jne    882 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8b2:	03 70 04             	add    0x4(%eax),%esi
 8b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b8:	8b 02                	mov    (%edx),%eax
 8ba:	8b 00                	mov    (%eax),%eax
 8bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8bf:	8b 42 04             	mov    0x4(%edx),%eax
 8c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8c5:	39 f1                	cmp    %esi,%ecx
 8c7:	75 c6                	jne    88f <free+0x3f>
    p->s.size += bp->s.size;
 8c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8cc:	89 15 80 11 00 00    	mov    %edx,0x1180
    p->s.size += bp->s.size;
 8d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8d8:	89 0a                	mov    %ecx,(%edx)
}
 8da:	5b                   	pop    %ebx
 8db:	5e                   	pop    %esi
 8dc:	5f                   	pop    %edi
 8dd:	5d                   	pop    %ebp
 8de:	c3                   	ret    
 8df:	90                   	nop

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ec:	8b 3d 80 11 00 00    	mov    0x1180,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f2:	8d 70 07             	lea    0x7(%eax),%esi
 8f5:	c1 ee 03             	shr    $0x3,%esi
 8f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8fb:	85 ff                	test   %edi,%edi
 8fd:	0f 84 9d 00 00 00    	je     9a0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 903:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 905:	8b 4a 04             	mov    0x4(%edx),%ecx
 908:	39 f1                	cmp    %esi,%ecx
 90a:	73 6a                	jae    976 <malloc+0x96>
 90c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 911:	39 de                	cmp    %ebx,%esi
 913:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 916:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 91d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 920:	eb 17                	jmp    939 <malloc+0x59>
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 928:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 92a:	8b 48 04             	mov    0x4(%eax),%ecx
 92d:	39 f1                	cmp    %esi,%ecx
 92f:	73 4f                	jae    980 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 931:	8b 3d 80 11 00 00    	mov    0x1180,%edi
 937:	89 c2                	mov    %eax,%edx
 939:	39 d7                	cmp    %edx,%edi
 93b:	75 eb                	jne    928 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 93d:	83 ec 0c             	sub    $0xc,%esp
 940:	ff 75 e4             	push   -0x1c(%ebp)
 943:	e8 83 fc ff ff       	call   5cb <sbrk>
  if(p == (char*)-1)
 948:	83 c4 10             	add    $0x10,%esp
 94b:	83 f8 ff             	cmp    $0xffffffff,%eax
 94e:	74 1c                	je     96c <malloc+0x8c>
  hp->s.size = nu;
 950:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 953:	83 ec 0c             	sub    $0xc,%esp
 956:	83 c0 08             	add    $0x8,%eax
 959:	50                   	push   %eax
 95a:	e8 f1 fe ff ff       	call   850 <free>
  return freep;
 95f:	8b 15 80 11 00 00    	mov    0x1180,%edx
      if((p = morecore(nunits)) == 0)
 965:	83 c4 10             	add    $0x10,%esp
 968:	85 d2                	test   %edx,%edx
 96a:	75 bc                	jne    928 <malloc+0x48>
        return 0;
  }
}
 96c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 96f:	31 c0                	xor    %eax,%eax
}
 971:	5b                   	pop    %ebx
 972:	5e                   	pop    %esi
 973:	5f                   	pop    %edi
 974:	5d                   	pop    %ebp
 975:	c3                   	ret    
    if(p->s.size >= nunits){
 976:	89 d0                	mov    %edx,%eax
 978:	89 fa                	mov    %edi,%edx
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 980:	39 ce                	cmp    %ecx,%esi
 982:	74 4c                	je     9d0 <malloc+0xf0>
        p->s.size -= nunits;
 984:	29 f1                	sub    %esi,%ecx
 986:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 989:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 98c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 98f:	89 15 80 11 00 00    	mov    %edx,0x1180
}
 995:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 998:	83 c0 08             	add    $0x8,%eax
}
 99b:	5b                   	pop    %ebx
 99c:	5e                   	pop    %esi
 99d:	5f                   	pop    %edi
 99e:	5d                   	pop    %ebp
 99f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9a0:	c7 05 80 11 00 00 84 	movl   $0x1184,0x1180
 9a7:	11 00 00 
    base.s.size = 0;
 9aa:	bf 84 11 00 00       	mov    $0x1184,%edi
    base.s.ptr = freep = prevp = &base;
 9af:	c7 05 84 11 00 00 84 	movl   $0x1184,0x1184
 9b6:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9bb:	c7 05 88 11 00 00 00 	movl   $0x0,0x1188
 9c2:	00 00 00 
    if(p->s.size >= nunits){
 9c5:	e9 42 ff ff ff       	jmp    90c <malloc+0x2c>
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9d0:	8b 08                	mov    (%eax),%ecx
 9d2:	89 0a                	mov    %ecx,(%edx)
 9d4:	eb b9                	jmp    98f <malloc+0xaf>
