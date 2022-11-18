
_test_16:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
void worker(void *arg1, void *arg2);
void nested_worker(void *arg1, void *arg2);

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
  12:	e8 ac 06 00 00       	call   6c3 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 c0 0f 00 00       	mov    %eax,0xfc0
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 c0 01 00 00       	push   $0x1c0
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 81 02 00 00       	call   2c0 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 03 03 00 00       	call   350 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d a4 0f 00 00 03 	cmpl   $0x3,0xfa4
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 d8 0a 00 00       	push   $0xad8
  65:	68 e2 0a 00 00       	push   $0xae2
  6a:	6a 01                	push   $0x1
  6c:	e8 3f 07 00 00       	call   7b0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 67 0b 00 00       	push   $0xb67
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 d8 0a 00 00       	push   $0xad8
  82:	68 e2 0a 00 00       	push   $0xae2
  87:	6a 01                	push   $0x1
  89:	e8 22 07 00 00       	call   7b0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 50 0b 00 00       	push   $0xb50
  96:	68 f9 0a 00 00       	push   $0xaf9
  9b:	6a 01                	push   $0x1
  9d:	e8 0e 07 00 00       	call   7b0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 0d 0b 00 00       	push   $0xb0d
  a9:	6a 01                	push   $0x1
  ab:	e8 00 07 00 00       	call   7b0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 c0 0f 00 00    	push   0xfc0
  b7:	e8 b7 05 00 00       	call   673 <kill>
  bc:	e8 82 05 00 00       	call   643 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 d8 0a 00 00       	push   $0xad8
  c8:	68 e2 0a 00 00       	push   $0xae2
  cd:	6a 01                	push   $0x1
  cf:	e8 dc 06 00 00       	call   7b0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 41 0b 00 00       	push   $0xb41
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 73 0b 00 00       	push   $0xb73
  e5:	6a 01                	push   $0x1
  e7:	e8 c4 06 00 00       	call   7b0 <printf>
   exit();
  ec:	e8 52 05 00 00       	call   643 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}


