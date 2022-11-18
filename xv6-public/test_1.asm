
_test_1:     file format elf32-i386


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
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 8b 05 00 00       	call   5a3 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 20 0e 00 00       	mov    %eax,0xe20
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 96 08 00 00       	call   8c0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 db 00 00 00    	je     110 <main+0x110>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 94 00 00 00    	jne    d9 <main+0xd9>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, 0, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	6a 00                	push   $0x0
  4a:	68 30 01 00 00       	push   $0x130
  4f:	e8 6f 05 00 00       	call   5c3 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 18 0e 00 00    	mov    0xe18,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 0e 0a 00 00       	push   $0xa0e
  7a:	6a 01                	push   $0x1
  7c:	e8 0f 06 00 00       	call   690 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 3f 05 00 00       	call   5cb <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 b8 09 00 00       	push   $0x9b8
  9a:	68 c1 09 00 00       	push   $0x9c1
  9f:	6a 01                	push   $0x1
  a1:	e8 ea 05 00 00       	call   690 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 1b 0a 00 00       	push   $0xa1b
   assert(clone_pid > 0);
  ae:	68 d5 09 00 00       	push   $0x9d5
  b3:	6a 01                	push   $0x1
  b5:	e8 d6 05 00 00       	call   690 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 e9 09 00 00       	push   $0x9e9
  c1:	6a 01                	push   $0x1
  c3:	e8 c8 05 00 00       	call   690 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 20 0e 00 00    	push   0xe20
  cf:	e8 7f 04 00 00       	call   553 <kill>
  d4:	e8 4a 04 00 00       	call   523 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 42 07 00 00       	call   830 <free>
   exit();
  ee:	e8 30 04 00 00       	call   523 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 b8 09 00 00       	push   $0x9b8
  fa:	68 c1 09 00 00       	push   $0x9c1
  ff:	6a 01                	push   $0x1
 101:	e8 8a 05 00 00       	call   690 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 00 0a 00 00       	push   $0xa00
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 b8 09 00 00       	push   $0x9b8
 117:	68 c1 09 00 00       	push   $0x9c1
 11c:	6a 01                	push   $0x1
 11e:	e8 6d 05 00 00       	call   690 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 f6 09 00 00       	push   $0x9f6
 12b:	eb 81                	jmp    ae <main+0xae>
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert(global == 1);
 136:	a1 18 0e 00 00       	mov    0xe18,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 b8 09 00 00       	push   $0x9b8
 147:	68 c1 09 00 00       	push   $0x9c1
 14c:	6a 01                	push   $0x1
 14e:	e8 3d 05 00 00       	call   690 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 c9 09 00 00       	push   $0x9c9
 15b:	68 d5 09 00 00       	push   $0x9d5
 160:	6a 01                	push   $0x1
 162:	e8 29 05 00 00       	call   690 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 e9 09 00 00       	push   $0x9e9
 16e:	6a 01                	push   $0x1
 170:	e8 1b 05 00 00       	call   690 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 20 0e 00 00    	push   0xe20
 17c:	e8 d2 03 00 00       	call   553 <kill>
 181:	e8 9d 03 00 00       	call   523 <exit>
   global = 5;
 186:	c7 05 18 0e 00 00 05 	movl   $0x5,0xe18
 18d:	00 00 00 
   exit();
 190:	e8 8e 03 00 00       	call   523 <exit>
 195:	66 90                	xchg   %ax,%ax
 197:	66 90                	xchg   %ax,%ax
 199:	66 90                	xchg   %ax,%ax
 19b:	66 90                	xchg   %ax,%ax
 19d:	66 90                	xchg   %ax,%ax
 19f:	90                   	nop

