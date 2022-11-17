
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
  12:	e8 cc 06 00 00       	call   6e3 <getpid>

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
  51:	83 3d b0 0f 00 00 03 	cmpl   $0x3,0xfb0
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 f8 0a 00 00       	push   $0xaf8
  65:	68 02 0b 00 00       	push   $0xb02
  6a:	6a 01                	push   $0x1
  6c:	e8 5f 07 00 00       	call   7d0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 87 0b 00 00       	push   $0xb87
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 f8 0a 00 00       	push   $0xaf8
  82:	68 02 0b 00 00       	push   $0xb02
  87:	6a 01                	push   $0x1
  89:	e8 42 07 00 00       	call   7d0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 70 0b 00 00       	push   $0xb70
  96:	68 19 0b 00 00       	push   $0xb19
  9b:	6a 01                	push   $0x1
  9d:	e8 2e 07 00 00       	call   7d0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 2d 0b 00 00       	push   $0xb2d
  a9:	6a 01                	push   $0x1
  ab:	e8 20 07 00 00       	call   7d0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 c0 0f 00 00    	push   0xfc0
  b7:	e8 d7 05 00 00       	call   693 <kill>
  bc:	e8 a2 05 00 00       	call   663 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 f8 0a 00 00       	push   $0xaf8
  c8:	68 02 0b 00 00       	push   $0xb02
  cd:	6a 01                	push   $0x1
  cf:	e8 fc 06 00 00       	call   7d0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 61 0b 00 00       	push   $0xb61
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 93 0b 00 00       	push   $0xb93
  e5:	6a 01                	push   $0x1
  e7:	e8 e4 06 00 00       	call   7d0 <printf>
   exit();
  ec:	e8 72 05 00 00       	call   663 <exit>
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
 118:	83 3d b0 0f 00 00 02 	cmpl   $0x2,0xfb0
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 f8 0a 00 00       	push   $0xaf8
 12c:	68 02 0b 00 00       	push   $0xb02
 131:	6a 01                	push   $0x1
 133:	e8 98 06 00 00       	call   7d0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 49 0b 00 00       	push   $0xb49
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 f8 0a 00 00       	push   $0xaf8
 149:	68 02 0b 00 00       	push   $0xb02
 14e:	6a 01                	push   $0x1
 150:	e8 7b 06 00 00       	call   7d0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 3a 0b 00 00       	push   $0xb3a
 15d:	68 19 0b 00 00       	push   $0xb19
 162:	6a 01                	push   $0x1
 164:	e8 67 06 00 00       	call   7d0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 2d 0b 00 00       	push   $0xb2d
 170:	6a 01                	push   $0x1
 172:	e8 59 06 00 00       	call   7d0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 c0 0f 00 00    	push   0xfc0
 17e:	e8 10 05 00 00       	call   693 <kill>
 183:	e8 db 04 00 00       	call   663 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 f8 0a 00 00       	push   $0xaf8
 18f:	68 02 0b 00 00       	push   $0xb02
 194:	6a 01                	push   $0x1
 196:	e8 35 06 00 00       	call   7d0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 0a 0b 00 00       	push   $0xb0a
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 b0 0f 00 00 03 	movl   $0x3,0xfb0
 1ac:	00 00 00 
   exit();
 1af:	e8 af 04 00 00       	call   663 <exit>
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
 1e1:	83 3d b0 0f 00 00 01 	cmpl   $0x1,0xfb0
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 f8 0a 00 00       	push   $0xaf8
 1f5:	68 02 0b 00 00       	push   $0xb02
 1fa:	6a 01                	push   $0x1
 1fc:	e8 cf 05 00 00       	call   7d0 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 55 0b 00 00       	push   $0xb55
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 f8 0a 00 00       	push   $0xaf8
 212:	68 02 0b 00 00       	push   $0xb02
 217:	6a 01                	push   $0x1
 219:	e8 b2 05 00 00       	call   7d0 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 3a 0b 00 00       	push   $0xb3a
 226:	68 19 0b 00 00       	push   $0xb19
 22b:	6a 01                	push   $0x1
 22d:	e8 9e 05 00 00       	call   7d0 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 2d 0b 00 00       	push   $0xb2d
 239:	6a 01                	push   $0x1
 23b:	e8 90 05 00 00       	call   7d0 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 c0 0f 00 00    	push   0xfc0
 247:	e8 47 04 00 00       	call   693 <kill>
 24c:	e8 12 04 00 00       	call   663 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 f8 0a 00 00       	push   $0xaf8
 258:	68 02 0b 00 00       	push   $0xb02
 25d:	6a 01                	push   $0x1
 25f:	e8 6c 05 00 00       	call   7d0 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 0a 0b 00 00       	push   $0xb0a
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
 27c:	c7 05 b0 0f 00 00 02 	movl   $0x2,0xfb0
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
 29b:	68 f8 0a 00 00       	push   $0xaf8
 2a0:	68 02 0b 00 00       	push   $0xb02
 2a5:	6a 01                	push   $0x1
 2a7:	e8 24 05 00 00       	call   7d0 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 a0 0b 00 00       	push   $0xba0
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 a5 03 00 00       	call   663 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 2c7:	a1 b4 0f 00 00       	mov    0xfb4,%eax
 2cc:	01 c0                	add    %eax,%eax
 2ce:	50                   	push   %eax
 2cf:	e8 2c 07 00 00       	call   a00 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 2d4:	8b 0d b4 0f 00 00    	mov    0xfb4,%ecx
 2da:	31 d2                	xor    %edx,%edx
 2dc:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 2df:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 2e1:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 2e3:	89 c8                	mov    %ecx,%eax
 2e5:	01 d9                	add    %ebx,%ecx
 2e7:	29 d0                	sub    %edx,%eax
 2e9:	01 d8                	add    %ebx,%eax
 2eb:	85 d2                	test   %edx,%edx
 2ed:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 2f0:	31 d2                	xor    %edx,%edx
 2f2:	eb 0c                	jmp    300 <thread_create+0x40>
 2f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2f8:	83 c2 01             	add    $0x1,%edx
 2fb:	83 fa 40             	cmp    $0x40,%edx
 2fe:	74 2f                	je     32f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 300:	8b 04 95 e0 11 00 00 	mov    0x11e0(,%edx,4),%eax
 307:	85 c0                	test   %eax,%eax
 309:	75 ed                	jne    2f8 <thread_create+0x38>
 30b:	8b 04 95 e0 0f 00 00 	mov    0xfe0(,%edx,4),%eax
 312:	85 c0                	test   %eax,%eax
 314:	75 e2                	jne    2f8 <thread_create+0x38>
      inUse[i] = 1;
 316:	c7 04 95 e0 0f 00 00 	movl   $0x1,0xfe0(,%edx,4)
 31d:	01 00 00 00 
      malloc_addrs[i] = original;
 321:	89 1c 95 e0 10 00 00 	mov    %ebx,0x10e0(,%edx,4)
      stack_addrs[i] = stack;
 328:	89 0c 95 e0 11 00 00 	mov    %ecx,0x11e0(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 32f:	51                   	push   %ecx
 330:	ff 75 10             	push   0x10(%ebp)
 333:	ff 75 0c             	push   0xc(%ebp)
 336:	ff 75 08             	push   0x8(%ebp)
 339:	e8 c5 03 00 00       	call   703 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 33e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 341:	c9                   	leave  
 342:	c3                   	ret    
 343:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000350 <thread_join>:

int 
thread_join()
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 354:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 356:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 359:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 35c:	50                   	push   %eax
 35d:	e8 a9 03 00 00       	call   70b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 362:	8b 55 f4             	mov    -0xc(%ebp),%edx
 365:	83 c4 10             	add    $0x10,%esp
 368:	eb 0e                	jmp    378 <thread_join+0x28>
 36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 370:	83 c3 01             	add    $0x1,%ebx
 373:	83 fb 40             	cmp    $0x40,%ebx
 376:	74 4c                	je     3c4 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 378:	83 3c 9d e0 0f 00 00 	cmpl   $0x1,0xfe0(,%ebx,4)
 37f:	01 
 380:	75 ee                	jne    370 <thread_join+0x20>
 382:	39 14 9d e0 11 00 00 	cmp    %edx,0x11e0(,%ebx,4)
 389:	75 e5                	jne    370 <thread_join+0x20>
      free(malloc_addrs[i]);
 38b:	83 ec 0c             	sub    $0xc,%esp
 38e:	ff 34 9d e0 10 00 00 	push   0x10e0(,%ebx,4)
 395:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 398:	e8 d3 05 00 00       	call   970 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 39d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 3a0:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 3a3:	c7 04 9d e0 10 00 00 	movl   $0x0,0x10e0(,%ebx,4)
 3aa:	00 00 00 00 
      stack_addrs[i] = 0;
 3ae:	c7 04 9d e0 11 00 00 	movl   $0x0,0x11e0(,%ebx,4)
 3b5:	00 00 00 00 
      inUse[i] = 0;
 3b9:	c7 04 9d e0 0f 00 00 	movl   $0x0,0xfe0(,%ebx,4)
 3c0:	00 00 00 00 
    }
  }
  return threadId; 
}
 3c4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c7:	c9                   	leave  
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <lock_init>:

void lock_init(lock_t *lock){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
 3d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3dc:	5d                   	pop    %ebp
 3dd:	c3                   	ret    
 3de:	66 90                	xchg   %ax,%ax

000003e0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 3e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 3e6:	89 e5                	mov    %esp,%ebp
 3e8:	8b 55 08             	mov    0x8(%ebp),%edx
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop
 3f0:	89 c8                	mov    %ecx,%eax
 3f2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 3f5:	85 c0                	test   %eax,%eax
 3f7:	75 f7                	jne    3f0 <lock_acquire+0x10>
}
 3f9:	5d                   	pop    %ebp
 3fa:	c3                   	ret    
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <lock_release>:

void lock_release(lock_t *lock){
 400:	55                   	push   %ebp
 401:	31 c0                	xor    %eax,%eax
 403:	89 e5                	mov    %esp,%ebp
 405:	8b 55 08             	mov    0x8(%ebp),%edx
 408:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi

00000410 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 410:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 411:	31 c0                	xor    %eax,%eax
{
 413:	89 e5                	mov    %esp,%ebp
 415:	53                   	push   %ebx
 416:	8b 4d 08             	mov    0x8(%ebp),%ecx
 419:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 420:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 424:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 427:	83 c0 01             	add    $0x1,%eax
 42a:	84 d2                	test   %dl,%dl
 42c:	75 f2                	jne    420 <strcpy+0x10>
    ;
  return os;
}
 42e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 431:	89 c8                	mov    %ecx,%eax
 433:	c9                   	leave  
 434:	c3                   	ret    
 435:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	53                   	push   %ebx
 444:	8b 55 08             	mov    0x8(%ebp),%edx
 447:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 44a:	0f b6 02             	movzbl (%edx),%eax
 44d:	84 c0                	test   %al,%al
 44f:	75 17                	jne    468 <strcmp+0x28>
 451:	eb 3a                	jmp    48d <strcmp+0x4d>
 453:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 457:	90                   	nop
 458:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 45c:	83 c2 01             	add    $0x1,%edx
 45f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 462:	84 c0                	test   %al,%al
 464:	74 1a                	je     480 <strcmp+0x40>
    p++, q++;
 466:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 468:	0f b6 19             	movzbl (%ecx),%ebx
 46b:	38 c3                	cmp    %al,%bl
 46d:	74 e9                	je     458 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 46f:	29 d8                	sub    %ebx,%eax
}
 471:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 474:	c9                   	leave  
 475:	c3                   	ret    
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 480:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 484:	31 c0                	xor    %eax,%eax
 486:	29 d8                	sub    %ebx,%eax
}
 488:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 48b:	c9                   	leave  
 48c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 48d:	0f b6 19             	movzbl (%ecx),%ebx
 490:	31 c0                	xor    %eax,%eax
 492:	eb db                	jmp    46f <strcmp+0x2f>
 494:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <strlen>:

uint
strlen(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 4a6:	80 3a 00             	cmpb   $0x0,(%edx)
 4a9:	74 15                	je     4c0 <strlen+0x20>
 4ab:	31 c0                	xor    %eax,%eax
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
 4b0:	83 c0 01             	add    $0x1,%eax
 4b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 4b7:	89 c1                	mov    %eax,%ecx
 4b9:	75 f5                	jne    4b0 <strlen+0x10>
    ;
  return n;
}
 4bb:	89 c8                	mov    %ecx,%eax
 4bd:	5d                   	pop    %ebp
 4be:	c3                   	ret    
 4bf:	90                   	nop
  for(n = 0; s[n]; n++)
 4c0:	31 c9                	xor    %ecx,%ecx
}
 4c2:	5d                   	pop    %ebp
 4c3:	89 c8                	mov    %ecx,%eax
 4c5:	c3                   	ret    
 4c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi

000004d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 4d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4da:	8b 45 0c             	mov    0xc(%ebp),%eax
 4dd:	89 d7                	mov    %edx,%edi
 4df:	fc                   	cld    
 4e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4e5:	89 d0                	mov    %edx,%eax
 4e7:	c9                   	leave  
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <strchr>:

char*
strchr(const char *s, char c)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4fa:	0f b6 10             	movzbl (%eax),%edx
 4fd:	84 d2                	test   %dl,%dl
 4ff:	75 12                	jne    513 <strchr+0x23>
 501:	eb 1d                	jmp    520 <strchr+0x30>
 503:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 507:	90                   	nop
 508:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 50c:	83 c0 01             	add    $0x1,%eax
 50f:	84 d2                	test   %dl,%dl
 511:	74 0d                	je     520 <strchr+0x30>
    if(*s == c)
 513:	38 d1                	cmp    %dl,%cl
 515:	75 f1                	jne    508 <strchr+0x18>
      return (char*)s;
  return 0;
}
 517:	5d                   	pop    %ebp
 518:	c3                   	ret    
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 520:	31 c0                	xor    %eax,%eax
}
 522:	5d                   	pop    %ebp
 523:	c3                   	ret    
 524:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <gets>:

char*
gets(char *buf, int max)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 535:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 538:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 539:	31 db                	xor    %ebx,%ebx
{
 53b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 53e:	eb 27                	jmp    567 <gets+0x37>
    cc = read(0, &c, 1);
 540:	83 ec 04             	sub    $0x4,%esp
 543:	6a 01                	push   $0x1
 545:	57                   	push   %edi
 546:	6a 00                	push   $0x0
 548:	e8 2e 01 00 00       	call   67b <read>
    if(cc < 1)
 54d:	83 c4 10             	add    $0x10,%esp
 550:	85 c0                	test   %eax,%eax
 552:	7e 1d                	jle    571 <gets+0x41>
      break;
    buf[i++] = c;
 554:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 558:	8b 55 08             	mov    0x8(%ebp),%edx
 55b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 55f:	3c 0a                	cmp    $0xa,%al
 561:	74 1d                	je     580 <gets+0x50>
 563:	3c 0d                	cmp    $0xd,%al
 565:	74 19                	je     580 <gets+0x50>
  for(i=0; i+1 < max; ){
 567:	89 de                	mov    %ebx,%esi
 569:	83 c3 01             	add    $0x1,%ebx
 56c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 56f:	7c cf                	jl     540 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 571:	8b 45 08             	mov    0x8(%ebp),%eax
 574:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 578:	8d 65 f4             	lea    -0xc(%ebp),%esp
 57b:	5b                   	pop    %ebx
 57c:	5e                   	pop    %esi
 57d:	5f                   	pop    %edi
 57e:	5d                   	pop    %ebp
 57f:	c3                   	ret    
  buf[i] = '\0';
 580:	8b 45 08             	mov    0x8(%ebp),%eax
 583:	89 de                	mov    %ebx,%esi
 585:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 589:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58c:	5b                   	pop    %ebx
 58d:	5e                   	pop    %esi
 58e:	5f                   	pop    %edi
 58f:	5d                   	pop    %ebp
 590:	c3                   	ret    
 591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 598:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop

000005a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	56                   	push   %esi
 5a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5a5:	83 ec 08             	sub    $0x8,%esp
 5a8:	6a 00                	push   $0x0
 5aa:	ff 75 08             	push   0x8(%ebp)
 5ad:	e8 f1 00 00 00       	call   6a3 <open>
  if(fd < 0)
 5b2:	83 c4 10             	add    $0x10,%esp
 5b5:	85 c0                	test   %eax,%eax
 5b7:	78 27                	js     5e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 5b9:	83 ec 08             	sub    $0x8,%esp
 5bc:	ff 75 0c             	push   0xc(%ebp)
 5bf:	89 c3                	mov    %eax,%ebx
 5c1:	50                   	push   %eax
 5c2:	e8 f4 00 00 00       	call   6bb <fstat>
  close(fd);
 5c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 5ca:	89 c6                	mov    %eax,%esi
  close(fd);
 5cc:	e8 ba 00 00 00       	call   68b <close>
  return r;
 5d1:	83 c4 10             	add    $0x10,%esp
}
 5d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5d7:	89 f0                	mov    %esi,%eax
 5d9:	5b                   	pop    %ebx
 5da:	5e                   	pop    %esi
 5db:	5d                   	pop    %ebp
 5dc:	c3                   	ret    
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5e5:	eb ed                	jmp    5d4 <stat+0x34>
 5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <atoi>:

int
atoi(const char *s)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	53                   	push   %ebx
 5f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5f7:	0f be 02             	movsbl (%edx),%eax
 5fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 600:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 605:	77 1e                	ja     625 <atoi+0x35>
 607:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 610:	83 c2 01             	add    $0x1,%edx
 613:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 616:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 61a:	0f be 02             	movsbl (%edx),%eax
 61d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 620:	80 fb 09             	cmp    $0x9,%bl
 623:	76 eb                	jbe    610 <atoi+0x20>
  return n;
}
 625:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 628:	89 c8                	mov    %ecx,%eax
 62a:	c9                   	leave  
 62b:	c3                   	ret    
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	8b 45 10             	mov    0x10(%ebp),%eax
 637:	8b 55 08             	mov    0x8(%ebp),%edx
 63a:	56                   	push   %esi
 63b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 63e:	85 c0                	test   %eax,%eax
 640:	7e 13                	jle    655 <memmove+0x25>
 642:	01 d0                	add    %edx,%eax
  dst = vdst;
 644:	89 d7                	mov    %edx,%edi
 646:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 650:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 651:	39 f8                	cmp    %edi,%eax
 653:	75 fb                	jne    650 <memmove+0x20>
  return vdst;
}
 655:	5e                   	pop    %esi
 656:	89 d0                	mov    %edx,%eax
 658:	5f                   	pop    %edi
 659:	5d                   	pop    %ebp
 65a:	c3                   	ret    