void nested_worker(void *arg1, void *arg2){
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
 111:	75 75                	jne    188 <nested_worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <nested_worker+0x42>
   assert(global == 2);
 118:	83 3d a4 0f 00 00 02 	cmpl   $0x2,0xfa4
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 d8 0a 00 00       	push   $0xad8
 12c:	68 e2 0a 00 00       	push   $0xae2
 131:	6a 01                	push   $0x1
 133:	e8 78 06 00 00       	call   7b0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 29 0b 00 00       	push   $0xb29
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 d8 0a 00 00       	push   $0xad8
 149:	68 e2 0a 00 00       	push   $0xae2
 14e:	6a 01                	push   $0x1
 150:	e8 5b 06 00 00       	call   7b0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 1a 0b 00 00       	push   $0xb1a
 15d:	68 f9 0a 00 00       	push   $0xaf9
 162:	6a 01                	push   $0x1
 164:	e8 47 06 00 00       	call   7b0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 0d 0b 00 00       	push   $0xb0d
 170:	6a 01                	push   $0x1
 172:	e8 39 06 00 00       	call   7b0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 c0 0f 00 00    	push   0xfc0
 17e:	e8 f0 04 00 00       	call   673 <kill>
 183:	e8 bb 04 00 00       	call   643 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 d8 0a 00 00       	push   $0xad8
 18f:	68 e2 0a 00 00       	push   $0xae2
 194:	6a 01                	push   $0x1
 196:	e8 15 06 00 00       	call   7b0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 ea 0a 00 00       	push   $0xaea
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 a4 0f 00 00 03 	movl   $0x3,0xfa4
 1ac:	00 00 00 
   exit();
 1af:	e8 8f 04 00 00       	call   643 <exit>
 1b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	83 ec 14             	sub    $0x14,%esp
   int arg1_int = *(int*)arg1;
 1c7:	8b 45 08             	mov    0x8(%ebp),%eax
   int arg2_int = *(int*)arg2;
 1ca:	8b 55 0c             	mov    0xc(%ebp),%edx
   int arg1_int = *(int*)arg1;
 1cd:	8b 00                	mov    (%eax),%eax
   int arg2_int = *(int*)arg2;
 1cf:	8b 12                	mov    (%edx),%edx
   int arg1_int = *(int*)arg1;
 1d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int arg2_int = *(int*)arg2;
 1d4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(arg1_int == 35);
 1d7:	83 f8 23             	cmp    $0x23,%eax
 1da:	75 75                	jne    251 <worker+0x91>
   assert(arg2_int == 42);
 1dc:	83 fa 2a             	cmp    $0x2a,%edx
 1df:	75 2a                	jne    20b <worker+0x4b>
   assert(global == 1);
 1e1:	83 3d a4 0f 00 00 01 	cmpl   $0x1,0xfa4
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 d8 0a 00 00       	push   $0xad8
 1f5:	68 e2 0a 00 00       	push   $0xae2
 1fa:	6a 01                	push   $0x1
 1fc:	e8 af 05 00 00       	call   7b0 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 35 0b 00 00       	push   $0xb35
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 d8 0a 00 00       	push   $0xad8
 212:	68 e2 0a 00 00       	push   $0xae2
 217:	6a 01                	push   $0x1
 219:	e8 92 05 00 00       	call   7b0 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 1a 0b 00 00       	push   $0xb1a
 226:	68 f9 0a 00 00       	push   $0xaf9
 22b:	6a 01                	push   $0x1
 22d:	e8 7e 05 00 00       	call   7b0 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 0d 0b 00 00       	push   $0xb0d
 239:	6a 01                	push   $0x1
 23b:	e8 70 05 00 00       	call   7b0 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 c0 0f 00 00    	push   0xfc0
 247:	e8 27 04 00 00       	call   673 <kill>
 24c:	e8 f2 03 00 00       	call   643 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 d8 0a 00 00       	push   $0xad8
 258:	68 e2 0a 00 00       	push   $0xae2
 25d:	6a 01                	push   $0x1
 25f:	e8 4c 05 00 00       	call   7b0 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 ea 0a 00 00       	push   $0xaea
 26c:	eb b8                	jmp    226 <worker+0x66>
   global++;
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 26e:	50                   	push   %eax
 26f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 272:	50                   	push   %eax
 273:	8d 45 f0             	lea    -0x10(%ebp),%eax
 276:	50                   	push   %eax
 277:	68 00 01 00 00       	push   $0x100
   global++;
 27c:	c7 05 a4 0f 00 00 02 	movl   $0x2,0xfa4
 283:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 286:	e8 35 00 00 00       	call   2c0 <thread_create>
 28b:	89 c3                	mov    %eax,%ebx
   int nested_join_pid = thread_join();
 28d:	e8 be 00 00 00       	call   350 <thread_join>
   assert(nested_join_pid == nested_thread_pid);
 292:	83 c4 10             	add    $0x10,%esp
 295:	39 c3                	cmp    %eax,%ebx
 297:	74 20                	je     2b9 <worker+0xf9>
 299:	6a 3f                	push   $0x3f
 29b:	68 d8 0a 00 00       	push   $0xad8
 2a0:	68 e2 0a 00 00       	push   $0xae2
 2a5:	6a 01                	push   $0x1
 2a7:	e8 04 05 00 00       	call   7b0 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 80 0b 00 00       	push   $0xb80
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 85 03 00 00       	call   643 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	56                   	push   %esi
 2c4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 2c5:	31 db                	xor    %ebx,%ebx
 2c7:	eb 0f                	jmp    2d8 <thread_create+0x18>
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2d0:	83 c3 01             	add    $0x1,%ebx
 2d3:	83 fb 40             	cmp    $0x40,%ebx
 2d6:	74 60                	je     338 <thread_create+0x78>
    if (inUse[i] == 0){
 2d8:	8b 04 9d e0 0f 00 00 	mov    0xfe0(,%ebx,4),%eax
 2df:	85 c0                	test   %eax,%eax
 2e1:	75 ed                	jne    2d0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 2e3:	a1 a8 0f 00 00       	mov    0xfa8,%eax
 2e8:	83 ec 0c             	sub    $0xc,%esp
 2eb:	01 c0                	add    %eax,%eax
 2ed:	50                   	push   %eax
 2ee:	e8 ed 06 00 00       	call   9e0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 2f3:	8b 35 a8 0f 00 00    	mov    0xfa8,%esi
 2f9:	83 c4 10             	add    $0x10,%esp
 2fc:	99                   	cltd   
      malloc_addrs[i] = stack;
 2fd:	89 04 9d e0 10 00 00 	mov    %eax,0x10e0(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 304:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 306:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 308:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 30b:	29 d6                	sub    %edx,%esi
 30d:	01 f1                	add    %esi,%ecx
 30f:	85 d2                	test   %edx,%edx
 311:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 314:	51                   	push   %ecx
 315:	ff 75 10             	push   0x10(%ebp)
 318:	ff 75 0c             	push   0xc(%ebp)
 31b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 31e:	89 0c 9d e0 11 00 00 	mov    %ecx,0x11e0(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 325:	e8 b9 03 00 00       	call   6e3 <clone>
 32a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 32d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 330:	5b                   	pop    %ebx
 331:	5e                   	pop    %esi
 332:	5d                   	pop    %ebp
 333:	c3                   	ret    
 334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 338:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 33b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 340:	5b                   	pop    %ebx
 341:	5e                   	pop    %esi
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <thread_join>:

int 
thread_join()
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 355:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 358:	31 db                	xor    %ebx,%ebx
{
 35a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 35d:	50                   	push   %eax
 35e:	e8 88 03 00 00       	call   6eb <join>
 363:	83 c4 10             	add    $0x10,%esp
 366:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 368:	eb 0e                	jmp    378 <thread_join+0x28>
 36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 370:	83 c3 01             	add    $0x1,%ebx
 373:	83 fb 40             	cmp    $0x40,%ebx
 376:	74 27                	je     39f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 378:	83 3c 9d e0 0f 00 00 	cmpl   $0x1,0xfe0(,%ebx,4)
 37f:	01 
 380:	75 ee                	jne    370 <thread_join+0x20>
      free(malloc_addrs[i]);
 382:	83 ec 0c             	sub    $0xc,%esp
 385:	ff 34 9d e0 10 00 00 	push   0x10e0(,%ebx,4)
 38c:	e8 bf 05 00 00       	call   950 <free>
      inUse[i] = 0;
      break;
 391:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 394:	c7 04 9d e0 0f 00 00 	movl   $0x0,0xfe0(,%ebx,4)
 39b:	00 00 00 00 
    }
  }
  return id;
}
 39f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3a2:	89 f0                	mov    %esi,%eax
 3a4:	5b                   	pop    %ebx
 3a5:	5e                   	pop    %esi
 3a6:	5d                   	pop    %ebp
 3a7:	c3                   	ret    
 3a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <lock_init>:

void lock_init(lock_t *lock){
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3bc:	5d                   	pop    %ebp
 3bd:	c3                   	ret    
 3be:	66 90                	xchg   %ax,%ax

000003c0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 3c0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3c1:	b9 01 00 00 00       	mov    $0x1,%ecx
 3c6:	89 e5                	mov    %esp,%ebp
 3c8:	8b 55 08             	mov    0x8(%ebp),%edx
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop
 3d0:	89 c8                	mov    %ecx,%eax
 3d2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 3d5:	85 c0                	test   %eax,%eax
 3d7:	75 f7                	jne    3d0 <lock_acquire+0x10>
}
 3d9:	5d                   	pop    %ebp
 3da:	c3                   	ret    
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <lock_release>:

void lock_release(lock_t *lock){
 3e0:	55                   	push   %ebp
 3e1:	31 c0                	xor    %eax,%eax
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	8b 55 08             	mov    0x8(%ebp),%edx
 3e8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
 3ed:	8d 76 00             	lea    0x0(%esi),%esi

000003f0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 3f0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3f1:	31 c0                	xor    %eax,%eax
{
 3f3:	89 e5                	mov    %esp,%ebp
 3f5:	53                   	push   %ebx
 3f6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 400:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 404:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 407:	83 c0 01             	add    $0x1,%eax
 40a:	84 d2                	test   %dl,%dl
 40c:	75 f2                	jne    400 <strcpy+0x10>
    ;
  return os;
}
 40e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 411:	89 c8                	mov    %ecx,%eax
 413:	c9                   	leave  
 414:	c3                   	ret    
 415:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000420 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 55 08             	mov    0x8(%ebp),%edx
 427:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 42a:	0f b6 02             	movzbl (%edx),%eax
 42d:	84 c0                	test   %al,%al
 42f:	75 17                	jne    448 <strcmp+0x28>
 431:	eb 3a                	jmp    46d <strcmp+0x4d>
 433:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 437:	90                   	nop
 438:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 43c:	83 c2 01             	add    $0x1,%edx
 43f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 442:	84 c0                	test   %al,%al
 444:	74 1a                	je     460 <strcmp+0x40>
    p++, q++;
 446:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 448:	0f b6 19             	movzbl (%ecx),%ebx
 44b:	38 c3                	cmp    %al,%bl
 44d:	74 e9                	je     438 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 44f:	29 d8                	sub    %ebx,%eax
}
 451:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 454:	c9                   	leave  
 455:	c3                   	ret    
 456:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 460:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 464:	31 c0                	xor    %eax,%eax
 466:	29 d8                	sub    %ebx,%eax
}
 468:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 46b:	c9                   	leave  
 46c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 46d:	0f b6 19             	movzbl (%ecx),%ebx
 470:	31 c0                	xor    %eax,%eax
 472:	eb db                	jmp    44f <strcmp+0x2f>
 474:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <strlen>:

uint
strlen(const char *s)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 486:	80 3a 00             	cmpb   $0x0,(%edx)
 489:	74 15                	je     4a0 <strlen+0x20>
 48b:	31 c0                	xor    %eax,%eax
 48d:	8d 76 00             	lea    0x0(%esi),%esi
 490:	83 c0 01             	add    $0x1,%eax
 493:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 497:	89 c1                	mov    %eax,%ecx
 499:	75 f5                	jne    490 <strlen+0x10>
    ;
  return n;
}
 49b:	89 c8                	mov    %ecx,%eax
 49d:	5d                   	pop    %ebp
 49e:	c3                   	ret    
 49f:	90                   	nop
  for(n = 0; s[n]; n++)
 4a0:	31 c9                	xor    %ecx,%ecx
}
 4a2:	5d                   	pop    %ebp
 4a3:	89 c8                	mov    %ecx,%eax
 4a5:	c3                   	ret    
 4a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ad:	8d 76 00             	lea    0x0(%esi),%esi

