
_test_19:     file format elf32-i386


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
  12:	e8 0c 07 00 00       	call   723 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 40 10 00 00       	mov    %eax,0x1040
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  33:	c7 45 f4 18 00 00 00 	movl   $0x18,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 c1 02 00 00       	call   300 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 43 03 00 00       	call   390 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 28 10 00 00 03 	cmpl   $0x3,0x1028
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 38 0b 00 00       	push   $0xb38
  65:	68 42 0b 00 00       	push   $0xb42
  6a:	6a 01                	push   $0x1
  6c:	e8 9f 07 00 00       	call   810 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 f4 0b 00 00       	push   $0xbf4
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 38 0b 00 00       	push   $0xb38
  82:	68 42 0b 00 00       	push   $0xb42
  87:	6a 01                	push   $0x1
  89:	e8 82 07 00 00       	call   810 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 dd 0b 00 00       	push   $0xbdd
  96:	68 59 0b 00 00       	push   $0xb59
  9b:	6a 01                	push   $0x1
  9d:	e8 6e 07 00 00       	call   810 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 6d 0b 00 00       	push   $0xb6d
  a9:	6a 01                	push   $0x1
  ab:	e8 60 07 00 00       	call   810 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 40 10 00 00    	push   0x1040
  b7:	e8 17 06 00 00       	call   6d3 <kill>
  bc:	e8 e2 05 00 00       	call   6a3 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 38 0b 00 00       	push   $0xb38
  c8:	68 42 0b 00 00       	push   $0xb42
  cd:	6a 01                	push   $0x1
  cf:	e8 3c 07 00 00       	call   810 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 be 0b 00 00       	push   $0xbbe
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 00 0c 00 00       	push   $0xc00
  e5:	6a 01                	push   $0x1
  e7:	e8 24 07 00 00       	call   810 <printf>
   exit();
  ec:	e8 b2 05 00 00       	call   6a3 <exit>
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
   assert(arg1_int == 42);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 2a             	cmpl   $0x2a,(%eax)
 111:	75 1a                	jne    12d <nested_worker+0x2d>
   assert(arg2_int == 24);
 113:	83 fa 18             	cmp    $0x18,%edx
 116:	75 78                	jne    190 <nested_worker+0x90>
   assert(global == 2);
 118:	83 3d 28 10 00 00 02 	cmpl   $0x2,0x1028
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 28 10 00 00 03 	movl   $0x3,0x1028
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 38 0b 00 00       	push   $0xb38
 134:	68 42 0b 00 00       	push   $0xb42
 139:	6a 01                	push   $0x1
 13b:	e8 d0 06 00 00       	call   810 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 4a 0b 00 00       	push   $0xb4a
   assert(arg2_int == 24);
 148:	68 59 0b 00 00       	push   $0xb59
 14d:	6a 01                	push   $0x1
 14f:	e8 bc 06 00 00       	call   810 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 6d 0b 00 00       	push   $0xb6d
 15b:	6a 01                	push   $0x1
 15d:	e8 ae 06 00 00       	call   810 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 40 10 00 00    	push   0x1040
 169:	e8 65 05 00 00       	call   6d3 <kill>
 16e:	e8 30 05 00 00       	call   6a3 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 38 0b 00 00       	push   $0xb38
 17a:	68 42 0b 00 00       	push   $0xb42
 17f:	6a 01                	push   $0x1
 181:	e8 8a 06 00 00       	call   810 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 89 0b 00 00       	push   $0xb89
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 38 0b 00 00       	push   $0xb38
 197:	68 42 0b 00 00       	push   $0xb42
 19c:	6a 01                	push   $0x1
 19e:	e8 6d 06 00 00       	call   810 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 7a 0b 00 00       	push   $0xb7a
 1ab:	eb 9b                	jmp    148 <nested_worker+0x48>
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <worker>:

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	83 ec 14             	sub    $0x14,%esp
   int tmp1 = *(int*)arg1;
 1b7:	8b 45 08             	mov    0x8(%ebp),%eax
   int tmp2 = *(int*)arg2;
 1ba:	8b 55 0c             	mov    0xc(%ebp),%edx
   int tmp1 = *(int*)arg1;
 1bd:	8b 00                	mov    (%eax),%eax
   int tmp2 = *(int*)arg2;
 1bf:	8b 12                	mov    (%edx),%edx
   int tmp1 = *(int*)arg1;
 1c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int tmp2 = *(int*)arg2;
 1c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(tmp1 == 42);
 1c7:	83 f8 2a             	cmp    $0x2a,%eax
 1ca:	75 75                	jne    241 <worker+0x91>
   assert(tmp2 == 24);
 1cc:	83 fa 18             	cmp    $0x18,%edx
 1cf:	75 2a                	jne    1fb <worker+0x4b>
   assert(global == 1);
 1d1:	83 3d 28 10 00 00 01 	cmpl   $0x1,0x1028
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 38 0b 00 00       	push   $0xb38
 1e5:	68 42 0b 00 00       	push   $0xb42
 1ea:	6a 01                	push   $0x1
 1ec:	e8 1f 06 00 00       	call   810 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 ab 0b 00 00       	push   $0xbab
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 38 0b 00 00       	push   $0xb38
 202:	68 42 0b 00 00       	push   $0xb42
 207:	6a 01                	push   $0x1
 209:	e8 02 06 00 00       	call   810 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 a0 0b 00 00       	push   $0xba0
 216:	68 59 0b 00 00       	push   $0xb59
 21b:	6a 01                	push   $0x1
 21d:	e8 ee 05 00 00       	call   810 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 6d 0b 00 00       	push   $0xb6d
 229:	6a 01                	push   $0x1
 22b:	e8 e0 05 00 00       	call   810 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 40 10 00 00    	push   0x1040
 237:	e8 97 04 00 00       	call   6d3 <kill>
 23c:	e8 62 04 00 00       	call   6a3 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 38 0b 00 00       	push   $0xb38
 248:	68 42 0b 00 00       	push   $0xb42
 24d:	6a 01                	push   $0x1
 24f:	e8 bc 05 00 00       	call   810 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 95 0b 00 00       	push   $0xb95
 25c:	eb b8                	jmp    216 <worker+0x66>
   global++;

   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 25e:	50                   	push   %eax
 25f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 262:	50                   	push   %eax
 263:	8d 45 f0             	lea    -0x10(%ebp),%eax
 266:	50                   	push   %eax
 267:	68 00 01 00 00       	push   $0x100
   global++;
 26c:	c7 05 28 10 00 00 02 	movl   $0x2,0x1028
 273:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 276:	e8 85 00 00 00       	call   300 <thread_create>
   assert(nested_thread_pid > 0);
 27b:	83 c4 10             	add    $0x10,%esp
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 27e:	89 c3                	mov    %eax,%ebx
   assert(nested_thread_pid > 0);
 280:	85 c0                	test   %eax,%eax
 282:	7e 4d                	jle    2d1 <worker+0x121>
   for(int j=0;j<10000;j++);

   int nested_join_pid = thread_join();
 284:	e8 07 01 00 00       	call   390 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 38 0b 00 00       	push   $0xb38
 298:	68 42 0b 00 00       	push   $0xb42
 29d:	6a 01                	push   $0x1
 29f:	e8 6c 05 00 00       	call   810 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 10 0c 00 00       	push   $0xc10
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 38 0b 00 00       	push   $0xb38
 2b8:	68 42 0b 00 00       	push   $0xb42
 2bd:	6a 01                	push   $0x1
 2bf:	e8 4c 05 00 00       	call   810 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 cd 0b 00 00       	push   $0xbcd
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 38 0b 00 00       	push   $0xb38
 2d8:	68 42 0b 00 00       	push   $0xb42
 2dd:	6a 01                	push   $0x1
 2df:	e8 2c 05 00 00       	call   810 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 b7 0b 00 00       	push   $0xbb7
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 ad 03 00 00       	call   6a3 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 307:	a1 2c 10 00 00       	mov    0x102c,%eax
 30c:	01 c0                	add    %eax,%eax
 30e:	50                   	push   %eax
 30f:	e8 2c 07 00 00       	call   a40 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 314:	8b 0d 2c 10 00 00    	mov    0x102c,%ecx
 31a:	31 d2                	xor    %edx,%edx
 31c:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 31f:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 321:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 323:	89 c8                	mov    %ecx,%eax
 325:	01 d9                	add    %ebx,%ecx
 327:	29 d0                	sub    %edx,%eax
 329:	01 d8                	add    %ebx,%eax
 32b:	85 d2                	test   %edx,%edx
 32d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 330:	31 d2                	xor    %edx,%edx
 332:	eb 0c                	jmp    340 <thread_create+0x40>
 334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 338:	83 c2 01             	add    $0x1,%edx
 33b:	83 fa 40             	cmp    $0x40,%edx
 33e:	74 2f                	je     36f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 340:	8b 04 95 60 12 00 00 	mov    0x1260(,%edx,4),%eax
 347:	85 c0                	test   %eax,%eax
 349:	75 ed                	jne    338 <thread_create+0x38>
 34b:	8b 04 95 60 10 00 00 	mov    0x1060(,%edx,4),%eax
 352:	85 c0                	test   %eax,%eax
 354:	75 e2                	jne    338 <thread_create+0x38>
      inUse[i] = 1;
 356:	c7 04 95 60 10 00 00 	movl   $0x1,0x1060(,%edx,4)
 35d:	01 00 00 00 
      malloc_addrs[i] = original;
 361:	89 1c 95 60 11 00 00 	mov    %ebx,0x1160(,%edx,4)
      stack_addrs[i] = stack;
 368:	89 0c 95 60 12 00 00 	mov    %ecx,0x1260(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 36f:	51                   	push   %ecx
 370:	ff 75 10             	push   0x10(%ebp)
 373:	ff 75 0c             	push   0xc(%ebp)
 376:	ff 75 08             	push   0x8(%ebp)
 379:	e8 c5 03 00 00       	call   743 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 37e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 381:	c9                   	leave  
 382:	c3                   	ret    
 383:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000390 <thread_join>:

int 
thread_join()
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 394:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 396:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 399:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 39c:	50                   	push   %eax
 39d:	e8 a9 03 00 00       	call   74b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 3a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3a5:	83 c4 10             	add    $0x10,%esp
 3a8:	eb 0e                	jmp    3b8 <thread_join+0x28>
 3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 3b0:	83 c3 01             	add    $0x1,%ebx
 3b3:	83 fb 40             	cmp    $0x40,%ebx
 3b6:	74 4c                	je     404 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 3b8:	83 3c 9d 60 10 00 00 	cmpl   $0x1,0x1060(,%ebx,4)
 3bf:	01 
 3c0:	75 ee                	jne    3b0 <thread_join+0x20>
 3c2:	39 14 9d 60 12 00 00 	cmp    %edx,0x1260(,%ebx,4)
 3c9:	75 e5                	jne    3b0 <thread_join+0x20>
      free(malloc_addrs[i]);
 3cb:	83 ec 0c             	sub    $0xc,%esp
 3ce:	ff 34 9d 60 11 00 00 	push   0x1160(,%ebx,4)
 3d5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3d8:	e8 d3 05 00 00       	call   9b0 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 3dd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 3e0:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 3e3:	c7 04 9d 60 11 00 00 	movl   $0x0,0x1160(,%ebx,4)
 3ea:	00 00 00 00 
      stack_addrs[i] = 0;
 3ee:	c7 04 9d 60 12 00 00 	movl   $0x0,0x1260(,%ebx,4)
 3f5:	00 00 00 00 
      inUse[i] = 0;
 3f9:	c7 04 9d 60 10 00 00 	movl   $0x0,0x1060(,%ebx,4)
 400:	00 00 00 00 
    }
  }
  return threadId; 
}
 404:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 407:	c9                   	leave  
 408:	c3                   	ret    
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000410 <lock_init>:

void lock_init(lock_t *lock){
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 413:	8b 45 08             	mov    0x8(%ebp),%eax
 416:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 41c:	5d                   	pop    %ebp
 41d:	c3                   	ret    
 41e:	66 90                	xchg   %ax,%ax

00000420 <lock_acquire>:

void lock_acquire(lock_t *lock){
 420:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 421:	b9 01 00 00 00       	mov    $0x1,%ecx
 426:	89 e5                	mov    %esp,%ebp
 428:	8b 55 08             	mov    0x8(%ebp),%edx
 42b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop
 430:	89 c8                	mov    %ecx,%eax
 432:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 435:	85 c0                	test   %eax,%eax
 437:	75 f7                	jne    430 <lock_acquire+0x10>
}
 439:	5d                   	pop    %ebp
 43a:	c3                   	ret    
 43b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <lock_release>:

void lock_release(lock_t *lock){
 440:	55                   	push   %ebp
 441:	31 c0                	xor    %eax,%eax
 443:	89 e5                	mov    %esp,%ebp
 445:	8b 55 08             	mov    0x8(%ebp),%edx
 448:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 44b:	5d                   	pop    %ebp
 44c:	c3                   	ret    
 44d:	8d 76 00             	lea    0x0(%esi),%esi

00000450 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 450:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 451:	31 c0                	xor    %eax,%eax
{
 453:	89 e5                	mov    %esp,%ebp
 455:	53                   	push   %ebx
 456:	8b 4d 08             	mov    0x8(%ebp),%ecx
 459:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 460:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 464:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 467:	83 c0 01             	add    $0x1,%eax
 46a:	84 d2                	test   %dl,%dl
 46c:	75 f2                	jne    460 <strcpy+0x10>
    ;
  return os;
}
 46e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 471:	89 c8                	mov    %ecx,%eax
 473:	c9                   	leave  
 474:	c3                   	ret    
 475:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000480 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	53                   	push   %ebx
 484:	8b 55 08             	mov    0x8(%ebp),%edx
 487:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 48a:	0f b6 02             	movzbl (%edx),%eax
 48d:	84 c0                	test   %al,%al
 48f:	75 17                	jne    4a8 <strcmp+0x28>
 491:	eb 3a                	jmp    4cd <strcmp+0x4d>
 493:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 497:	90                   	nop
 498:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 49c:	83 c2 01             	add    $0x1,%edx
 49f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 4a2:	84 c0                	test   %al,%al
 4a4:	74 1a                	je     4c0 <strcmp+0x40>
    p++, q++;
 4a6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 4a8:	0f b6 19             	movzbl (%ecx),%ebx
 4ab:	38 c3                	cmp    %al,%bl
 4ad:	74 e9                	je     498 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 4af:	29 d8                	sub    %ebx,%eax
}
 4b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4b4:	c9                   	leave  
 4b5:	c3                   	ret    
 4b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 4c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 4c4:	31 c0                	xor    %eax,%eax
 4c6:	29 d8                	sub    %ebx,%eax
}
 4c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4cb:	c9                   	leave  
 4cc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 4cd:	0f b6 19             	movzbl (%ecx),%ebx
 4d0:	31 c0                	xor    %eax,%eax
 4d2:	eb db                	jmp    4af <strcmp+0x2f>
 4d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <strlen>:

uint
strlen(const char *s)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 4e6:	80 3a 00             	cmpb   $0x0,(%edx)
 4e9:	74 15                	je     500 <strlen+0x20>
 4eb:	31 c0                	xor    %eax,%eax
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
 4f0:	83 c0 01             	add    $0x1,%eax
 4f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 4f7:	89 c1                	mov    %eax,%ecx
 4f9:	75 f5                	jne    4f0 <strlen+0x10>
    ;
  return n;
}
 4fb:	89 c8                	mov    %ecx,%eax
 4fd:	5d                   	pop    %ebp
 4fe:	c3                   	ret    
 4ff:	90                   	nop
  for(n = 0; s[n]; n++)
 500:	31 c9                	xor    %ecx,%ecx
}
 502:	5d                   	pop    %ebp
 503:	89 c8                	mov    %ecx,%eax
 505:	c3                   	ret    
 506:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50d:	8d 76 00             	lea    0x0(%esi),%esi

00000510 <memset>:

void*
memset(void *dst, int c, uint n)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	57                   	push   %edi
 514:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 517:	8b 4d 10             	mov    0x10(%ebp),%ecx
 51a:	8b 45 0c             	mov    0xc(%ebp),%eax
 51d:	89 d7                	mov    %edx,%edi
 51f:	fc                   	cld    
 520:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 522:	8b 7d fc             	mov    -0x4(%ebp),%edi
 525:	89 d0                	mov    %edx,%eax
 527:	c9                   	leave  
 528:	c3                   	ret    
 529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000530 <strchr>:

char*
strchr(const char *s, char c)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	8b 45 08             	mov    0x8(%ebp),%eax
 536:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 53a:	0f b6 10             	movzbl (%eax),%edx
 53d:	84 d2                	test   %dl,%dl
 53f:	75 12                	jne    553 <strchr+0x23>
 541:	eb 1d                	jmp    560 <strchr+0x30>
 543:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 547:	90                   	nop
 548:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 54c:	83 c0 01             	add    $0x1,%eax
 54f:	84 d2                	test   %dl,%dl
 551:	74 0d                	je     560 <strchr+0x30>
    if(*s == c)
 553:	38 d1                	cmp    %dl,%cl
 555:	75 f1                	jne    548 <strchr+0x18>
      return (char*)s;
  return 0;
}
 557:	5d                   	pop    %ebp
 558:	c3                   	ret    
 559:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 560:	31 c0                	xor    %eax,%eax
}
 562:	5d                   	pop    %ebp
 563:	c3                   	ret    
 564:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <gets>:

char*
gets(char *buf, int max)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 575:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 578:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 579:	31 db                	xor    %ebx,%ebx
{
 57b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 57e:	eb 27                	jmp    5a7 <gets+0x37>
    cc = read(0, &c, 1);
 580:	83 ec 04             	sub    $0x4,%esp
 583:	6a 01                	push   $0x1
 585:	57                   	push   %edi
 586:	6a 00                	push   $0x0
 588:	e8 2e 01 00 00       	call   6bb <read>
    if(cc < 1)
 58d:	83 c4 10             	add    $0x10,%esp
 590:	85 c0                	test   %eax,%eax
 592:	7e 1d                	jle    5b1 <gets+0x41>
      break;
    buf[i++] = c;
 594:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 598:	8b 55 08             	mov    0x8(%ebp),%edx
 59b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 59f:	3c 0a                	cmp    $0xa,%al
 5a1:	74 1d                	je     5c0 <gets+0x50>
 5a3:	3c 0d                	cmp    $0xd,%al
 5a5:	74 19                	je     5c0 <gets+0x50>
  for(i=0; i+1 < max; ){
 5a7:	89 de                	mov    %ebx,%esi
 5a9:	83 c3 01             	add    $0x1,%ebx
 5ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5af:	7c cf                	jl     580 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 5b1:	8b 45 08             	mov    0x8(%ebp),%eax
 5b4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5bb:	5b                   	pop    %ebx
 5bc:	5e                   	pop    %esi
 5bd:	5f                   	pop    %edi
 5be:	5d                   	pop    %ebp
 5bf:	c3                   	ret    
  buf[i] = '\0';
 5c0:	8b 45 08             	mov    0x8(%ebp),%eax
 5c3:	89 de                	mov    %ebx,%esi
 5c5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 5c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5cc:	5b                   	pop    %ebx
 5cd:	5e                   	pop    %esi
 5ce:	5f                   	pop    %edi
 5cf:	5d                   	pop    %ebp
 5d0:	c3                   	ret    
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <stat>:

int
stat(const char *n, struct stat *st)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	56                   	push   %esi
 5e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5e5:	83 ec 08             	sub    $0x8,%esp
 5e8:	6a 00                	push   $0x0
 5ea:	ff 75 08             	push   0x8(%ebp)
 5ed:	e8 f1 00 00 00       	call   6e3 <open>
  if(fd < 0)
 5f2:	83 c4 10             	add    $0x10,%esp
 5f5:	85 c0                	test   %eax,%eax
 5f7:	78 27                	js     620 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 5f9:	83 ec 08             	sub    $0x8,%esp
 5fc:	ff 75 0c             	push   0xc(%ebp)
 5ff:	89 c3                	mov    %eax,%ebx
 601:	50                   	push   %eax
 602:	e8 f4 00 00 00       	call   6fb <fstat>
  close(fd);
 607:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 60a:	89 c6                	mov    %eax,%esi
  close(fd);
 60c:	e8 ba 00 00 00       	call   6cb <close>
  return r;
 611:	83 c4 10             	add    $0x10,%esp
}
 614:	8d 65 f8             	lea    -0x8(%ebp),%esp
 617:	89 f0                	mov    %esi,%eax
 619:	5b                   	pop    %ebx
 61a:	5e                   	pop    %esi
 61b:	5d                   	pop    %ebp
 61c:	c3                   	ret    
 61d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 620:	be ff ff ff ff       	mov    $0xffffffff,%esi
 625:	eb ed                	jmp    614 <stat+0x34>
 627:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62e:	66 90                	xchg   %ax,%ax

00000630 <atoi>:

int
atoi(const char *s)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	53                   	push   %ebx
 634:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 637:	0f be 02             	movsbl (%edx),%eax
 63a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 63d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 640:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 645:	77 1e                	ja     665 <atoi+0x35>
 647:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 650:	83 c2 01             	add    $0x1,%edx
 653:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 656:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 65a:	0f be 02             	movsbl (%edx),%eax
 65d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 660:	80 fb 09             	cmp    $0x9,%bl
 663:	76 eb                	jbe    650 <atoi+0x20>
  return n;
}
 665:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 668:	89 c8                	mov    %ecx,%eax
 66a:	c9                   	leave  
 66b:	c3                   	ret    
 66c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000670 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	8b 45 10             	mov    0x10(%ebp),%eax
 677:	8b 55 08             	mov    0x8(%ebp),%edx
 67a:	56                   	push   %esi
 67b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 67e:	85 c0                	test   %eax,%eax
 680:	7e 13                	jle    695 <memmove+0x25>
 682:	01 d0                	add    %edx,%eax
  dst = vdst;
 684:	89 d7                	mov    %edx,%edi
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 690:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 691:	39 f8                	cmp    %edi,%eax
 693:	75 fb                	jne    690 <memmove+0x20>
  return vdst;
}
 695:	5e                   	pop    %esi
 696:	89 d0                	mov    %edx,%eax
 698:	5f                   	pop    %edi
 699:	5d                   	pop    %ebp
 69a:	c3                   	ret    