000001a0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	56                   	push   %esi
 1a4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 1a5:	31 db                	xor    %ebx,%ebx
 1a7:	eb 0f                	jmp    1b8 <thread_create+0x18>
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1b0:	83 c3 01             	add    $0x1,%ebx
 1b3:	83 fb 40             	cmp    $0x40,%ebx
 1b6:	74 60                	je     218 <thread_create+0x78>
    if (inUse[i] == 0){
 1b8:	8b 04 9d 40 0e 00 00 	mov    0xe40(,%ebx,4),%eax
 1bf:	85 c0                	test   %eax,%eax
 1c1:	75 ed                	jne    1b0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 1c3:	a1 1c 0e 00 00       	mov    0xe1c,%eax
 1c8:	83 ec 0c             	sub    $0xc,%esp
 1cb:	01 c0                	add    %eax,%eax
 1cd:	50                   	push   %eax
 1ce:	e8 ed 06 00 00       	call   8c0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 1d3:	8b 35 1c 0e 00 00    	mov    0xe1c,%esi
 1d9:	83 c4 10             	add    $0x10,%esp
 1dc:	99                   	cltd   
      malloc_addrs[i] = stack;
 1dd:	89 04 9d 40 0f 00 00 	mov    %eax,0xf40(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 1e4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 1e6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 1e8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 1eb:	29 d6                	sub    %edx,%esi
 1ed:	01 f1                	add    %esi,%ecx
 1ef:	85 d2                	test   %edx,%edx
 1f1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 1f4:	51                   	push   %ecx
 1f5:	ff 75 10             	push   0x10(%ebp)
 1f8:	ff 75 0c             	push   0xc(%ebp)
 1fb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 1fe:	89 0c 9d 40 10 00 00 	mov    %ecx,0x1040(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 205:	e8 b9 03 00 00       	call   5c3 <clone>
 20a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 20d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 210:	5b                   	pop    %ebx
 211:	5e                   	pop    %esi
 212:	5d                   	pop    %ebp
 213:	c3                   	ret    
 214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 218:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 21b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 220:	5b                   	pop    %ebx
 221:	5e                   	pop    %esi
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <thread_join>:

int 
thread_join()
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 235:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 238:	31 db                	xor    %ebx,%ebx
{
 23a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 23d:	50                   	push   %eax
 23e:	e8 88 03 00 00       	call   5cb <join>
 243:	83 c4 10             	add    $0x10,%esp
 246:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 248:	eb 0e                	jmp    258 <thread_join+0x28>
 24a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 250:	83 c3 01             	add    $0x1,%ebx
 253:	83 fb 40             	cmp    $0x40,%ebx
 256:	74 27                	je     27f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 258:	83 3c 9d 40 0e 00 00 	cmpl   $0x1,0xe40(,%ebx,4)
 25f:	01 
 260:	75 ee                	jne    250 <thread_join+0x20>
      free(malloc_addrs[i]);
 262:	83 ec 0c             	sub    $0xc,%esp
 265:	ff 34 9d 40 0f 00 00 	push   0xf40(,%ebx,4)
 26c:	e8 bf 05 00 00       	call   830 <free>
      inUse[i] = 0;
      break;
 271:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 274:	c7 04 9d 40 0e 00 00 	movl   $0x0,0xe40(,%ebx,4)
 27b:	00 00 00 00 
    }
  }
  return id;
}
 27f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 282:	89 f0                	mov    %esi,%eax
 284:	5b                   	pop    %ebx
 285:	5e                   	pop    %esi
 286:	5d                   	pop    %ebp
 287:	c3                   	ret    
 288:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28f:	90                   	nop

00000290 <lock_init>:

void lock_init(lock_t *lock){
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 293:	8b 45 08             	mov    0x8(%ebp),%eax
 296:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 29c:	5d                   	pop    %ebp
 29d:	c3                   	ret    
 29e:	66 90                	xchg   %ax,%ax

000002a0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 2a0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 2a1:	b9 01 00 00 00       	mov    $0x1,%ecx
 2a6:	89 e5                	mov    %esp,%ebp
 2a8:	8b 55 08             	mov    0x8(%ebp),%edx
 2ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop
 2b0:	89 c8                	mov    %ecx,%eax
 2b2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 2b5:	85 c0                	test   %eax,%eax
 2b7:	75 f7                	jne    2b0 <lock_acquire+0x10>
}
 2b9:	5d                   	pop    %ebp
 2ba:	c3                   	ret    
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <lock_release>:

void lock_release(lock_t *lock){
 2c0:	55                   	push   %ebp
 2c1:	31 c0                	xor    %eax,%eax
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	8b 55 08             	mov    0x8(%ebp),%edx
 2c8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    
 2cd:	8d 76 00             	lea    0x0(%esi),%esi

000002d0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 2d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2d1:	31 c0                	xor    %eax,%eax
{
 2d3:	89 e5                	mov    %esp,%ebp
 2d5:	53                   	push   %ebx
 2d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2e7:	83 c0 01             	add    $0x1,%eax
 2ea:	84 d2                	test   %dl,%dl
 2ec:	75 f2                	jne    2e0 <strcpy+0x10>
    ;
  return os;
}
 2ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f1:	89 c8                	mov    %ecx,%eax
 2f3:	c9                   	leave  
 2f4:	c3                   	ret    
 2f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
 307:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 30a:	0f b6 02             	movzbl (%edx),%eax
 30d:	84 c0                	test   %al,%al
 30f:	75 17                	jne    328 <strcmp+0x28>
 311:	eb 3a                	jmp    34d <strcmp+0x4d>
 313:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 317:	90                   	nop
 318:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 31c:	83 c2 01             	add    $0x1,%edx
 31f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 322:	84 c0                	test   %al,%al
 324:	74 1a                	je     340 <strcmp+0x40>
    p++, q++;
 326:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 328:	0f b6 19             	movzbl (%ecx),%ebx
 32b:	38 c3                	cmp    %al,%bl
 32d:	74 e9                	je     318 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 32f:	29 d8                	sub    %ebx,%eax
}
 331:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 334:	c9                   	leave  
 335:	c3                   	ret    
 336:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 340:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 344:	31 c0                	xor    %eax,%eax
 346:	29 d8                	sub    %ebx,%eax
}
 348:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 34b:	c9                   	leave  
 34c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 34d:	0f b6 19             	movzbl (%ecx),%ebx
 350:	31 c0                	xor    %eax,%eax
 352:	eb db                	jmp    32f <strcmp+0x2f>
 354:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <strlen>:

uint
strlen(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 366:	80 3a 00             	cmpb   $0x0,(%edx)
 369:	74 15                	je     380 <strlen+0x20>
 36b:	31 c0                	xor    %eax,%eax
 36d:	8d 76 00             	lea    0x0(%esi),%esi
 370:	83 c0 01             	add    $0x1,%eax
 373:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 377:	89 c1                	mov    %eax,%ecx
 379:	75 f5                	jne    370 <strlen+0x10>
    ;
  return n;
}
 37b:	89 c8                	mov    %ecx,%eax
 37d:	5d                   	pop    %ebp
 37e:	c3                   	ret    
 37f:	90                   	nop
  for(n = 0; s[n]; n++)
 380:	31 c9                	xor    %ecx,%ecx
}
 382:	5d                   	pop    %ebp
 383:	89 c8                	mov    %ecx,%eax
 385:	c3                   	ret    
 386:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38d:	8d 76 00             	lea    0x0(%esi),%esi

00000390 <memset>:

void*
memset(void *dst, int c, uint n)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 397:	8b 4d 10             	mov    0x10(%ebp),%ecx
 39a:	8b 45 0c             	mov    0xc(%ebp),%eax
 39d:	89 d7                	mov    %edx,%edi
 39f:	fc                   	cld    
 3a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3a5:	89 d0                	mov    %edx,%eax
 3a7:	c9                   	leave  
 3a8:	c3                   	ret    
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003b0 <strchr>:

char*
strchr(const char *s, char c)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ba:	0f b6 10             	movzbl (%eax),%edx
 3bd:	84 d2                	test   %dl,%dl
 3bf:	75 12                	jne    3d3 <strchr+0x23>
 3c1:	eb 1d                	jmp    3e0 <strchr+0x30>
 3c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3c7:	90                   	nop
 3c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3cc:	83 c0 01             	add    $0x1,%eax
 3cf:	84 d2                	test   %dl,%dl
 3d1:	74 0d                	je     3e0 <strchr+0x30>
    if(*s == c)
 3d3:	38 d1                	cmp    %dl,%cl
 3d5:	75 f1                	jne    3c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3d7:	5d                   	pop    %ebp
 3d8:	c3                   	ret    
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3e0:	31 c0                	xor    %eax,%eax
}
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <gets>:

char*
gets(char *buf, int max)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3f9:	31 db                	xor    %ebx,%ebx
{
 3fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3fe:	eb 27                	jmp    427 <gets+0x37>
    cc = read(0, &c, 1);
 400:	83 ec 04             	sub    $0x4,%esp
 403:	6a 01                	push   $0x1
 405:	57                   	push   %edi
 406:	6a 00                	push   $0x0
 408:	e8 2e 01 00 00       	call   53b <read>
    if(cc < 1)
 40d:	83 c4 10             	add    $0x10,%esp
 410:	85 c0                	test   %eax,%eax
 412:	7e 1d                	jle    431 <gets+0x41>
      break;
    buf[i++] = c;
 414:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 418:	8b 55 08             	mov    0x8(%ebp),%edx
 41b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 41f:	3c 0a                	cmp    $0xa,%al
 421:	74 1d                	je     440 <gets+0x50>
 423:	3c 0d                	cmp    $0xd,%al
 425:	74 19                	je     440 <gets+0x50>
  for(i=0; i+1 < max; ){
 427:	89 de                	mov    %ebx,%esi
 429:	83 c3 01             	add    $0x1,%ebx
 42c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 42f:	7c cf                	jl     400 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 431:	8b 45 08             	mov    0x8(%ebp),%eax
 434:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 438:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43b:	5b                   	pop    %ebx
 43c:	5e                   	pop    %esi
 43d:	5f                   	pop    %edi
 43e:	5d                   	pop    %ebp
 43f:	c3                   	ret    
  buf[i] = '\0';
 440:	8b 45 08             	mov    0x8(%ebp),%eax
 443:	89 de                	mov    %ebx,%esi
 445:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 449:	8d 65 f4             	lea    -0xc(%ebp),%esp
 44c:	5b                   	pop    %ebx
 44d:	5e                   	pop    %esi
 44e:	5f                   	pop    %edi
 44f:	5d                   	pop    %ebp
 450:	c3                   	ret    
 451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 458:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <stat>:

int
stat(const char *n, struct stat *st)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	56                   	push   %esi
 464:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 465:	83 ec 08             	sub    $0x8,%esp
 468:	6a 00                	push   $0x0
 46a:	ff 75 08             	push   0x8(%ebp)
 46d:	e8 f1 00 00 00       	call   563 <open>
  if(fd < 0)
 472:	83 c4 10             	add    $0x10,%esp
 475:	85 c0                	test   %eax,%eax
 477:	78 27                	js     4a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 479:	83 ec 08             	sub    $0x8,%esp
 47c:	ff 75 0c             	push   0xc(%ebp)
 47f:	89 c3                	mov    %eax,%ebx
 481:	50                   	push   %eax
 482:	e8 f4 00 00 00       	call   57b <fstat>
  close(fd);
 487:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 48a:	89 c6                	mov    %eax,%esi
  close(fd);
 48c:	e8 ba 00 00 00       	call   54b <close>
  return r;
 491:	83 c4 10             	add    $0x10,%esp
}
 494:	8d 65 f8             	lea    -0x8(%ebp),%esp
 497:	89 f0                	mov    %esi,%eax
 499:	5b                   	pop    %ebx
 49a:	5e                   	pop    %esi
 49b:	5d                   	pop    %ebp
 49c:	c3                   	ret    
 49d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4a5:	eb ed                	jmp    494 <stat+0x34>
 4a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ae:	66 90                	xchg   %ax,%ax

000004b0 <atoi>:

int
atoi(const char *s)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	53                   	push   %ebx
 4b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4b7:	0f be 02             	movsbl (%edx),%eax
 4ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4c5:	77 1e                	ja     4e5 <atoi+0x35>
 4c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4d0:	83 c2 01             	add    $0x1,%edx
 4d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4da:	0f be 02             	movsbl (%edx),%eax
 4dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4e0:	80 fb 09             	cmp    $0x9,%bl
 4e3:	76 eb                	jbe    4d0 <atoi+0x20>
  return n;
}
 4e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4e8:	89 c8                	mov    %ecx,%eax
 4ea:	c9                   	leave  
 4eb:	c3                   	ret    
 4ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	8b 45 10             	mov    0x10(%ebp),%eax
 4f7:	8b 55 08             	mov    0x8(%ebp),%edx
 4fa:	56                   	push   %esi
 4fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4fe:	85 c0                	test   %eax,%eax
 500:	7e 13                	jle    515 <memmove+0x25>
 502:	01 d0                	add    %edx,%eax
  dst = vdst;
 504:	89 d7                	mov    %edx,%edi
 506:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 510:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 511:	39 f8                	cmp    %edi,%eax
 513:	75 fb                	jne    510 <memmove+0x20>
  return vdst;
}
 515:	5e                   	pop    %esi
 516:	89 d0                	mov    %edx,%eax
 518:	5f                   	pop    %edi
 519:	5d                   	pop    %ebp
 51a:	c3                   	ret    

0000051b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 51b:	b8 01 00 00 00       	mov    $0x1,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    

00000523 <exit>:
SYSCALL(exit)
 523:	b8 02 00 00 00       	mov    $0x2,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    