000004b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 4b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 4bd:	89 d7                	mov    %edx,%edi
 4bf:	fc                   	cld    
 4c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4c2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4c5:	89 d0                	mov    %edx,%eax
 4c7:	c9                   	leave  
 4c8:	c3                   	ret    
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004d0 <strchr>:

char*
strchr(const char *s, char c)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	8b 45 08             	mov    0x8(%ebp),%eax
 4d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4da:	0f b6 10             	movzbl (%eax),%edx
 4dd:	84 d2                	test   %dl,%dl
 4df:	75 12                	jne    4f3 <strchr+0x23>
 4e1:	eb 1d                	jmp    500 <strchr+0x30>
 4e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4e7:	90                   	nop
 4e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4ec:	83 c0 01             	add    $0x1,%eax
 4ef:	84 d2                	test   %dl,%dl
 4f1:	74 0d                	je     500 <strchr+0x30>
    if(*s == c)
 4f3:	38 d1                	cmp    %dl,%cl
 4f5:	75 f1                	jne    4e8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4f7:	5d                   	pop    %ebp
 4f8:	c3                   	ret    
 4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 500:	31 c0                	xor    %eax,%eax
}
 502:	5d                   	pop    %ebp
 503:	c3                   	ret    
 504:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <gets>:

char*
gets(char *buf, int max)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	57                   	push   %edi
 514:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 515:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 518:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 519:	31 db                	xor    %ebx,%ebx
{
 51b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 51e:	eb 27                	jmp    547 <gets+0x37>
    cc = read(0, &c, 1);
 520:	83 ec 04             	sub    $0x4,%esp
 523:	6a 01                	push   $0x1
 525:	57                   	push   %edi
 526:	6a 00                	push   $0x0
 528:	e8 2e 01 00 00       	call   65b <read>
    if(cc < 1)
 52d:	83 c4 10             	add    $0x10,%esp
 530:	85 c0                	test   %eax,%eax
 532:	7e 1d                	jle    551 <gets+0x41>
      break;
    buf[i++] = c;
 534:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 538:	8b 55 08             	mov    0x8(%ebp),%edx
 53b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 53f:	3c 0a                	cmp    $0xa,%al
 541:	74 1d                	je     560 <gets+0x50>
 543:	3c 0d                	cmp    $0xd,%al
 545:	74 19                	je     560 <gets+0x50>
  for(i=0; i+1 < max; ){
 547:	89 de                	mov    %ebx,%esi
 549:	83 c3 01             	add    $0x1,%ebx
 54c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 54f:	7c cf                	jl     520 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 551:	8b 45 08             	mov    0x8(%ebp),%eax
 554:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 558:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55b:	5b                   	pop    %ebx
 55c:	5e                   	pop    %esi
 55d:	5f                   	pop    %edi
 55e:	5d                   	pop    %ebp
 55f:	c3                   	ret    
  buf[i] = '\0';
 560:	8b 45 08             	mov    0x8(%ebp),%eax
 563:	89 de                	mov    %ebx,%esi
 565:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 569:	8d 65 f4             	lea    -0xc(%ebp),%esp
 56c:	5b                   	pop    %ebx
 56d:	5e                   	pop    %esi
 56e:	5f                   	pop    %edi
 56f:	5d                   	pop    %ebp
 570:	c3                   	ret    
 571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 578:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57f:	90                   	nop

00000580 <stat>:

int
stat(const char *n, struct stat *st)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	56                   	push   %esi
 584:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 585:	83 ec 08             	sub    $0x8,%esp
 588:	6a 00                	push   $0x0
 58a:	ff 75 08             	push   0x8(%ebp)
 58d:	e8 f1 00 00 00       	call   683 <open>
  if(fd < 0)
 592:	83 c4 10             	add    $0x10,%esp
 595:	85 c0                	test   %eax,%eax
 597:	78 27                	js     5c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 599:	83 ec 08             	sub    $0x8,%esp
 59c:	ff 75 0c             	push   0xc(%ebp)
 59f:	89 c3                	mov    %eax,%ebx
 5a1:	50                   	push   %eax
 5a2:	e8 f4 00 00 00       	call   69b <fstat>
  close(fd);
 5a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 5aa:	89 c6                	mov    %eax,%esi
  close(fd);
 5ac:	e8 ba 00 00 00       	call   66b <close>
  return r;
 5b1:	83 c4 10             	add    $0x10,%esp
}
 5b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5b7:	89 f0                	mov    %esi,%eax
 5b9:	5b                   	pop    %ebx
 5ba:	5e                   	pop    %esi
 5bb:	5d                   	pop    %ebp
 5bc:	c3                   	ret    
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5c5:	eb ed                	jmp    5b4 <stat+0x34>
 5c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <atoi>:

int
atoi(const char *s)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	53                   	push   %ebx
 5d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5d7:	0f be 02             	movsbl (%edx),%eax
 5da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5e5:	77 1e                	ja     605 <atoi+0x35>
 5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ee:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5f0:	83 c2 01             	add    $0x1,%edx
 5f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5fa:	0f be 02             	movsbl (%edx),%eax
 5fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 600:	80 fb 09             	cmp    $0x9,%bl
 603:	76 eb                	jbe    5f0 <atoi+0x20>
  return n;
}
 605:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 608:	89 c8                	mov    %ecx,%eax
 60a:	c9                   	leave  
 60b:	c3                   	ret    
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000610 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	8b 45 10             	mov    0x10(%ebp),%eax
 617:	8b 55 08             	mov    0x8(%ebp),%edx
 61a:	56                   	push   %esi
 61b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 61e:	85 c0                	test   %eax,%eax
 620:	7e 13                	jle    635 <memmove+0x25>
 622:	01 d0                	add    %edx,%eax
  dst = vdst;
 624:	89 d7                	mov    %edx,%edi
 626:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 630:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 631:	39 f8                	cmp    %edi,%eax
 633:	75 fb                	jne    630 <memmove+0x20>
  return vdst;
}
 635:	5e                   	pop    %esi
 636:	89 d0                	mov    %edx,%eax
 638:	5f                   	pop    %edi
 639:	5d                   	pop    %ebp
 63a:	c3                   	ret    