0000069b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 69b:	b8 01 00 00 00       	mov    $0x1,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <exit>:
SYSCALL(exit)
 6a3:	b8 02 00 00 00       	mov    $0x2,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <wait>:
SYSCALL(wait)
 6ab:	b8 03 00 00 00       	mov    $0x3,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <pipe>:
SYSCALL(pipe)
 6b3:	b8 04 00 00 00       	mov    $0x4,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <read>:
SYSCALL(read)
 6bb:	b8 05 00 00 00       	mov    $0x5,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <write>:
SYSCALL(write)
 6c3:	b8 10 00 00 00       	mov    $0x10,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <close>:
SYSCALL(close)
 6cb:	b8 15 00 00 00       	mov    $0x15,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <kill>:
SYSCALL(kill)
 6d3:	b8 06 00 00 00       	mov    $0x6,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <exec>:
SYSCALL(exec)
 6db:	b8 07 00 00 00       	mov    $0x7,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <open>:
SYSCALL(open)
 6e3:	b8 0f 00 00 00       	mov    $0xf,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <mknod>:
SYSCALL(mknod)
 6eb:	b8 11 00 00 00       	mov    $0x11,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <unlink>:
SYSCALL(unlink)
 6f3:	b8 12 00 00 00       	mov    $0x12,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <fstat>:
SYSCALL(fstat)
 6fb:	b8 08 00 00 00       	mov    $0x8,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <link>:
SYSCALL(link)
 703:	b8 13 00 00 00       	mov    $0x13,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <mkdir>:
SYSCALL(mkdir)
 70b:	b8 14 00 00 00       	mov    $0x14,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <chdir>:
SYSCALL(chdir)
 713:	b8 09 00 00 00       	mov    $0x9,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <dup>:
SYSCALL(dup)
 71b:	b8 0a 00 00 00       	mov    $0xa,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <getpid>:
SYSCALL(getpid)
 723:	b8 0b 00 00 00       	mov    $0xb,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <sbrk>:
SYSCALL(sbrk)
 72b:	b8 0c 00 00 00       	mov    $0xc,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <sleep>:
SYSCALL(sleep)
 733:	b8 0d 00 00 00       	mov    $0xd,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <uptime>:
SYSCALL(uptime)
 73b:	b8 0e 00 00 00       	mov    $0xe,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <clone>:
SYSCALL(clone)
 743:	b8 16 00 00 00       	mov    $0x16,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <join>:
SYSCALL(join)
 74b:	b8 17 00 00 00       	mov    $0x17,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    
 753:	66 90                	xchg   %ax,%ax
 755:	66 90                	xchg   %ax,%ax
 757:	66 90                	xchg   %ax,%ax
 759:	66 90                	xchg   %ax,%ax
 75b:	66 90                	xchg   %ax,%ax
 75d:	66 90                	xchg   %ax,%ax
 75f:	90                   	nop

00000760 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 3c             	sub    $0x3c,%esp
 769:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 76c:	89 d1                	mov    %edx,%ecx
{
 76e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 771:	85 d2                	test   %edx,%edx
 773:	0f 89 7f 00 00 00    	jns    7f8 <printint+0x98>
 779:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 77d:	74 79                	je     7f8 <printint+0x98>
    neg = 1;
 77f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 786:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 788:	31 db                	xor    %ebx,%ebx
 78a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 790:	89 c8                	mov    %ecx,%eax
 792:	31 d2                	xor    %edx,%edx
 794:	89 cf                	mov    %ecx,%edi
 796:	f7 75 c4             	divl   -0x3c(%ebp)
 799:	0f b6 92 94 0c 00 00 	movzbl 0xc94(%edx),%edx
 7a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7a3:	89 d8                	mov    %ebx,%eax
 7a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7b1:	76 dd                	jbe    790 <printint+0x30>
  if(neg)
 7b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7b6:	85 c9                	test   %ecx,%ecx
 7b8:	74 0c                	je     7c6 <printint+0x66>
    buf[i++] = '-';
 7ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7cd:	eb 07                	jmp    7d6 <printint+0x76>
 7cf:	90                   	nop
    putc(fd, buf[i]);
 7d0:	0f b6 13             	movzbl (%ebx),%edx
 7d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7d6:	83 ec 04             	sub    $0x4,%esp
 7d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7dc:	6a 01                	push   $0x1
 7de:	56                   	push   %esi
 7df:	57                   	push   %edi
 7e0:	e8 de fe ff ff       	call   6c3 <write>
  while(--i >= 0)
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	39 de                	cmp    %ebx,%esi
 7ea:	75 e4                	jne    7d0 <printint+0x70>
}
 7ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ef:	5b                   	pop    %ebx
 7f0:	5e                   	pop    %esi
 7f1:	5f                   	pop    %edi
 7f2:	5d                   	pop    %ebp
 7f3:	c3                   	ret    
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ff:	eb 87                	jmp    788 <printint+0x28>
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop

00000810 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
 816:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 819:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 81c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 81f:	0f b6 13             	movzbl (%ebx),%edx
 822:	84 d2                	test   %dl,%dl
 824:	74 6a                	je     890 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 826:	8d 45 10             	lea    0x10(%ebp),%eax
 829:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 82c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 82f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 831:	89 45 d0             	mov    %eax,-0x30(%ebp)
 834:	eb 36                	jmp    86c <printf+0x5c>
 836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83d:	8d 76 00             	lea    0x0(%esi),%esi
 840:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 843:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 848:	83 f8 25             	cmp    $0x25,%eax
 84b:	74 15                	je     862 <printf+0x52>
  write(fd, &c, 1);
 84d:	83 ec 04             	sub    $0x4,%esp
 850:	88 55 e7             	mov    %dl,-0x19(%ebp)
 853:	6a 01                	push   $0x1
 855:	57                   	push   %edi
 856:	56                   	push   %esi
 857:	e8 67 fe ff ff       	call   6c3 <write>
 85c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 85f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 862:	0f b6 13             	movzbl (%ebx),%edx
 865:	83 c3 01             	add    $0x1,%ebx
 868:	84 d2                	test   %dl,%dl
 86a:	74 24                	je     890 <printf+0x80>
    c = fmt[i] & 0xff;
 86c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 86f:	85 c9                	test   %ecx,%ecx
 871:	74 cd                	je     840 <printf+0x30>
      }
    } else if(state == '%'){
 873:	83 f9 25             	cmp    $0x25,%ecx
 876:	75 ea                	jne    862 <printf+0x52>
      if(c == 'd'){
 878:	83 f8 25             	cmp    $0x25,%eax
 87b:	0f 84 07 01 00 00    	je     988 <printf+0x178>
 881:	83 e8 63             	sub    $0x63,%eax
 884:	83 f8 15             	cmp    $0x15,%eax
 887:	77 17                	ja     8a0 <printf+0x90>
 889:	ff 24 85 3c 0c 00 00 	jmp    *0xc3c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 890:	8d 65 f4             	lea    -0xc(%ebp),%esp
 893:	5b                   	pop    %ebx
 894:	5e                   	pop    %esi
 895:	5f                   	pop    %edi
 896:	5d                   	pop    %ebp
 897:	c3                   	ret    
 898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8a6:	6a 01                	push   $0x1
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ae:	e8 10 fe ff ff       	call   6c3 <write>
        putc(fd, c);
 8b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8b7:	83 c4 0c             	add    $0xc,%esp
 8ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8bd:	6a 01                	push   $0x1
 8bf:	57                   	push   %edi
 8c0:	56                   	push   %esi
 8c1:	e8 fd fd ff ff       	call   6c3 <write>
        putc(fd, c);
 8c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8c9:	31 c9                	xor    %ecx,%ecx
 8cb:	eb 95                	jmp    862 <printf+0x52>
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8d8:	6a 00                	push   $0x0
 8da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8dd:	8b 10                	mov    (%eax),%edx
 8df:	89 f0                	mov    %esi,%eax
 8e1:	e8 7a fe ff ff       	call   760 <printint>
        ap++;
 8e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ed:	31 c9                	xor    %ecx,%ecx
 8ef:	e9 6e ff ff ff       	jmp    862 <printf+0x52>
 8f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fb:	8b 10                	mov    (%eax),%edx
        ap++;
 8fd:	83 c0 04             	add    $0x4,%eax
 900:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 903:	85 d2                	test   %edx,%edx
 905:	0f 84 8d 00 00 00    	je     998 <printf+0x188>
        while(*s != 0){
 90b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 90e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 910:	84 c0                	test   %al,%al
 912:	0f 84 4a ff ff ff    	je     862 <printf+0x52>
 918:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 91b:	89 d3                	mov    %edx,%ebx
 91d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 920:	83 ec 04             	sub    $0x4,%esp
          s++;
 923:	83 c3 01             	add    $0x1,%ebx
 926:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 929:	6a 01                	push   $0x1
 92b:	57                   	push   %edi
 92c:	56                   	push   %esi
 92d:	e8 91 fd ff ff       	call   6c3 <write>
        while(*s != 0){
 932:	0f b6 03             	movzbl (%ebx),%eax
 935:	83 c4 10             	add    $0x10,%esp
 938:	84 c0                	test   %al,%al
 93a:	75 e4                	jne    920 <printf+0x110>
      state = 0;
 93c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 93f:	31 c9                	xor    %ecx,%ecx
 941:	e9 1c ff ff ff       	jmp    862 <printf+0x52>
 946:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 94d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 950:	83 ec 0c             	sub    $0xc,%esp
 953:	b9 0a 00 00 00       	mov    $0xa,%ecx
 958:	6a 01                	push   $0x1
 95a:	e9 7b ff ff ff       	jmp    8da <printf+0xca>
 95f:	90                   	nop
        putc(fd, *ap);
 960:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 963:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 966:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 968:	6a 01                	push   $0x1
 96a:	57                   	push   %edi
 96b:	56                   	push   %esi
        putc(fd, *ap);
 96c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 96f:	e8 4f fd ff ff       	call   6c3 <write>
        ap++;
 974:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 978:	83 c4 10             	add    $0x10,%esp
      state = 0;
 97b:	31 c9                	xor    %ecx,%ecx
 97d:	e9 e0 fe ff ff       	jmp    862 <printf+0x52>
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 988:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 98b:	83 ec 04             	sub    $0x4,%esp
 98e:	e9 2a ff ff ff       	jmp    8bd <printf+0xad>
 993:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 997:	90                   	nop
          s = "(null)";
 998:	ba 35 0c 00 00       	mov    $0xc35,%edx
        while(*s != 0){
 99d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9a0:	b8 28 00 00 00       	mov    $0x28,%eax
 9a5:	89 d3                	mov    %edx,%ebx
 9a7:	e9 74 ff ff ff       	jmp    920 <printf+0x110>
 9ac:	66 90                	xchg   %ax,%ax
 9ae:	66 90                	xchg   %ax,%ax

000009b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	a1 60 13 00 00       	mov    0x1360,%eax
{
 9b6:	89 e5                	mov    %esp,%ebp
 9b8:	57                   	push   %edi
 9b9:	56                   	push   %esi
 9ba:	53                   	push   %ebx
 9bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9c8:	89 c2                	mov    %eax,%edx
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	39 ca                	cmp    %ecx,%edx
 9ce:	73 30                	jae    a00 <free+0x50>
 9d0:	39 c1                	cmp    %eax,%ecx
 9d2:	72 04                	jb     9d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d4:	39 c2                	cmp    %eax,%edx
 9d6:	72 f0                	jb     9c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9de:	39 f8                	cmp    %edi,%eax
 9e0:	74 30                	je     a12 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9e5:	8b 42 04             	mov    0x4(%edx),%eax
 9e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9eb:	39 f1                	cmp    %esi,%ecx
 9ed:	74 3a                	je     a29 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9f1:	5b                   	pop    %ebx
  freep = p;
 9f2:	89 15 60 13 00 00    	mov    %edx,0x1360
}
 9f8:	5e                   	pop    %esi
 9f9:	5f                   	pop    %edi
 9fa:	5d                   	pop    %ebp
 9fb:	c3                   	ret    
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a00:	39 c2                	cmp    %eax,%edx
 a02:	72 c4                	jb     9c8 <free+0x18>
 a04:	39 c1                	cmp    %eax,%ecx
 a06:	73 c0                	jae    9c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a08:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a0b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a0e:	39 f8                	cmp    %edi,%eax
 a10:	75 d0                	jne    9e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a12:	03 70 04             	add    0x4(%eax),%esi
 a15:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a18:	8b 02                	mov    (%edx),%eax
 a1a:	8b 00                	mov    (%eax),%eax
 a1c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a1f:	8b 42 04             	mov    0x4(%edx),%eax
 a22:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a25:	39 f1                	cmp    %esi,%ecx
 a27:	75 c6                	jne    9ef <free+0x3f>
    p->s.size += bp->s.size;
 a29:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a2c:	89 15 60 13 00 00    	mov    %edx,0x1360
    p->s.size += bp->s.size;
 a32:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a35:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a38:	89 0a                	mov    %ecx,(%edx)
}
 a3a:	5b                   	pop    %ebx
 a3b:	5e                   	pop    %esi
 a3c:	5f                   	pop    %edi
 a3d:	5d                   	pop    %ebp
 a3e:	c3                   	ret    
 a3f:	90                   	nop

00000a40 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a40:	55                   	push   %ebp
 a41:	89 e5                	mov    %esp,%ebp
 a43:	57                   	push   %edi
 a44:	56                   	push   %esi
 a45:	53                   	push   %ebx
 a46:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a49:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a4c:	8b 3d 60 13 00 00    	mov    0x1360,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a52:	8d 70 07             	lea    0x7(%eax),%esi
 a55:	c1 ee 03             	shr    $0x3,%esi
 a58:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a5b:	85 ff                	test   %edi,%edi
 a5d:	0f 84 9d 00 00 00    	je     b00 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a63:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a65:	8b 4a 04             	mov    0x4(%edx),%ecx
 a68:	39 f1                	cmp    %esi,%ecx
 a6a:	73 6a                	jae    ad6 <malloc+0x96>
 a6c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a71:	39 de                	cmp    %ebx,%esi
 a73:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a76:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a80:	eb 17                	jmp    a99 <malloc+0x59>
 a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a88:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a8a:	8b 48 04             	mov    0x4(%eax),%ecx
 a8d:	39 f1                	cmp    %esi,%ecx
 a8f:	73 4f                	jae    ae0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a91:	8b 3d 60 13 00 00    	mov    0x1360,%edi
 a97:	89 c2                	mov    %eax,%edx
 a99:	39 d7                	cmp    %edx,%edi
 a9b:	75 eb                	jne    a88 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a9d:	83 ec 0c             	sub    $0xc,%esp
 aa0:	ff 75 e4             	push   -0x1c(%ebp)
 aa3:	e8 83 fc ff ff       	call   72b <sbrk>
  if(p == (char*)-1)
 aa8:	83 c4 10             	add    $0x10,%esp
 aab:	83 f8 ff             	cmp    $0xffffffff,%eax
 aae:	74 1c                	je     acc <malloc+0x8c>
  hp->s.size = nu;
 ab0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ab3:	83 ec 0c             	sub    $0xc,%esp
 ab6:	83 c0 08             	add    $0x8,%eax
 ab9:	50                   	push   %eax
 aba:	e8 f1 fe ff ff       	call   9b0 <free>
  return freep;
 abf:	8b 15 60 13 00 00    	mov    0x1360,%edx
      if((p = morecore(nunits)) == 0)
 ac5:	83 c4 10             	add    $0x10,%esp
 ac8:	85 d2                	test   %edx,%edx
 aca:	75 bc                	jne    a88 <malloc+0x48>
        return 0;
  }
}
 acc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 acf:	31 c0                	xor    %eax,%eax
}
 ad1:	5b                   	pop    %ebx
 ad2:	5e                   	pop    %esi
 ad3:	5f                   	pop    %edi
 ad4:	5d                   	pop    %ebp
 ad5:	c3                   	ret    
    if(p->s.size >= nunits){
 ad6:	89 d0                	mov    %edx,%eax
 ad8:	89 fa                	mov    %edi,%edx
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ae0:	39 ce                	cmp    %ecx,%esi
 ae2:	74 4c                	je     b30 <malloc+0xf0>
        p->s.size -= nunits;
 ae4:	29 f1                	sub    %esi,%ecx
 ae6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ae9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aef:	89 15 60 13 00 00    	mov    %edx,0x1360
}
 af5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 af8:	83 c0 08             	add    $0x8,%eax
}
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b00:	c7 05 60 13 00 00 64 	movl   $0x1364,0x1360
 b07:	13 00 00 
    base.s.size = 0;
 b0a:	bf 64 13 00 00       	mov    $0x1364,%edi
    base.s.ptr = freep = prevp = &base;
 b0f:	c7 05 64 13 00 00 64 	movl   $0x1364,0x1364
 b16:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b19:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b1b:	c7 05 68 13 00 00 00 	movl   $0x0,0x1368
 b22:	00 00 00 
    if(p->s.size >= nunits){
 b25:	e9 42 ff ff ff       	jmp    a6c <malloc+0x2c>
 b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b30:	8b 08                	mov    (%eax),%ecx
 b32:	89 0a                	mov    %ecx,(%edx)
 b34:	eb b9                	jmp    aef <malloc+0xaf>