0000065b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 65b:	b8 01 00 00 00       	mov    $0x1,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <exit>:
SYSCALL(exit)
 663:	b8 02 00 00 00       	mov    $0x2,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <wait>:
SYSCALL(wait)
 66b:	b8 03 00 00 00       	mov    $0x3,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <pipe>:
SYSCALL(pipe)
 673:	b8 04 00 00 00       	mov    $0x4,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <read>:
SYSCALL(read)
 67b:	b8 05 00 00 00       	mov    $0x5,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <write>:
SYSCALL(write)
 683:	b8 10 00 00 00       	mov    $0x10,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <close>:
SYSCALL(close)
 68b:	b8 15 00 00 00       	mov    $0x15,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <kill>:
SYSCALL(kill)
 693:	b8 06 00 00 00       	mov    $0x6,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <exec>:
SYSCALL(exec)
 69b:	b8 07 00 00 00       	mov    $0x7,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <open>:
SYSCALL(open)
 6a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <mknod>:
SYSCALL(mknod)
 6ab:	b8 11 00 00 00       	mov    $0x11,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <unlink>:
SYSCALL(unlink)
 6b3:	b8 12 00 00 00       	mov    $0x12,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <fstat>:
SYSCALL(fstat)
 6bb:	b8 08 00 00 00       	mov    $0x8,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <link>:
SYSCALL(link)
 6c3:	b8 13 00 00 00       	mov    $0x13,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <mkdir>:
SYSCALL(mkdir)
 6cb:	b8 14 00 00 00       	mov    $0x14,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <chdir>:
SYSCALL(chdir)
 6d3:	b8 09 00 00 00       	mov    $0x9,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <dup>:
SYSCALL(dup)
 6db:	b8 0a 00 00 00       	mov    $0xa,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <getpid>:
SYSCALL(getpid)
 6e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <sbrk>:
SYSCALL(sbrk)
 6eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <sleep>:
SYSCALL(sleep)
 6f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <uptime>:
SYSCALL(uptime)
 6fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <clone>:
SYSCALL(clone)
 703:	b8 16 00 00 00       	mov    $0x16,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <join>:
SYSCALL(join)
 70b:	b8 17 00 00 00       	mov    $0x17,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    
 713:	66 90                	xchg   %ax,%ax
 715:	66 90                	xchg   %ax,%ax
 717:	66 90                	xchg   %ax,%ax
 719:	66 90                	xchg   %ax,%ax
 71b:	66 90                	xchg   %ax,%ax
 71d:	66 90                	xchg   %ax,%ax
 71f:	90                   	nop