0000063b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 63b:	b8 01 00 00 00       	mov    $0x1,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <exit>:
SYSCALL(exit)
 643:	b8 02 00 00 00       	mov    $0x2,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <wait>:
SYSCALL(wait)
 64b:	b8 03 00 00 00       	mov    $0x3,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <pipe>:
SYSCALL(pipe)
 653:	b8 04 00 00 00       	mov    $0x4,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <read>:
SYSCALL(read)
 65b:	b8 05 00 00 00       	mov    $0x5,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <write>:
SYSCALL(write)
 663:	b8 10 00 00 00       	mov    $0x10,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <close>:
SYSCALL(close)
 66b:	b8 15 00 00 00       	mov    $0x15,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <kill>:
SYSCALL(kill)
 673:	b8 06 00 00 00       	mov    $0x6,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <exec>:
SYSCALL(exec)
 67b:	b8 07 00 00 00       	mov    $0x7,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <open>:
SYSCALL(open)
 683:	b8 0f 00 00 00       	mov    $0xf,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <mknod>:
SYSCALL(mknod)
 68b:	b8 11 00 00 00       	mov    $0x11,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <unlink>:
SYSCALL(unlink)
 693:	b8 12 00 00 00       	mov    $0x12,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <fstat>:
SYSCALL(fstat)
 69b:	b8 08 00 00 00       	mov    $0x8,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <link>:
SYSCALL(link)
 6a3:	b8 13 00 00 00       	mov    $0x13,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <mkdir>:
SYSCALL(mkdir)
 6ab:	b8 14 00 00 00       	mov    $0x14,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <chdir>:
SYSCALL(chdir)
 6b3:	b8 09 00 00 00       	mov    $0x9,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <dup>:
SYSCALL(dup)
 6bb:	b8 0a 00 00 00       	mov    $0xa,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <getpid>:
SYSCALL(getpid)
 6c3:	b8 0b 00 00 00       	mov    $0xb,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <sbrk>:
SYSCALL(sbrk)
 6cb:	b8 0c 00 00 00       	mov    $0xc,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <sleep>:
SYSCALL(sleep)
 6d3:	b8 0d 00 00 00       	mov    $0xd,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <uptime>:
SYSCALL(uptime)
 6db:	b8 0e 00 00 00       	mov    $0xe,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <clone>:
SYSCALL(clone)
 6e3:	b8 16 00 00 00       	mov    $0x16,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <join>:
SYSCALL(join)
 6eb:	b8 17 00 00 00       	mov    $0x17,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    
 6f3:	66 90                	xchg   %ax,%ax
 6f5:	66 90                	xchg   %ax,%ax
 6f7:	66 90                	xchg   %ax,%ax
 6f9:	66 90                	xchg   %ax,%ax
 6fb:	66 90                	xchg   %ax,%ax
 6fd:	66 90                	xchg   %ax,%ax
 6ff:	90                   	nop