0000052b <wait>:
SYSCALL(wait)
 52b:	b8 03 00 00 00       	mov    $0x3,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret    

00000533 <pipe>:
SYSCALL(pipe)
 533:	b8 04 00 00 00       	mov    $0x4,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret    

0000053b <read>:
SYSCALL(read)
 53b:	b8 05 00 00 00       	mov    $0x5,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <write>:
SYSCALL(write)
 543:	b8 10 00 00 00       	mov    $0x10,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <close>:
SYSCALL(close)
 54b:	b8 15 00 00 00       	mov    $0x15,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    

00000553 <kill>:
SYSCALL(kill)
 553:	b8 06 00 00 00       	mov    $0x6,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret    

0000055b <exec>:
SYSCALL(exec)
 55b:	b8 07 00 00 00       	mov    $0x7,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret    

00000563 <open>:
SYSCALL(open)
 563:	b8 0f 00 00 00       	mov    $0xf,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret    

0000056b <mknod>:
SYSCALL(mknod)
 56b:	b8 11 00 00 00       	mov    $0x11,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret    

00000573 <unlink>:
SYSCALL(unlink)
 573:	b8 12 00 00 00       	mov    $0x12,%eax
 578:	cd 40                	int    $0x40
 57a:	c3                   	ret    

0000057b <fstat>:
SYSCALL(fstat)
 57b:	b8 08 00 00 00       	mov    $0x8,%eax
 580:	cd 40                	int    $0x40
 582:	c3                   	ret    

00000583 <link>:
SYSCALL(link)
 583:	b8 13 00 00 00       	mov    $0x13,%eax
 588:	cd 40                	int    $0x40
 58a:	c3                   	ret    

0000058b <mkdir>:
SYSCALL(mkdir)
 58b:	b8 14 00 00 00       	mov    $0x14,%eax
 590:	cd 40                	int    $0x40
 592:	c3                   	ret    

00000593 <chdir>:
SYSCALL(chdir)
 593:	b8 09 00 00 00       	mov    $0x9,%eax
 598:	cd 40                	int    $0x40
 59a:	c3                   	ret    

0000059b <dup>:
SYSCALL(dup)
 59b:	b8 0a 00 00 00       	mov    $0xa,%eax
 5a0:	cd 40                	int    $0x40
 5a2:	c3                   	ret    

000005a3 <getpid>:
SYSCALL(getpid)
 5a3:	b8 0b 00 00 00       	mov    $0xb,%eax
 5a8:	cd 40                	int    $0x40
 5aa:	c3                   	ret    

000005ab <sbrk>:
SYSCALL(sbrk)
 5ab:	b8 0c 00 00 00       	mov    $0xc,%eax
 5b0:	cd 40                	int    $0x40
 5b2:	c3                   	ret    

000005b3 <sleep>:
SYSCALL(sleep)
 5b3:	b8 0d 00 00 00       	mov    $0xd,%eax
 5b8:	cd 40                	int    $0x40
 5ba:	c3                   	ret    

000005bb <uptime>:
SYSCALL(uptime)
 5bb:	b8 0e 00 00 00       	mov    $0xe,%eax
 5c0:	cd 40                	int    $0x40
 5c2:	c3                   	ret    

000005c3 <clone>:
SYSCALL(clone)
 5c3:	b8 16 00 00 00       	mov    $0x16,%eax
 5c8:	cd 40                	int    $0x40
 5ca:	c3                   	ret    

000005cb <join>:
SYSCALL(join)
 5cb:	b8 17 00 00 00       	mov    $0x17,%eax
 5d0:	cd 40                	int    $0x40
 5d2:	c3                   	ret    
 5d3:	66 90                	xchg   %ax,%ax
 5d5:	66 90                	xchg   %ax,%ax
 5d7:	66 90                	xchg   %ax,%ax
 5d9:	66 90                	xchg   %ax,%ax
 5db:	66 90                	xchg   %ax,%ax
 5dd:	66 90                	xchg   %ax,%ax
 5df:	90                   	nop

