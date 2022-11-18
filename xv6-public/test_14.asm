
_test_14:     file format elf32-i386


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
  12:	e8 9c 05 00 00       	call   5b3 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 60 0e 00 00       	mov    %eax,0xe60
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 00 01 00 00       	push   $0x100
   int arg1 = 42, arg2 = 24;
  33:	c7 45 f4 18 00 00 00 	movl   $0x18,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 71 01 00 00       	call   1b0 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 f3 01 00 00       	call   240 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 2);
  51:	83 3d 48 0e 00 00 02 	cmpl   $0x2,0xe48
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 c8 09 00 00       	push   $0x9c8
  65:	68 d2 09 00 00       	push   $0x9d2
  6a:	6a 01                	push   $0x1
  6c:	e8 2f 06 00 00       	call   6a0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 43 0a 00 00       	push   $0xa43
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 c8 09 00 00       	push   $0x9c8
  82:	68 d2 09 00 00       	push   $0x9d2
  87:	6a 01                	push   $0x1
  89:	e8 12 06 00 00       	call   6a0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 2c 0a 00 00       	push   $0xa2c
  96:	68 e5 09 00 00       	push   $0x9e5
  9b:	6a 01                	push   $0x1
  9d:	e8 fe 05 00 00       	call   6a0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 f9 09 00 00       	push   $0x9f9
  a9:	6a 01                	push   $0x1
  ab:	e8 f0 05 00 00       	call   6a0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 60 0e 00 00    	push   0xe60
  b7:	e8 a7 04 00 00       	call   563 <kill>
  bc:	e8 72 04 00 00       	call   533 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 c8 09 00 00       	push   $0x9c8
  c8:	68 d2 09 00 00       	push   $0x9d2
  cd:	6a 01                	push   $0x1
  cf:	e8 cc 05 00 00       	call   6a0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 1d 0a 00 00       	push   $0xa1d
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 4f 0a 00 00       	push   $0xa4f
  e5:	6a 01                	push   $0x1
  e7:	e8 b4 05 00 00       	call   6a0 <printf>
   exit();
  ec:	e8 42 04 00 00       	call   533 <exit>
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
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 2a             	cmpl   $0x2a,(%eax)
 111:	75 1a                	jne    12d <worker+0x2d>
   assert(tmp2 == 24);
 113:	83 fa 18             	cmp    $0x18,%edx
 116:	75 78                	jne    190 <worker+0x90>
   assert(global == 1);
 118:	83 3d 48 0e 00 00 01 	cmpl   $0x1,0xe48
 11f:	75 52                	jne    173 <worker+0x73>
   global++;
 121:	c7 05 48 0e 00 00 02 	movl   $0x2,0xe48
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(tmp1 == 42);
 12d:	6a 2c                	push   $0x2c
 12f:	68 c8 09 00 00       	push   $0x9c8
 134:	68 d2 09 00 00       	push   $0x9d2
 139:	6a 01                	push   $0x1
 13b:	e8 60 05 00 00       	call   6a0 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 da 09 00 00       	push   $0x9da
   assert(tmp2 == 24);
 148:	68 e5 09 00 00       	push   $0x9e5
 14d:	6a 01                	push   $0x1
 14f:	e8 4c 05 00 00       	call   6a0 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 f9 09 00 00       	push   $0x9f9
 15b:	6a 01                	push   $0x1
 15d:	e8 3e 05 00 00       	call   6a0 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 60 0e 00 00    	push   0xe60
 169:	e8 f5 03 00 00       	call   563 <kill>
 16e:	e8 c0 03 00 00       	call   533 <exit>
   assert(global == 1);
 173:	6a 2e                	push   $0x2e
 175:	68 c8 09 00 00       	push   $0x9c8
 17a:	68 d2 09 00 00       	push   $0x9d2
 17f:	6a 01                	push   $0x1
 181:	e8 1a 05 00 00       	call   6a0 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 11 0a 00 00       	push   $0xa11
 18e:	eb b8                	jmp    148 <worker+0x48>
   assert(tmp2 == 24);
 190:	6a 2d                	push   $0x2d
 192:	68 c8 09 00 00       	push   $0x9c8
 197:	68 d2 09 00 00       	push   $0x9d2
 19c:	6a 01                	push   $0x1
 19e:	e8 fd 04 00 00       	call   6a0 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 06 0a 00 00       	push   $0xa06
 1ab:	eb 9b                	jmp    148 <worker+0x48>
 1ad:	66 90                	xchg   %ax,%ax
 1af:	90                   	nop