00000700 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
 706:	83 ec 3c             	sub    $0x3c,%esp
 709:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 70c:	89 d1                	mov    %edx,%ecx
{
 70e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 711:	85 d2                	test   %edx,%edx
 713:	0f 89 7f 00 00 00    	jns    798 <printint+0x98>
 719:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 71d:	74 79                	je     798 <printint+0x98>
    neg = 1;
 71f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 726:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 728:	31 db                	xor    %ebx,%ebx
 72a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 72d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 730:	89 c8                	mov    %ecx,%eax
 732:	31 d2                	xor    %edx,%edx
 734:	89 cf                	mov    %ecx,%edi
 736:	f7 75 c4             	divl   -0x3c(%ebp)
 739:	0f b6 92 04 0c 00 00 	movzbl 0xc04(%edx),%edx
 740:	89 45 c0             	mov    %eax,-0x40(%ebp)
 743:	89 d8                	mov    %ebx,%eax
 745:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 748:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 74b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 74e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 751:	76 dd                	jbe    730 <printint+0x30>
  if(neg)
 753:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 756:	85 c9                	test   %ecx,%ecx
 758:	74 0c                	je     766 <printint+0x66>
    buf[i++] = '-';
 75a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 75f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 761:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 766:	8b 7d b8             	mov    -0x48(%ebp),%edi
 769:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 76d:	eb 07                	jmp    776 <printint+0x76>
 76f:	90                   	nop
    putc(fd, buf[i]);
 770:	0f b6 13             	movzbl (%ebx),%edx
 773:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 776:	83 ec 04             	sub    $0x4,%esp
 779:	88 55 d7             	mov    %dl,-0x29(%ebp)
 77c:	6a 01                	push   $0x1
 77e:	56                   	push   %esi
 77f:	57                   	push   %edi
 780:	e8 de fe ff ff       	call   663 <write>
  while(--i >= 0)
 785:	83 c4 10             	add    $0x10,%esp
 788:	39 de                	cmp    %ebx,%esi
 78a:	75 e4                	jne    770 <printint+0x70>
}
 78c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 78f:	5b                   	pop    %ebx
 790:	5e                   	pop    %esi
 791:	5f                   	pop    %edi
 792:	5d                   	pop    %ebp
 793:	c3                   	ret    
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 798:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 79f:	eb 87                	jmp    728 <printint+0x28>
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7af:	90                   	nop