000005e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 3c             	sub    $0x3c,%esp
 5e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5ec:	89 d1                	mov    %edx,%ecx
{
 5ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5f1:	85 d2                	test   %edx,%edx
 5f3:	0f 89 7f 00 00 00    	jns    678 <printint+0x98>
 5f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5fd:	74 79                	je     678 <printint+0x98>
    neg = 1;
 5ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 606:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 608:	31 db                	xor    %ebx,%ebx
 60a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 60d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 610:	89 c8                	mov    %ecx,%eax
 612:	31 d2                	xor    %edx,%edx
 614:	89 cf                	mov    %ecx,%edi
 616:	f7 75 c4             	divl   -0x3c(%ebp)
 619:	0f b6 92 90 0a 00 00 	movzbl 0xa90(%edx),%edx
 620:	89 45 c0             	mov    %eax,-0x40(%ebp)
 623:	89 d8                	mov    %ebx,%eax
 625:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 628:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 62b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 62e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 631:	76 dd                	jbe    610 <printint+0x30>
  if(neg)
 633:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 636:	85 c9                	test   %ecx,%ecx
 638:	74 0c                	je     646 <printint+0x66>
    buf[i++] = '-';
 63a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 63f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 641:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 646:	8b 7d b8             	mov    -0x48(%ebp),%edi
 649:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 64d:	eb 07                	jmp    656 <printint+0x76>
 64f:	90                   	nop
    putc(fd, buf[i]);
 650:	0f b6 13             	movzbl (%ebx),%edx
 653:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 656:	83 ec 04             	sub    $0x4,%esp
 659:	88 55 d7             	mov    %dl,-0x29(%ebp)
 65c:	6a 01                	push   $0x1
 65e:	56                   	push   %esi
 65f:	57                   	push   %edi
 660:	e8 de fe ff ff       	call   543 <write>
  while(--i >= 0)
 665:	83 c4 10             	add    $0x10,%esp
 668:	39 de                	cmp    %ebx,%esi
 66a:	75 e4                	jne    650 <printint+0x70>
}
 66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66f:	5b                   	pop    %ebx
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret    
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 678:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 67f:	eb 87                	jmp    608 <printint+0x28>
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 69c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 69f:	0f b6 13             	movzbl (%ebx),%edx
 6a2:	84 d2                	test   %dl,%dl
 6a4:	74 6a                	je     710 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6a6:	8d 45 10             	lea    0x10(%ebp),%eax
 6a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6b4:	eb 36                	jmp    6ec <printf+0x5c>
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
 6c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	74 15                	je     6e2 <printf+0x52>
  write(fd, &c, 1);
 6cd:	83 ec 04             	sub    $0x4,%esp
 6d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6d3:	6a 01                	push   $0x1
 6d5:	57                   	push   %edi
 6d6:	56                   	push   %esi
 6d7:	e8 67 fe ff ff       	call   543 <write>
 6dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6e2:	0f b6 13             	movzbl (%ebx),%edx
 6e5:	83 c3 01             	add    $0x1,%ebx
 6e8:	84 d2                	test   %dl,%dl
 6ea:	74 24                	je     710 <printf+0x80>
    c = fmt[i] & 0xff;
 6ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6ef:	85 c9                	test   %ecx,%ecx
 6f1:	74 cd                	je     6c0 <printf+0x30>
      }
    } else if(state == '%'){
 6f3:	83 f9 25             	cmp    $0x25,%ecx
 6f6:	75 ea                	jne    6e2 <printf+0x52>
      if(c == 'd'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	0f 84 07 01 00 00    	je     808 <printf+0x178>
 701:	83 e8 63             	sub    $0x63,%eax
 704:	83 f8 15             	cmp    $0x15,%eax
 707:	77 17                	ja     720 <printf+0x90>
 709:	ff 24 85 38 0a 00 00 	jmp    *0xa38(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 710:	8d 65 f4             	lea    -0xc(%ebp),%esp
 713:	5b                   	pop    %ebx
 714:	5e                   	pop    %esi
 715:	5f                   	pop    %edi
 716:	5d                   	pop    %ebp
 717:	c3                   	ret    
 718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 726:	6a 01                	push   $0x1
 728:	57                   	push   %edi
 729:	56                   	push   %esi
 72a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 72e:	e8 10 fe ff ff       	call   543 <write>
        putc(fd, c);
 733:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 737:	83 c4 0c             	add    $0xc,%esp
 73a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 73d:	6a 01                	push   $0x1
 73f:	57                   	push   %edi
 740:	56                   	push   %esi
 741:	e8 fd fd ff ff       	call   543 <write>
        putc(fd, c);
 746:	83 c4 10             	add    $0x10,%esp
      state = 0;
 749:	31 c9                	xor    %ecx,%ecx
 74b:	eb 95                	jmp    6e2 <printf+0x52>
 74d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 750:	83 ec 0c             	sub    $0xc,%esp
 753:	b9 10 00 00 00       	mov    $0x10,%ecx
 758:	6a 00                	push   $0x0
 75a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 75d:	8b 10                	mov    (%eax),%edx
 75f:	89 f0                	mov    %esi,%eax
 761:	e8 7a fe ff ff       	call   5e0 <printint>
        ap++;
 766:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 76a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 76d:	31 c9                	xor    %ecx,%ecx
 76f:	e9 6e ff ff ff       	jmp    6e2 <printf+0x52>
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 778:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77b:	8b 10                	mov    (%eax),%edx
        ap++;
 77d:	83 c0 04             	add    $0x4,%eax
 780:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 783:	85 d2                	test   %edx,%edx
 785:	0f 84 8d 00 00 00    	je     818 <printf+0x188>
        while(*s != 0){
 78b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 78e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 790:	84 c0                	test   %al,%al
 792:	0f 84 4a ff ff ff    	je     6e2 <printf+0x52>
 798:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 79b:	89 d3                	mov    %edx,%ebx
 79d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7a3:	83 c3 01             	add    $0x1,%ebx
 7a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7a9:	6a 01                	push   $0x1
 7ab:	57                   	push   %edi
 7ac:	56                   	push   %esi
 7ad:	e8 91 fd ff ff       	call   543 <write>
        while(*s != 0){
 7b2:	0f b6 03             	movzbl (%ebx),%eax
 7b5:	83 c4 10             	add    $0x10,%esp
 7b8:	84 c0                	test   %al,%al
 7ba:	75 e4                	jne    7a0 <printf+0x110>
      state = 0;
 7bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7bf:	31 c9                	xor    %ecx,%ecx
 7c1:	e9 1c ff ff ff       	jmp    6e2 <printf+0x52>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7d8:	6a 01                	push   $0x1
 7da:	e9 7b ff ff ff       	jmp    75a <printf+0xca>
 7df:	90                   	nop
        putc(fd, *ap);
 7e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7e8:	6a 01                	push   $0x1
 7ea:	57                   	push   %edi
 7eb:	56                   	push   %esi
        putc(fd, *ap);
 7ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ef:	e8 4f fd ff ff       	call   543 <write>
        ap++;
 7f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7fb:	31 c9                	xor    %ecx,%ecx
 7fd:	e9 e0 fe ff ff       	jmp    6e2 <printf+0x52>
 802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 808:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 80b:	83 ec 04             	sub    $0x4,%esp
 80e:	e9 2a ff ff ff       	jmp    73d <printf+0xad>
 813:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 817:	90                   	nop
          s = "(null)";
 818:	ba 31 0a 00 00       	mov    $0xa31,%edx
        while(*s != 0){
 81d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 820:	b8 28 00 00 00       	mov    $0x28,%eax
 825:	89 d3                	mov    %edx,%ebx
 827:	e9 74 ff ff ff       	jmp    7a0 <printf+0x110>
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 40 11 00 00       	mov    0x1140,%eax
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 83e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	89 c2                	mov    %eax,%edx
 84a:	8b 00                	mov    (%eax),%eax
 84c:	39 ca                	cmp    %ecx,%edx
 84e:	73 30                	jae    880 <free+0x50>
 850:	39 c1                	cmp    %eax,%ecx
 852:	72 04                	jb     858 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 854:	39 c2                	cmp    %eax,%edx
 856:	72 f0                	jb     848 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	74 30                	je     892 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 862:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 865:	8b 42 04             	mov    0x4(%edx),%eax
 868:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 86b:	39 f1                	cmp    %esi,%ecx
 86d:	74 3a                	je     8a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 86f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 871:	5b                   	pop    %ebx
  freep = p;
 872:	89 15 40 11 00 00    	mov    %edx,0x1140
}
 878:	5e                   	pop    %esi
 879:	5f                   	pop    %edi
 87a:	5d                   	pop    %ebp
 87b:	c3                   	ret    
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 c2                	cmp    %eax,%edx
 882:	72 c4                	jb     848 <free+0x18>
 884:	39 c1                	cmp    %eax,%ecx
 886:	73 c0                	jae    848 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 f8                	cmp    %edi,%eax
 890:	75 d0                	jne    862 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 892:	03 70 04             	add    0x4(%eax),%esi
 895:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 898:	8b 02                	mov    (%edx),%eax
 89a:	8b 00                	mov    (%eax),%eax
 89c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 89f:	8b 42 04             	mov    0x4(%edx),%eax
 8a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8a5:	39 f1                	cmp    %esi,%ecx
 8a7:	75 c6                	jne    86f <free+0x3f>
    p->s.size += bp->s.size;
 8a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8ac:	89 15 40 11 00 00    	mov    %edx,0x1140
    p->s.size += bp->s.size;
 8b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8b8:	89 0a                	mov    %ecx,(%edx)
}
 8ba:	5b                   	pop    %ebx
 8bb:	5e                   	pop    %esi
 8bc:	5f                   	pop    %edi
 8bd:	5d                   	pop    %ebp
 8be:	c3                   	ret    
 8bf:	90                   	nop

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 3d 40 11 00 00    	mov    0x1140,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 70 07             	lea    0x7(%eax),%esi
 8d5:	c1 ee 03             	shr    $0x3,%esi
 8d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8db:	85 ff                	test   %edi,%edi
 8dd:	0f 84 9d 00 00 00    	je     980 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8e8:	39 f1                	cmp    %esi,%ecx
 8ea:	73 6a                	jae    956 <malloc+0x96>
 8ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8f1:	39 de                	cmp    %ebx,%esi
 8f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 900:	eb 17                	jmp    919 <malloc+0x59>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 908:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 90a:	8b 48 04             	mov    0x4(%eax),%ecx
 90d:	39 f1                	cmp    %esi,%ecx
 90f:	73 4f                	jae    960 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 911:	8b 3d 40 11 00 00    	mov    0x1140,%edi
 917:	89 c2                	mov    %eax,%edx
 919:	39 d7                	cmp    %edx,%edi
 91b:	75 eb                	jne    908 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 91d:	83 ec 0c             	sub    $0xc,%esp
 920:	ff 75 e4             	push   -0x1c(%ebp)
 923:	e8 83 fc ff ff       	call   5ab <sbrk>
  if(p == (char*)-1)
 928:	83 c4 10             	add    $0x10,%esp
 92b:	83 f8 ff             	cmp    $0xffffffff,%eax
 92e:	74 1c                	je     94c <malloc+0x8c>
  hp->s.size = nu;
 930:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 933:	83 ec 0c             	sub    $0xc,%esp
 936:	83 c0 08             	add    $0x8,%eax
 939:	50                   	push   %eax
 93a:	e8 f1 fe ff ff       	call   830 <free>
  return freep;
 93f:	8b 15 40 11 00 00    	mov    0x1140,%edx
      if((p = morecore(nunits)) == 0)
 945:	83 c4 10             	add    $0x10,%esp
 948:	85 d2                	test   %edx,%edx
 94a:	75 bc                	jne    908 <malloc+0x48>
        return 0;
  }
}
 94c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 94f:	31 c0                	xor    %eax,%eax
}
 951:	5b                   	pop    %ebx
 952:	5e                   	pop    %esi
 953:	5f                   	pop    %edi
 954:	5d                   	pop    %ebp
 955:	c3                   	ret    
    if(p->s.size >= nunits){
 956:	89 d0                	mov    %edx,%eax
 958:	89 fa                	mov    %edi,%edx
 95a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 960:	39 ce                	cmp    %ecx,%esi
 962:	74 4c                	je     9b0 <malloc+0xf0>
        p->s.size -= nunits;
 964:	29 f1                	sub    %esi,%ecx
 966:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 969:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 96c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 96f:	89 15 40 11 00 00    	mov    %edx,0x1140
}
 975:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 978:	83 c0 08             	add    $0x8,%eax
}
 97b:	5b                   	pop    %ebx
 97c:	5e                   	pop    %esi
 97d:	5f                   	pop    %edi
 97e:	5d                   	pop    %ebp
 97f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 980:	c7 05 40 11 00 00 44 	movl   $0x1144,0x1140
 987:	11 00 00 
    base.s.size = 0;
 98a:	bf 44 11 00 00       	mov    $0x1144,%edi
    base.s.ptr = freep = prevp = &base;
 98f:	c7 05 44 11 00 00 44 	movl   $0x1144,0x1144
 996:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 999:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 99b:	c7 05 48 11 00 00 00 	movl   $0x0,0x1148
 9a2:	00 00 00 
    if(p->s.size >= nunits){
 9a5:	e9 42 ff ff ff       	jmp    8ec <malloc+0x2c>
 9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb b9                	jmp    96f <malloc+0xaf>