000001b0 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 1b5:	31 db                	xor    %ebx,%ebx
 1b7:	eb 0f                	jmp    1c8 <thread_create+0x18>
 1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1c0:	83 c3 01             	add    $0x1,%ebx
 1c3:	83 fb 40             	cmp    $0x40,%ebx
 1c6:	74 60                	je     228 <thread_create+0x78>
    if (inUse[i] == 0){
 1c8:	8b 04 9d 80 0e 00 00 	mov    0xe80(,%ebx,4),%eax
 1cf:	85 c0                	test   %eax,%eax
 1d1:	75 ed                	jne    1c0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 1d3:	a1 4c 0e 00 00       	mov    0xe4c,%eax
 1d8:	83 ec 0c             	sub    $0xc,%esp
 1db:	01 c0                	add    %eax,%eax
 1dd:	50                   	push   %eax
 1de:	e8 ed 06 00 00       	call   8d0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 1e3:	8b 35 4c 0e 00 00    	mov    0xe4c,%esi
 1e9:	83 c4 10             	add    $0x10,%esp
 1ec:	99                   	cltd   
      malloc_addrs[i] = stack;
 1ed:	89 04 9d 80 0f 00 00 	mov    %eax,0xf80(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 1f4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 1f6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 1f8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 1fb:	29 d6                	sub    %edx,%esi
 1fd:	01 f1                	add    %esi,%ecx
 1ff:	85 d2                	test   %edx,%edx
 201:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 204:	51                   	push   %ecx
 205:	ff 75 10             	push   0x10(%ebp)
 208:	ff 75 0c             	push   0xc(%ebp)
 20b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 20e:	89 0c 9d 80 10 00 00 	mov    %ecx,0x1080(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 215:	e8 b9 03 00 00       	call   5d3 <clone>
 21a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 21d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 220:	5b                   	pop    %ebx
 221:	5e                   	pop    %esi
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 228:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 22b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 230:	5b                   	pop    %ebx
 231:	5e                   	pop    %esi
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <thread_join>:

int 
thread_join()
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	56                   	push   %esi
 244:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 245:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 248:	31 db                	xor    %ebx,%ebx
{
 24a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 24d:	50                   	push   %eax
 24e:	e8 88 03 00 00       	call   5db <join>
 253:	83 c4 10             	add    $0x10,%esp
 256:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 258:	eb 0e                	jmp    268 <thread_join+0x28>
 25a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 260:	83 c3 01             	add    $0x1,%ebx
 263:	83 fb 40             	cmp    $0x40,%ebx
 266:	74 27                	je     28f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 268:	83 3c 9d 80 0e 00 00 	cmpl   $0x1,0xe80(,%ebx,4)
 26f:	01 
 270:	75 ee                	jne    260 <thread_join+0x20>
      free(malloc_addrs[i]);
 272:	83 ec 0c             	sub    $0xc,%esp
 275:	ff 34 9d 80 0f 00 00 	push   0xf80(,%ebx,4)
 27c:	e8 bf 05 00 00       	call   840 <free>
      inUse[i] = 0;
      break;
 281:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 284:	c7 04 9d 80 0e 00 00 	movl   $0x0,0xe80(,%ebx,4)
 28b:	00 00 00 00 
    }
  }
  return id;
}
 28f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 292:	89 f0                	mov    %esi,%eax
 294:	5b                   	pop    %ebx
 295:	5e                   	pop    %esi
 296:	5d                   	pop    %ebp
 297:	c3                   	ret    
 298:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <lock_init>:

void lock_init(lock_t *lock){
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 2a3:	8b 45 08             	mov    0x8(%ebp),%eax
 2a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 2ac:	5d                   	pop    %ebp
 2ad:	c3                   	ret    
 2ae:	66 90                	xchg   %ax,%ax

000002b0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 2b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 2b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 2b6:	89 e5                	mov    %esp,%ebp
 2b8:	8b 55 08             	mov    0x8(%ebp),%edx
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop
 2c0:	89 c8                	mov    %ecx,%eax
 2c2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 2c5:	85 c0                	test   %eax,%eax
 2c7:	75 f7                	jne    2c0 <lock_acquire+0x10>
}
 2c9:	5d                   	pop    %ebp
 2ca:	c3                   	ret    
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <lock_release>:

void lock_release(lock_t *lock){
 2d0:	55                   	push   %ebp
 2d1:	31 c0                	xor    %eax,%eax
 2d3:	89 e5                	mov    %esp,%ebp
 2d5:	8b 55 08             	mov    0x8(%ebp),%edx
 2d8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi

000002e0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 2e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2e1:	31 c0                	xor    %eax,%eax
{
 2e3:	89 e5                	mov    %esp,%ebp
 2e5:	53                   	push   %ebx
 2e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2f7:	83 c0 01             	add    $0x1,%eax
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strcpy+0x10>
    ;
  return os;
}
 2fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 301:	89 c8                	mov    %ecx,%eax
 303:	c9                   	leave  
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 55 08             	mov    0x8(%ebp),%edx
 317:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 31a:	0f b6 02             	movzbl (%edx),%eax
 31d:	84 c0                	test   %al,%al
 31f:	75 17                	jne    338 <strcmp+0x28>
 321:	eb 3a                	jmp    35d <strcmp+0x4d>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 32c:	83 c2 01             	add    $0x1,%edx
 32f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 332:	84 c0                	test   %al,%al
 334:	74 1a                	je     350 <strcmp+0x40>
    p++, q++;
 336:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 338:	0f b6 19             	movzbl (%ecx),%ebx
 33b:	38 c3                	cmp    %al,%bl
 33d:	74 e9                	je     328 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 33f:	29 d8                	sub    %ebx,%eax
}
 341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 344:	c9                   	leave  
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 350:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 354:	31 c0                	xor    %eax,%eax
 356:	29 d8                	sub    %ebx,%eax
}
 358:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 35b:	c9                   	leave  
 35c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 35d:	0f b6 19             	movzbl (%ecx),%ebx
 360:	31 c0                	xor    %eax,%eax
 362:	eb db                	jmp    33f <strcmp+0x2f>
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 3a 00             	cmpb   $0x0,(%edx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 c0                	xor    %eax,%eax
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c0 01             	add    $0x1,%eax
 383:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 387:	89 c1                	mov    %eax,%ecx
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	89 c8                	mov    %ecx,%eax
 38d:	5d                   	pop    %ebp
 38e:	c3                   	ret    
 38f:	90                   	nop
  for(n = 0; s[n]; n++)
 390:	31 c9                	xor    %ecx,%ecx
}
 392:	5d                   	pop    %ebp
 393:	89 c8                	mov    %ecx,%eax
 395:	c3                   	ret    
 396:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39d:	8d 76 00             	lea    0x0(%esi),%esi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3b5:	89 d0                	mov    %edx,%eax
 3b7:	c9                   	leave  
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 45 08             	mov    0x8(%ebp),%eax
 3c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	75 12                	jne    3e3 <strchr+0x23>
 3d1:	eb 1d                	jmp    3f0 <strchr+0x30>
 3d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d7:	90                   	nop
 3d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3dc:	83 c0 01             	add    $0x1,%eax
 3df:	84 d2                	test   %dl,%dl
 3e1:	74 0d                	je     3f0 <strchr+0x30>
    if(*s == c)
 3e3:	38 d1                	cmp    %dl,%cl
 3e5:	75 f1                	jne    3d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3e7:	5d                   	pop    %ebp
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3f0:	31 c0                	xor    %eax,%eax
}
 3f2:	5d                   	pop    %ebp
 3f3:	c3                   	ret    
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 405:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 408:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 409:	31 db                	xor    %ebx,%ebx
{
 40b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 40e:	eb 27                	jmp    437 <gets+0x37>
    cc = read(0, &c, 1);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	6a 01                	push   $0x1
 415:	57                   	push   %edi
 416:	6a 00                	push   $0x0
 418:	e8 2e 01 00 00       	call   54b <read>
    if(cc < 1)
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	7e 1d                	jle    441 <gets+0x41>
      break;
    buf[i++] = c;
 424:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 428:	8b 55 08             	mov    0x8(%ebp),%edx
 42b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 42f:	3c 0a                	cmp    $0xa,%al
 431:	74 1d                	je     450 <gets+0x50>
 433:	3c 0d                	cmp    $0xd,%al
 435:	74 19                	je     450 <gets+0x50>
  for(i=0; i+1 < max; ){
 437:	89 de                	mov    %ebx,%esi
 439:	83 c3 01             	add    $0x1,%ebx
 43c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 43f:	7c cf                	jl     410 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 441:	8b 45 08             	mov    0x8(%ebp),%eax
 444:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 448:	8d 65 f4             	lea    -0xc(%ebp),%esp
 44b:	5b                   	pop    %ebx
 44c:	5e                   	pop    %esi
 44d:	5f                   	pop    %edi
 44e:	5d                   	pop    %ebp
 44f:	c3                   	ret    
  buf[i] = '\0';
 450:	8b 45 08             	mov    0x8(%ebp),%eax
 453:	89 de                	mov    %ebx,%esi
 455:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 459:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45c:	5b                   	pop    %ebx
 45d:	5e                   	pop    %esi
 45e:	5f                   	pop    %edi
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <stat>:

int
stat(const char *n, struct stat *st)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	56                   	push   %esi
 474:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 475:	83 ec 08             	sub    $0x8,%esp
 478:	6a 00                	push   $0x0
 47a:	ff 75 08             	push   0x8(%ebp)
 47d:	e8 f1 00 00 00       	call   573 <open>
  if(fd < 0)
 482:	83 c4 10             	add    $0x10,%esp
 485:	85 c0                	test   %eax,%eax
 487:	78 27                	js     4b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 489:	83 ec 08             	sub    $0x8,%esp
 48c:	ff 75 0c             	push   0xc(%ebp)
 48f:	89 c3                	mov    %eax,%ebx
 491:	50                   	push   %eax
 492:	e8 f4 00 00 00       	call   58b <fstat>
  close(fd);
 497:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 49a:	89 c6                	mov    %eax,%esi
  close(fd);
 49c:	e8 ba 00 00 00       	call   55b <close>
  return r;
 4a1:	83 c4 10             	add    $0x10,%esp
}
 4a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a7:	89 f0                	mov    %esi,%eax
 4a9:	5b                   	pop    %ebx
 4aa:	5e                   	pop    %esi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4b5:	eb ed                	jmp    4a4 <stat+0x34>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax

000004c0 <atoi>:

int
atoi(const char *s)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4c7:	0f be 02             	movsbl (%edx),%eax
 4ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4d5:	77 1e                	ja     4f5 <atoi+0x35>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4e0:	83 c2 01             	add    $0x1,%edx
 4e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ea:	0f be 02             	movsbl (%edx),%eax
 4ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4f0:	80 fb 09             	cmp    $0x9,%bl
 4f3:	76 eb                	jbe    4e0 <atoi+0x20>
  return n;
}
 4f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f8:	89 c8                	mov    %ecx,%eax
 4fa:	c9                   	leave  
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	8b 45 10             	mov    0x10(%ebp),%eax
 507:	8b 55 08             	mov    0x8(%ebp),%edx
 50a:	56                   	push   %esi
 50b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 50e:	85 c0                	test   %eax,%eax
 510:	7e 13                	jle    525 <memmove+0x25>
 512:	01 d0                	add    %edx,%eax
  dst = vdst;
 514:	89 d7                	mov    %edx,%edi
 516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 520:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 521:	39 f8                	cmp    %edi,%eax
 523:	75 fb                	jne    520 <memmove+0x20>
  return vdst;
}
 525:	5e                   	pop    %esi
 526:	89 d0                	mov    %edx,%eax
 528:	5f                   	pop    %edi
 529:	5d                   	pop    %ebp
 52a:	c3                   	ret    