000007b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
 7b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7bf:	0f b6 13             	movzbl (%ebx),%edx
 7c2:	84 d2                	test   %dl,%dl
 7c4:	74 6a                	je     830 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7c6:	8d 45 10             	lea    0x10(%ebp),%eax
 7c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7d4:	eb 36                	jmp    80c <printf+0x5c>
 7d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
 7e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7e8:	83 f8 25             	cmp    $0x25,%eax
 7eb:	74 15                	je     802 <printf+0x52>
  write(fd, &c, 1);
 7ed:	83 ec 04             	sub    $0x4,%esp
 7f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7f3:	6a 01                	push   $0x1
 7f5:	57                   	push   %edi
 7f6:	56                   	push   %esi
 7f7:	e8 67 fe ff ff       	call   663 <write>
 7fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 802:	0f b6 13             	movzbl (%ebx),%edx
 805:	83 c3 01             	add    $0x1,%ebx
 808:	84 d2                	test   %dl,%dl
 80a:	74 24                	je     830 <printf+0x80>
    c = fmt[i] & 0xff;
 80c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 80f:	85 c9                	test   %ecx,%ecx
 811:	74 cd                	je     7e0 <printf+0x30>
      }
    } else if(state == '%'){
 813:	83 f9 25             	cmp    $0x25,%ecx
 816:	75 ea                	jne    802 <printf+0x52>
      if(c == 'd'){
 818:	83 f8 25             	cmp    $0x25,%eax
 81b:	0f 84 07 01 00 00    	je     928 <printf+0x178>
 821:	83 e8 63             	sub    $0x63,%eax
 824:	83 f8 15             	cmp    $0x15,%eax
 827:	77 17                	ja     840 <printf+0x90>
 829:	ff 24 85 ac 0b 00 00 	jmp    *0xbac(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 830:	8d 65 f4             	lea    -0xc(%ebp),%esp
 833:	5b                   	pop    %ebx
 834:	5e                   	pop    %esi
 835:	5f                   	pop    %edi
 836:	5d                   	pop    %ebp
 837:	c3                   	ret    
 838:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83f:	90                   	nop
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
 843:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 846:	6a 01                	push   $0x1
 848:	57                   	push   %edi
 849:	56                   	push   %esi
 84a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 84e:	e8 10 fe ff ff       	call   663 <write>
        putc(fd, c);
 853:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 857:	83 c4 0c             	add    $0xc,%esp
 85a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 85d:	6a 01                	push   $0x1
 85f:	57                   	push   %edi
 860:	56                   	push   %esi
 861:	e8 fd fd ff ff       	call   663 <write>
        putc(fd, c);
 866:	83 c4 10             	add    $0x10,%esp
      state = 0;
 869:	31 c9                	xor    %ecx,%ecx
 86b:	eb 95                	jmp    802 <printf+0x52>
 86d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 870:	83 ec 0c             	sub    $0xc,%esp
 873:	b9 10 00 00 00       	mov    $0x10,%ecx
 878:	6a 00                	push   $0x0
 87a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 87d:	8b 10                	mov    (%eax),%edx
 87f:	89 f0                	mov    %esi,%eax
 881:	e8 7a fe ff ff       	call   700 <printint>
        ap++;
 886:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 88a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 88d:	31 c9                	xor    %ecx,%ecx
 88f:	e9 6e ff ff ff       	jmp    802 <printf+0x52>
 894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 898:	8b 45 d0             	mov    -0x30(%ebp),%eax
 89b:	8b 10                	mov    (%eax),%edx
        ap++;
 89d:	83 c0 04             	add    $0x4,%eax
 8a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8a3:	85 d2                	test   %edx,%edx
 8a5:	0f 84 8d 00 00 00    	je     938 <printf+0x188>
        while(*s != 0){
 8ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8b0:	84 c0                	test   %al,%al
 8b2:	0f 84 4a ff ff ff    	je     802 <printf+0x52>
 8b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8bb:	89 d3                	mov    %edx,%ebx
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8c3:	83 c3 01             	add    $0x1,%ebx
 8c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8c9:	6a 01                	push   $0x1
 8cb:	57                   	push   %edi
 8cc:	56                   	push   %esi
 8cd:	e8 91 fd ff ff       	call   663 <write>
        while(*s != 0){
 8d2:	0f b6 03             	movzbl (%ebx),%eax
 8d5:	83 c4 10             	add    $0x10,%esp
 8d8:	84 c0                	test   %al,%al
 8da:	75 e4                	jne    8c0 <printf+0x110>
      state = 0;
 8dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8df:	31 c9                	xor    %ecx,%ecx
 8e1:	e9 1c ff ff ff       	jmp    802 <printf+0x52>
 8e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8f8:	6a 01                	push   $0x1
 8fa:	e9 7b ff ff ff       	jmp    87a <printf+0xca>
 8ff:	90                   	nop
        putc(fd, *ap);
 900:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 903:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 906:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 908:	6a 01                	push   $0x1
 90a:	57                   	push   %edi
 90b:	56                   	push   %esi
        putc(fd, *ap);
 90c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 90f:	e8 4f fd ff ff       	call   663 <write>
        ap++;
 914:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 918:	83 c4 10             	add    $0x10,%esp
      state = 0;
 91b:	31 c9                	xor    %ecx,%ecx
 91d:	e9 e0 fe ff ff       	jmp    802 <printf+0x52>
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 928:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 92b:	83 ec 04             	sub    $0x4,%esp
 92e:	e9 2a ff ff ff       	jmp    85d <printf+0xad>
 933:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 937:	90                   	nop
          s = "(null)";
 938:	ba a5 0b 00 00       	mov    $0xba5,%edx
        while(*s != 0){
 93d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 940:	b8 28 00 00 00       	mov    $0x28,%eax
 945:	89 d3                	mov    %edx,%ebx
 947:	e9 74 ff ff ff       	jmp    8c0 <printf+0x110>
 94c:	66 90                	xchg   %ax,%ax
 94e:	66 90                	xchg   %ax,%ax

00000950 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 950:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 951:	a1 e0 12 00 00       	mov    0x12e0,%eax
{
 956:	89 e5                	mov    %esp,%ebp
 958:	57                   	push   %edi
 959:	56                   	push   %esi
 95a:	53                   	push   %ebx
 95b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 95e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 968:	89 c2                	mov    %eax,%edx
 96a:	8b 00                	mov    (%eax),%eax
 96c:	39 ca                	cmp    %ecx,%edx
 96e:	73 30                	jae    9a0 <free+0x50>
 970:	39 c1                	cmp    %eax,%ecx
 972:	72 04                	jb     978 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 974:	39 c2                	cmp    %eax,%edx
 976:	72 f0                	jb     968 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 978:	8b 73 fc             	mov    -0x4(%ebx),%esi
 97b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 97e:	39 f8                	cmp    %edi,%eax
 980:	74 30                	je     9b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 982:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 985:	8b 42 04             	mov    0x4(%edx),%eax
 988:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 98b:	39 f1                	cmp    %esi,%ecx
 98d:	74 3a                	je     9c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 98f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 991:	5b                   	pop    %ebx
  freep = p;
 992:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 998:	5e                   	pop    %esi
 999:	5f                   	pop    %edi
 99a:	5d                   	pop    %ebp
 99b:	c3                   	ret    
 99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9a0:	39 c2                	cmp    %eax,%edx
 9a2:	72 c4                	jb     968 <free+0x18>
 9a4:	39 c1                	cmp    %eax,%ecx
 9a6:	73 c0                	jae    968 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ae:	39 f8                	cmp    %edi,%eax
 9b0:	75 d0                	jne    982 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9b2:	03 70 04             	add    0x4(%eax),%esi
 9b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9b8:	8b 02                	mov    (%edx),%eax
 9ba:	8b 00                	mov    (%eax),%eax
 9bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9bf:	8b 42 04             	mov    0x4(%edx),%eax
 9c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9c5:	39 f1                	cmp    %esi,%ecx
 9c7:	75 c6                	jne    98f <free+0x3f>
    p->s.size += bp->s.size;
 9c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9cc:	89 15 e0 12 00 00    	mov    %edx,0x12e0
    p->s.size += bp->s.size;
 9d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9d8:	89 0a                	mov    %ecx,(%edx)
}
 9da:	5b                   	pop    %ebx
 9db:	5e                   	pop    %esi
 9dc:	5f                   	pop    %edi
 9dd:	5d                   	pop    %ebp
 9de:	c3                   	ret    
 9df:	90                   	nop

000009e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9e0:	55                   	push   %ebp
 9e1:	89 e5                	mov    %esp,%ebp
 9e3:	57                   	push   %edi
 9e4:	56                   	push   %esi
 9e5:	53                   	push   %ebx
 9e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9ec:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9f2:	8d 70 07             	lea    0x7(%eax),%esi
 9f5:	c1 ee 03             	shr    $0x3,%esi
 9f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9fb:	85 ff                	test   %edi,%edi
 9fd:	0f 84 9d 00 00 00    	je     aa0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a03:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a05:	8b 4a 04             	mov    0x4(%edx),%ecx
 a08:	39 f1                	cmp    %esi,%ecx
 a0a:	73 6a                	jae    a76 <malloc+0x96>
 a0c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a11:	39 de                	cmp    %ebx,%esi
 a13:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a16:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a20:	eb 17                	jmp    a39 <malloc+0x59>
 a22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a28:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a2a:	8b 48 04             	mov    0x4(%eax),%ecx
 a2d:	39 f1                	cmp    %esi,%ecx
 a2f:	73 4f                	jae    a80 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a31:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
 a37:	89 c2                	mov    %eax,%edx
 a39:	39 d7                	cmp    %edx,%edi
 a3b:	75 eb                	jne    a28 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a3d:	83 ec 0c             	sub    $0xc,%esp
 a40:	ff 75 e4             	push   -0x1c(%ebp)
 a43:	e8 83 fc ff ff       	call   6cb <sbrk>
  if(p == (char*)-1)
 a48:	83 c4 10             	add    $0x10,%esp
 a4b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a4e:	74 1c                	je     a6c <malloc+0x8c>
  hp->s.size = nu;
 a50:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a53:	83 ec 0c             	sub    $0xc,%esp
 a56:	83 c0 08             	add    $0x8,%eax
 a59:	50                   	push   %eax
 a5a:	e8 f1 fe ff ff       	call   950 <free>
  return freep;
 a5f:	8b 15 e0 12 00 00    	mov    0x12e0,%edx
      if((p = morecore(nunits)) == 0)
 a65:	83 c4 10             	add    $0x10,%esp
 a68:	85 d2                	test   %edx,%edx
 a6a:	75 bc                	jne    a28 <malloc+0x48>
        return 0;
  }
}
 a6c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a6f:	31 c0                	xor    %eax,%eax
}
 a71:	5b                   	pop    %ebx
 a72:	5e                   	pop    %esi
 a73:	5f                   	pop    %edi
 a74:	5d                   	pop    %ebp
 a75:	c3                   	ret    
    if(p->s.size >= nunits){
 a76:	89 d0                	mov    %edx,%eax
 a78:	89 fa                	mov    %edi,%edx
 a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a80:	39 ce                	cmp    %ecx,%esi
 a82:	74 4c                	je     ad0 <malloc+0xf0>
        p->s.size -= nunits;
 a84:	29 f1                	sub    %esi,%ecx
 a86:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a89:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a8c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a8f:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 a95:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a98:	83 c0 08             	add    $0x8,%eax
}
 a9b:	5b                   	pop    %ebx
 a9c:	5e                   	pop    %esi
 a9d:	5f                   	pop    %edi
 a9e:	5d                   	pop    %ebp
 a9f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 aa0:	c7 05 e0 12 00 00 e4 	movl   $0x12e4,0x12e0
 aa7:	12 00 00 
    base.s.size = 0;
 aaa:	bf e4 12 00 00       	mov    $0x12e4,%edi
    base.s.ptr = freep = prevp = &base;
 aaf:	c7 05 e4 12 00 00 e4 	movl   $0x12e4,0x12e4
 ab6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ab9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 abb:	c7 05 e8 12 00 00 00 	movl   $0x0,0x12e8
 ac2:	00 00 00 
    if(p->s.size >= nunits){
 ac5:	e9 42 ff ff ff       	jmp    a0c <malloc+0x2c>
 aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ad0:	8b 08                	mov    (%eax),%ecx
 ad2:	89 0a                	mov    %ecx,(%edx)
 ad4:	eb b9                	jmp    a8f <malloc+0xaf>