00000720 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 3c             	sub    $0x3c,%esp
 729:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 72c:	89 d1                	mov    %edx,%ecx
{
 72e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 731:	85 d2                	test   %edx,%edx
 733:	0f 89 7f 00 00 00    	jns    7b8 <printint+0x98>
 739:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 73d:	74 79                	je     7b8 <printint+0x98>
    neg = 1;
 73f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 746:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 748:	31 db                	xor    %ebx,%ebx
 74a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 750:	89 c8                	mov    %ecx,%eax
 752:	31 d2                	xor    %edx,%edx
 754:	89 cf                	mov    %ecx,%edi
 756:	f7 75 c4             	divl   -0x3c(%ebp)
 759:	0f b6 92 24 0c 00 00 	movzbl 0xc24(%edx),%edx
 760:	89 45 c0             	mov    %eax,-0x40(%ebp)
 763:	89 d8                	mov    %ebx,%eax
 765:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 768:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 76b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 76e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 771:	76 dd                	jbe    750 <printint+0x30>
  if(neg)
 773:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 776:	85 c9                	test   %ecx,%ecx
 778:	74 0c                	je     786 <printint+0x66>
    buf[i++] = '-';
 77a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 77f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 781:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 786:	8b 7d b8             	mov    -0x48(%ebp),%edi
 789:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 78d:	eb 07                	jmp    796 <printint+0x76>
 78f:	90                   	nop
    putc(fd, buf[i]);
 790:	0f b6 13             	movzbl (%ebx),%edx
 793:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 796:	83 ec 04             	sub    $0x4,%esp
 799:	88 55 d7             	mov    %dl,-0x29(%ebp)
 79c:	6a 01                	push   $0x1
 79e:	56                   	push   %esi
 79f:	57                   	push   %edi
 7a0:	e8 de fe ff ff       	call   683 <write>
  while(--i >= 0)
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	39 de                	cmp    %ebx,%esi
 7aa:	75 e4                	jne    790 <printint+0x70>
}
 7ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7af:	5b                   	pop    %ebx
 7b0:	5e                   	pop    %esi
 7b1:	5f                   	pop    %edi
 7b2:	5d                   	pop    %ebp
 7b3:	c3                   	ret    
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7bf:	eb 87                	jmp    748 <printint+0x28>
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cf:	90                   	nop