0000052b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 52b:	b8 01 00 00 00       	mov    $0x1,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret    

00000533 <exit>:
SYSCALL(exit)
 533:	b8 02 00 00 00       	mov    $0x2,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret    

0000053b <wait>:
SYSCALL(wait)
 53b:	b8 03 00 00 00       	mov    $0x3,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <pipe>:
SYSCALL(pipe)
 543:	b8 04 00 00 00       	mov    $0x4,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <read>:
SYSCALL(read)
 54b:	b8 05 00 00 00       	mov    $0x5,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    

00000553 <write>:
SYSCALL(write)
 553:	b8 10 00 00 00       	mov    $0x10,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret    

0000055b <close>:
SYSCALL(close)
 55b:	b8 15 00 00 00       	mov    $0x15,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret    

00000563 <kill>:
SYSCALL(kill)
 563:	b8 06 00 00 00       	mov    $0x6,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret    

0000056b <exec>:
SYSCALL(exec)
 56b:	b8 07 00 00 00       	mov    $0x7,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret    

00000573 <open>:
SYSCALL(open)
 573:	b8 0f 00 00 00       	mov    $0xf,%eax
 578:	cd 40                	int    $0x40
 57a:	c3                   	ret    

0000057b <mknod>:
SYSCALL(mknod)
 57b:	b8 11 00 00 00       	mov    $0x11,%eax
 580:	cd 40                	int    $0x40
 582:	c3                   	ret    

00000583 <unlink>:
SYSCALL(unlink)
 583:	b8 12 00 00 00       	mov    $0x12,%eax
 588:	cd 40                	int    $0x40
 58a:	c3                   	ret    

0000058b <fstat>:
SYSCALL(fstat)
 58b:	b8 08 00 00 00       	mov    $0x8,%eax
 590:	cd 40                	int    $0x40
 592:	c3                   	ret    

00000593 <link>:
SYSCALL(link)
 593:	b8 13 00 00 00       	mov    $0x13,%eax
 598:	cd 40                	int    $0x40
 59a:	c3                   	ret    

0000059b <mkdir>:
SYSCALL(mkdir)
 59b:	b8 14 00 00 00       	mov    $0x14,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret    

000005a3 <chdir>:
SYSCALL(chdir)
 5a3:	b8 09 00 00 00       	mov    $0x9,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret    

000005ab <dup>:
SYSCALL(dup)
 5ab:	b8 0a 00 00 00       	mov    $0xa,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret    

000005b3 <getpid>:
SYSCALL(getpid)
 5b3:	b8 0b 00 00 00       	mov    $0xb,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret    

000005bb <sbrk>:
SYSCALL(sbrk)
 5bb:	b8 0c 00 00 00       	mov    $0xc,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret    