000007d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	57                   	push   %edi
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7df:	0f b6 13             	movzbl (%ebx),%edx
 7e2:	84 d2                	test   %dl,%dl
 7e4:	74 6a                	je     850 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7e6:	8d 45 10             	lea    0x10(%ebp),%eax
 7e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7f4:	eb 36                	jmp    82c <printf+0x5c>
 7f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
 800:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 803:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 808:	83 f8 25             	cmp    $0x25,%eax
 80b:	74 15                	je     822 <printf+0x52>
  write(fd, &c, 1);
 80d:	83 ec 04             	sub    $0x4,%esp
 810:	88 55 e7             	mov    %dl,-0x19(%ebp)
 813:	6a 01                	push   $0x1
 815:	57                   	push   %edi
 816:	56                   	push   %esi
 817:	e8 67 fe ff ff       	call   683 <write>
 81c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 81f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 822:	0f b6 13             	movzbl (%ebx),%edx
 825:	83 c3 01             	add    $0x1,%ebx
 828:	84 d2                	test   %dl,%dl
 82a:	74 24                	je     850 <printf+0x80>
    c = fmt[i] & 0xff;
 82c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 82f:	85 c9                	test   %ecx,%ecx
 831:	74 cd                	je     800 <printf+0x30>
      }
    } else if(state == '%'){
 833:	83 f9 25             	cmp    $0x25,%ecx
 836:	75 ea                	jne    822 <printf+0x52>
      if(c == 'd'){
 838:	83 f8 25             	cmp    $0x25,%eax
 83b:	0f 84 07 01 00 00    	je     948 <printf+0x178>
 841:	83 e8 63             	sub    $0x63,%eax
 844:	83 f8 15             	cmp    $0x15,%eax
 847:	77 17                	ja     860 <printf+0x90>
 849:	ff 24 85 cc 0b 00 00 	jmp    *0xbcc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 850:	8d 65 f4             	lea    -0xc(%ebp),%esp
 853:	5b                   	pop    %ebx
 854:	5e                   	pop    %esi
 855:	5f                   	pop    %edi
 856:	5d                   	pop    %ebp
 857:	c3                   	ret    
 858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85f:	90                   	nop
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 866:	6a 01                	push   $0x1
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 86e:	e8 10 fe ff ff       	call   683 <write>
        putc(fd, c);
 873:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 877:	83 c4 0c             	add    $0xc,%esp
 87a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 87d:	6a 01                	push   $0x1
 87f:	57                   	push   %edi
 880:	56                   	push   %esi
 881:	e8 fd fd ff ff       	call   683 <write>
        putc(fd, c);
 886:	83 c4 10             	add    $0x10,%esp
      state = 0;
 889:	31 c9                	xor    %ecx,%ecx
 88b:	eb 95                	jmp    822 <printf+0x52>
 88d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	b9 10 00 00 00       	mov    $0x10,%ecx
 898:	6a 00                	push   $0x0
 89a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 89d:	8b 10                	mov    (%eax),%edx
 89f:	89 f0                	mov    %esi,%eax
 8a1:	e8 7a fe ff ff       	call   720 <printint>
        ap++;
 8a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ad:	31 c9                	xor    %ecx,%ecx
 8af:	e9 6e ff ff ff       	jmp    822 <printf+0x52>
 8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8bb:	8b 10                	mov    (%eax),%edx
        ap++;
 8bd:	83 c0 04             	add    $0x4,%eax
 8c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8c3:	85 d2                	test   %edx,%edx
 8c5:	0f 84 8d 00 00 00    	je     958 <printf+0x188>
        while(*s != 0){
 8cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8d0:	84 c0                	test   %al,%al
 8d2:	0f 84 4a ff ff ff    	je     822 <printf+0x52>
 8d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8db:	89 d3                	mov    %edx,%ebx
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8e3:	83 c3 01             	add    $0x1,%ebx
 8e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8e9:	6a 01                	push   $0x1
 8eb:	57                   	push   %edi
 8ec:	56                   	push   %esi
 8ed:	e8 91 fd ff ff       	call   683 <write>
        while(*s != 0){
 8f2:	0f b6 03             	movzbl (%ebx),%eax
 8f5:	83 c4 10             	add    $0x10,%esp
 8f8:	84 c0                	test   %al,%al
 8fa:	75 e4                	jne    8e0 <printf+0x110>
      state = 0;
 8fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ff:	31 c9                	xor    %ecx,%ecx
 901:	e9 1c ff ff ff       	jmp    822 <printf+0x52>
 906:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 0a 00 00 00       	mov    $0xa,%ecx
 918:	6a 01                	push   $0x1
 91a:	e9 7b ff ff ff       	jmp    89a <printf+0xca>
 91f:	90                   	nop
        putc(fd, *ap);
 920:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 923:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 926:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 928:	6a 01                	push   $0x1
 92a:	57                   	push   %edi
 92b:	56                   	push   %esi
        putc(fd, *ap);
 92c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 92f:	e8 4f fd ff ff       	call   683 <write>
        ap++;
 934:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 938:	83 c4 10             	add    $0x10,%esp
      state = 0;
 93b:	31 c9                	xor    %ecx,%ecx
 93d:	e9 e0 fe ff ff       	jmp    822 <printf+0x52>
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 948:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 94b:	83 ec 04             	sub    $0x4,%esp
 94e:	e9 2a ff ff ff       	jmp    87d <printf+0xad>
 953:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 957:	90                   	nop
          s = "(null)";
 958:	ba c5 0b 00 00       	mov    $0xbc5,%edx
        while(*s != 0){
 95d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 960:	b8 28 00 00 00       	mov    $0x28,%eax
 965:	89 d3                	mov    %edx,%ebx
 967:	e9 74 ff ff ff       	jmp    8e0 <printf+0x110>
 96c:	66 90                	xchg   %ax,%ax
 96e:	66 90                	xchg   %ax,%ax

00000970 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 970:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	a1 e0 12 00 00       	mov    0x12e0,%eax
{
 976:	89 e5                	mov    %esp,%ebp
 978:	57                   	push   %edi
 979:	56                   	push   %esi
 97a:	53                   	push   %ebx
 97b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 97e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 988:	89 c2                	mov    %eax,%edx
 98a:	8b 00                	mov    (%eax),%eax
 98c:	39 ca                	cmp    %ecx,%edx
 98e:	73 30                	jae    9c0 <free+0x50>
 990:	39 c1                	cmp    %eax,%ecx
 992:	72 04                	jb     998 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 994:	39 c2                	cmp    %eax,%edx
 996:	72 f0                	jb     988 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 998:	8b 73 fc             	mov    -0x4(%ebx),%esi
 99b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 99e:	39 f8                	cmp    %edi,%eax
 9a0:	74 30                	je     9d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9a5:	8b 42 04             	mov    0x4(%edx),%eax
 9a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9ab:	39 f1                	cmp    %esi,%ecx
 9ad:	74 3a                	je     9e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9b1:	5b                   	pop    %ebx
  freep = p;
 9b2:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 9b8:	5e                   	pop    %esi
 9b9:	5f                   	pop    %edi
 9ba:	5d                   	pop    %ebp
 9bb:	c3                   	ret    
 9bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9c0:	39 c2                	cmp    %eax,%edx
 9c2:	72 c4                	jb     988 <free+0x18>
 9c4:	39 c1                	cmp    %eax,%ecx
 9c6:	73 c0                	jae    988 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ce:	39 f8                	cmp    %edi,%eax
 9d0:	75 d0                	jne    9a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9d2:	03 70 04             	add    0x4(%eax),%esi
 9d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9d8:	8b 02                	mov    (%edx),%eax
 9da:	8b 00                	mov    (%eax),%eax
 9dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9df:	8b 42 04             	mov    0x4(%edx),%eax
 9e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9e5:	39 f1                	cmp    %esi,%ecx
 9e7:	75 c6                	jne    9af <free+0x3f>
    p->s.size += bp->s.size;
 9e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ec:	89 15 e0 12 00 00    	mov    %edx,0x12e0
    p->s.size += bp->s.size;
 9f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9f8:	89 0a                	mov    %ecx,(%edx)
}
 9fa:	5b                   	pop    %ebx
 9fb:	5e                   	pop    %esi
 9fc:	5f                   	pop    %edi
 9fd:	5d                   	pop    %ebp
 9fe:	c3                   	ret    
 9ff:	90                   	nop

00000a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a00:	55                   	push   %ebp
 a01:	89 e5                	mov    %esp,%ebp
 a03:	57                   	push   %edi
 a04:	56                   	push   %esi
 a05:	53                   	push   %ebx
 a06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a0c:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a12:	8d 70 07             	lea    0x7(%eax),%esi
 a15:	c1 ee 03             	shr    $0x3,%esi
 a18:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a1b:	85 ff                	test   %edi,%edi
 a1d:	0f 84 9d 00 00 00    	je     ac0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a23:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a25:	8b 4a 04             	mov    0x4(%edx),%ecx
 a28:	39 f1                	cmp    %esi,%ecx
 a2a:	73 6a                	jae    a96 <malloc+0x96>
 a2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a31:	39 de                	cmp    %ebx,%esi
 a33:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a36:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a40:	eb 17                	jmp    a59 <malloc+0x59>
 a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a4a:	8b 48 04             	mov    0x4(%eax),%ecx
 a4d:	39 f1                	cmp    %esi,%ecx
 a4f:	73 4f                	jae    aa0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a51:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
 a57:	89 c2                	mov    %eax,%edx
 a59:	39 d7                	cmp    %edx,%edi
 a5b:	75 eb                	jne    a48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a5d:	83 ec 0c             	sub    $0xc,%esp
 a60:	ff 75 e4             	push   -0x1c(%ebp)
 a63:	e8 83 fc ff ff       	call   6eb <sbrk>
  if(p == (char*)-1)
 a68:	83 c4 10             	add    $0x10,%esp
 a6b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a6e:	74 1c                	je     a8c <malloc+0x8c>
  hp->s.size = nu;
 a70:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a73:	83 ec 0c             	sub    $0xc,%esp
 a76:	83 c0 08             	add    $0x8,%eax
 a79:	50                   	push   %eax
 a7a:	e8 f1 fe ff ff       	call   970 <free>
  return freep;
 a7f:	8b 15 e0 12 00 00    	mov    0x12e0,%edx
      if((p = morecore(nunits)) == 0)
 a85:	83 c4 10             	add    $0x10,%esp
 a88:	85 d2                	test   %edx,%edx
 a8a:	75 bc                	jne    a48 <malloc+0x48>
        return 0;
  }
}
 a8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a8f:	31 c0                	xor    %eax,%eax
}
 a91:	5b                   	pop    %ebx
 a92:	5e                   	pop    %esi
 a93:	5f                   	pop    %edi
 a94:	5d                   	pop    %ebp
 a95:	c3                   	ret    
    if(p->s.size >= nunits){
 a96:	89 d0                	mov    %edx,%eax
 a98:	89 fa                	mov    %edi,%edx
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 aa0:	39 ce                	cmp    %ecx,%esi
 aa2:	74 4c                	je     af0 <malloc+0xf0>
        p->s.size -= nunits;
 aa4:	29 f1                	sub    %esi,%ecx
 aa6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 aa9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aaf:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 ab5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ab8:	83 c0 08             	add    $0x8,%eax
}
 abb:	5b                   	pop    %ebx
 abc:	5e                   	pop    %esi
 abd:	5f                   	pop    %edi
 abe:	5d                   	pop    %ebp
 abf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ac0:	c7 05 e0 12 00 00 e4 	movl   $0x12e4,0x12e0
 ac7:	12 00 00 
    base.s.size = 0;
 aca:	bf e4 12 00 00       	mov    $0x12e4,%edi
    base.s.ptr = freep = prevp = &base;
 acf:	c7 05 e4 12 00 00 e4 	movl   $0x12e4,0x12e4
 ad6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ad9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 adb:	c7 05 e8 12 00 00 00 	movl   $0x0,0x12e8
 ae2:	00 00 00 
    if(p->s.size >= nunits){
 ae5:	e9 42 ff ff ff       	jmp    a2c <malloc+0x2c>
 aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 af0:	8b 08                	mov    (%eax),%ecx
 af2:	89 0a                	mov    %ecx,(%edx)
 af4:	eb b9                	jmp    aaf <malloc+0xaf>