000005c3 <sleep>:
SYSCALL(sleep)
 5c3:	b8 0d 00 00 00       	mov    $0xd,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret    

000005cb <uptime>:
SYSCALL(uptime)
 5cb:	b8 0e 00 00 00       	mov    $0xe,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret    

000005d3 <clone>:
SYSCALL(clone)
 5d3:	b8 16 00 00 00       	mov    $0x16,%eax
 5d8:	cd 40                	int    $0x40
 5da:	c3                   	ret    

000005db <join>:
SYSCALL(join)
 5db:	b8 17 00 00 00       	mov    $0x17,%eax
 5e0:	cd 40                	int    $0x40
 5e2:	c3                   	ret    
 5e3:	66 90                	xchg   %ax,%ax
 5e5:	66 90                	xchg   %ax,%ax
 5e7:	66 90                	xchg   %ax,%ax
 5e9:	66 90                	xchg   %ax,%ax
 5eb:	66 90                	xchg   %ax,%ax
 5ed:	66 90                	xchg   %ax,%ax
 5ef:	90                   	nop

000005f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 3c             	sub    $0x3c,%esp
 5f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5fc:	89 d1                	mov    %edx,%ecx
{
 5fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 601:	85 d2                	test   %edx,%edx
 603:	0f 89 7f 00 00 00    	jns    688 <printint+0x98>
 609:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 60d:	74 79                	je     688 <printint+0x98>
    neg = 1;
 60f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 616:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 618:	31 db                	xor    %ebx,%ebx
 61a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 620:	89 c8                	mov    %ecx,%eax
 622:	31 d2                	xor    %edx,%edx
 624:	89 cf                	mov    %ecx,%edi
 626:	f7 75 c4             	divl   -0x3c(%ebp)
 629:	0f b6 92 bc 0a 00 00 	movzbl 0xabc(%edx),%edx
 630:	89 45 c0             	mov    %eax,-0x40(%ebp)
 633:	89 d8                	mov    %ebx,%eax
 635:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 638:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 63b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 63e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 641:	76 dd                	jbe    620 <printint+0x30>
  if(neg)
 643:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 646:	85 c9                	test   %ecx,%ecx
 648:	74 0c                	je     656 <printint+0x66>
    buf[i++] = '-';
 64a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 64f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 651:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 656:	8b 7d b8             	mov    -0x48(%ebp),%edi
 659:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 65d:	eb 07                	jmp    666 <printint+0x76>
 65f:	90                   	nop
    putc(fd, buf[i]);
 660:	0f b6 13             	movzbl (%ebx),%edx
 663:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 666:	83 ec 04             	sub    $0x4,%esp
 669:	88 55 d7             	mov    %dl,-0x29(%ebp)
 66c:	6a 01                	push   $0x1
 66e:	56                   	push   %esi
 66f:	57                   	push   %edi
 670:	e8 de fe ff ff       	call   553 <write>
  while(--i >= 0)
 675:	83 c4 10             	add    $0x10,%esp
 678:	39 de                	cmp    %ebx,%esi
 67a:	75 e4                	jne    660 <printint+0x70>
}
 67c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67f:	5b                   	pop    %ebx
 680:	5e                   	pop    %esi
 681:	5f                   	pop    %edi
 682:	5d                   	pop    %ebp
 683:	c3                   	ret    
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 688:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 68f:	eb 87                	jmp    618 <printint+0x28>
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop

000006a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
 6a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6ac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6af:	0f b6 13             	movzbl (%ebx),%edx
 6b2:	84 d2                	test   %dl,%dl
 6b4:	74 6a                	je     720 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6b6:	8d 45 10             	lea    0x10(%ebp),%eax
 6b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6bf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6c4:	eb 36                	jmp    6fc <printf+0x5c>
 6c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
 6d0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6d3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6d8:	83 f8 25             	cmp    $0x25,%eax
 6db:	74 15                	je     6f2 <printf+0x52>
  write(fd, &c, 1);
 6dd:	83 ec 04             	sub    $0x4,%esp
 6e0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6e3:	6a 01                	push   $0x1
 6e5:	57                   	push   %edi
 6e6:	56                   	push   %esi
 6e7:	e8 67 fe ff ff       	call   553 <write>
 6ec:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6ef:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6f2:	0f b6 13             	movzbl (%ebx),%edx
 6f5:	83 c3 01             	add    $0x1,%ebx
 6f8:	84 d2                	test   %dl,%dl
 6fa:	74 24                	je     720 <printf+0x80>
    c = fmt[i] & 0xff;
 6fc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6ff:	85 c9                	test   %ecx,%ecx
 701:	74 cd                	je     6d0 <printf+0x30>
      }
    } else if(state == '%'){
 703:	83 f9 25             	cmp    $0x25,%ecx
 706:	75 ea                	jne    6f2 <printf+0x52>
      if(c == 'd'){
 708:	83 f8 25             	cmp    $0x25,%eax
 70b:	0f 84 07 01 00 00    	je     818 <printf+0x178>
 711:	83 e8 63             	sub    $0x63,%eax
 714:	83 f8 15             	cmp    $0x15,%eax
 717:	77 17                	ja     730 <printf+0x90>
 719:	ff 24 85 64 0a 00 00 	jmp    *0xa64(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 720:	8d 65 f4             	lea    -0xc(%ebp),%esp
 723:	5b                   	pop    %ebx
 724:	5e                   	pop    %esi
 725:	5f                   	pop    %edi
 726:	5d                   	pop    %ebp
 727:	c3                   	ret    
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop
  write(fd, &c, 1);
 730:	83 ec 04             	sub    $0x4,%esp
 733:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 736:	6a 01                	push   $0x1
 738:	57                   	push   %edi
 739:	56                   	push   %esi
 73a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 73e:	e8 10 fe ff ff       	call   553 <write>
        putc(fd, c);
 743:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 747:	83 c4 0c             	add    $0xc,%esp
 74a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 74d:	6a 01                	push   $0x1
 74f:	57                   	push   %edi
 750:	56                   	push   %esi
 751:	e8 fd fd ff ff       	call   553 <write>
        putc(fd, c);
 756:	83 c4 10             	add    $0x10,%esp
      state = 0;
 759:	31 c9                	xor    %ecx,%ecx
 75b:	eb 95                	jmp    6f2 <printf+0x52>
 75d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 760:	83 ec 0c             	sub    $0xc,%esp
 763:	b9 10 00 00 00       	mov    $0x10,%ecx
 768:	6a 00                	push   $0x0
 76a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 76d:	8b 10                	mov    (%eax),%edx
 76f:	89 f0                	mov    %esi,%eax
 771:	e8 7a fe ff ff       	call   5f0 <printint>
        ap++;
 776:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 77a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 77d:	31 c9                	xor    %ecx,%ecx
 77f:	e9 6e ff ff ff       	jmp    6f2 <printf+0x52>
 784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 788:	8b 45 d0             	mov    -0x30(%ebp),%eax
 78b:	8b 10                	mov    (%eax),%edx
        ap++;
 78d:	83 c0 04             	add    $0x4,%eax
 790:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 793:	85 d2                	test   %edx,%edx
 795:	0f 84 8d 00 00 00    	je     828 <printf+0x188>
        while(*s != 0){
 79b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 79e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7a0:	84 c0                	test   %al,%al
 7a2:	0f 84 4a ff ff ff    	je     6f2 <printf+0x52>
 7a8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7ab:	89 d3                	mov    %edx,%ebx
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7b3:	83 c3 01             	add    $0x1,%ebx
 7b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7b9:	6a 01                	push   $0x1
 7bb:	57                   	push   %edi
 7bc:	56                   	push   %esi
 7bd:	e8 91 fd ff ff       	call   553 <write>
        while(*s != 0){
 7c2:	0f b6 03             	movzbl (%ebx),%eax
 7c5:	83 c4 10             	add    $0x10,%esp
 7c8:	84 c0                	test   %al,%al
 7ca:	75 e4                	jne    7b0 <printf+0x110>
      state = 0;
 7cc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7cf:	31 c9                	xor    %ecx,%ecx
 7d1:	e9 1c ff ff ff       	jmp    6f2 <printf+0x52>
 7d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7e8:	6a 01                	push   $0x1
 7ea:	e9 7b ff ff ff       	jmp    76a <printf+0xca>
 7ef:	90                   	nop
        putc(fd, *ap);
 7f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7f6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7f8:	6a 01                	push   $0x1
 7fa:	57                   	push   %edi
 7fb:	56                   	push   %esi
        putc(fd, *ap);
 7fc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ff:	e8 4f fd ff ff       	call   553 <write>
        ap++;
 804:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 808:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80b:	31 c9                	xor    %ecx,%ecx
 80d:	e9 e0 fe ff ff       	jmp    6f2 <printf+0x52>
 812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 818:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 81b:	83 ec 04             	sub    $0x4,%esp
 81e:	e9 2a ff ff ff       	jmp    74d <printf+0xad>
 823:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 827:	90                   	nop
          s = "(null)";
 828:	ba 5c 0a 00 00       	mov    $0xa5c,%edx
        while(*s != 0){
 82d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 830:	b8 28 00 00 00       	mov    $0x28,%eax
 835:	89 d3                	mov    %edx,%ebx
 837:	e9 74 ff ff ff       	jmp    7b0 <printf+0x110>
 83c:	66 90                	xchg   %ax,%ax
 83e:	66 90                	xchg   %ax,%ax

00000840 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 840:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 841:	a1 80 11 00 00       	mov    0x1180,%eax
{
 846:	89 e5                	mov    %esp,%ebp
 848:	57                   	push   %edi
 849:	56                   	push   %esi
 84a:	53                   	push   %ebx
 84b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 84e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 858:	89 c2                	mov    %eax,%edx
 85a:	8b 00                	mov    (%eax),%eax
 85c:	39 ca                	cmp    %ecx,%edx
 85e:	73 30                	jae    890 <free+0x50>
 860:	39 c1                	cmp    %eax,%ecx
 862:	72 04                	jb     868 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 864:	39 c2                	cmp    %eax,%edx
 866:	72 f0                	jb     858 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 868:	8b 73 fc             	mov    -0x4(%ebx),%esi
 86b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 86e:	39 f8                	cmp    %edi,%eax
 870:	74 30                	je     8a2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 872:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 875:	8b 42 04             	mov    0x4(%edx),%eax
 878:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 87b:	39 f1                	cmp    %esi,%ecx
 87d:	74 3a                	je     8b9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 87f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 881:	5b                   	pop    %ebx
  freep = p;
 882:	89 15 80 11 00 00    	mov    %edx,0x1180
}
 888:	5e                   	pop    %esi
 889:	5f                   	pop    %edi
 88a:	5d                   	pop    %ebp
 88b:	c3                   	ret    
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 890:	39 c2                	cmp    %eax,%edx
 892:	72 c4                	jb     858 <free+0x18>
 894:	39 c1                	cmp    %eax,%ecx
 896:	73 c0                	jae    858 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 898:	8b 73 fc             	mov    -0x4(%ebx),%esi
 89b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 89e:	39 f8                	cmp    %edi,%eax
 8a0:	75 d0                	jne    872 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8a2:	03 70 04             	add    0x4(%eax),%esi
 8a5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8a8:	8b 02                	mov    (%edx),%eax
 8aa:	8b 00                	mov    (%eax),%eax
 8ac:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8af:	8b 42 04             	mov    0x4(%edx),%eax
 8b2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8b5:	39 f1                	cmp    %esi,%ecx
 8b7:	75 c6                	jne    87f <free+0x3f>
    p->s.size += bp->s.size;
 8b9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8bc:	89 15 80 11 00 00    	mov    %edx,0x1180
    p->s.size += bp->s.size;
 8c2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8c5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8c8:	89 0a                	mov    %ecx,(%edx)
}
 8ca:	5b                   	pop    %ebx
 8cb:	5e                   	pop    %esi
 8cc:	5f                   	pop    %edi
 8cd:	5d                   	pop    %ebp
 8ce:	c3                   	ret    
 8cf:	90                   	nop

000008d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8dc:	8b 3d 80 11 00 00    	mov    0x1180,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e2:	8d 70 07             	lea    0x7(%eax),%esi
 8e5:	c1 ee 03             	shr    $0x3,%esi
 8e8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8eb:	85 ff                	test   %edi,%edi
 8ed:	0f 84 9d 00 00 00    	je     990 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8f5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8f8:	39 f1                	cmp    %esi,%ecx
 8fa:	73 6a                	jae    966 <malloc+0x96>
 8fc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 901:	39 de                	cmp    %ebx,%esi
 903:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 906:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 90d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 910:	eb 17                	jmp    929 <malloc+0x59>
 912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 918:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 91a:	8b 48 04             	mov    0x4(%eax),%ecx
 91d:	39 f1                	cmp    %esi,%ecx
 91f:	73 4f                	jae    970 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 921:	8b 3d 80 11 00 00    	mov    0x1180,%edi
 927:	89 c2                	mov    %eax,%edx
 929:	39 d7                	cmp    %edx,%edi
 92b:	75 eb                	jne    918 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 92d:	83 ec 0c             	sub    $0xc,%esp
 930:	ff 75 e4             	push   -0x1c(%ebp)
 933:	e8 83 fc ff ff       	call   5bb <sbrk>
  if(p == (char*)-1)
 938:	83 c4 10             	add    $0x10,%esp
 93b:	83 f8 ff             	cmp    $0xffffffff,%eax
 93e:	74 1c                	je     95c <malloc+0x8c>
  hp->s.size = nu;
 940:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 943:	83 ec 0c             	sub    $0xc,%esp
 946:	83 c0 08             	add    $0x8,%eax
 949:	50                   	push   %eax
 94a:	e8 f1 fe ff ff       	call   840 <free>
  return freep;
 94f:	8b 15 80 11 00 00    	mov    0x1180,%edx
      if((p = morecore(nunits)) == 0)
 955:	83 c4 10             	add    $0x10,%esp
 958:	85 d2                	test   %edx,%edx
 95a:	75 bc                	jne    918 <malloc+0x48>
        return 0;
  }
}
 95c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 95f:	31 c0                	xor    %eax,%eax
}
 961:	5b                   	pop    %ebx
 962:	5e                   	pop    %esi
 963:	5f                   	pop    %edi
 964:	5d                   	pop    %ebp
 965:	c3                   	ret    
    if(p->s.size >= nunits){
 966:	89 d0                	mov    %edx,%eax
 968:	89 fa                	mov    %edi,%edx
 96a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 970:	39 ce                	cmp    %ecx,%esi
 972:	74 4c                	je     9c0 <malloc+0xf0>
        p->s.size -= nunits;
 974:	29 f1                	sub    %esi,%ecx
 976:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 979:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 97c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 97f:	89 15 80 11 00 00    	mov    %edx,0x1180
}
 985:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 988:	83 c0 08             	add    $0x8,%eax
}
 98b:	5b                   	pop    %ebx
 98c:	5e                   	pop    %esi
 98d:	5f                   	pop    %edi
 98e:	5d                   	pop    %ebp
 98f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 990:	c7 05 80 11 00 00 84 	movl   $0x1184,0x1180
 997:	11 00 00 
    base.s.size = 0;
 99a:	bf 84 11 00 00       	mov    $0x1184,%edi
    base.s.ptr = freep = prevp = &base;
 99f:	c7 05 84 11 00 00 84 	movl   $0x1184,0x1184
 9a6:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9ab:	c7 05 88 11 00 00 00 	movl   $0x0,0x1188
 9b2:	00 00 00 
    if(p->s.size >= nunits){
 9b5:	e9 42 ff ff ff       	jmp    8fc <malloc+0x2c>
 9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9c0:	8b 08                	mov    (%eax),%ecx
 9c2:	89 0a                	mov    %ecx,(%edx)
 9c4:	eb b9                	jmp    97f <malloc+0xaf>
