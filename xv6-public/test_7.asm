
_test_7:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   exit(); \
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 cd 04 00 00       	call   4e3 <getpid>
  16:	a3 40 0d 00 00       	mov    %eax,0xd40

   int fork_pid = fork();
  1b:	e8 3b 04 00 00       	call   45b <fork>
   if(fork_pid == 0) {
  20:	85 c0                	test   %eax,%eax
  22:	74 79                	je     9d <main+0x9d>
     exit();
   }
   assert(fork_pid > 0);
  24:	7e 5a                	jle    80 <main+0x80>

   void *join_stack;
   int join_pid = join(&join_stack);
  26:	83 ec 0c             	sub    $0xc,%esp
  29:	8d 45 f4             	lea    -0xc(%ebp),%eax
  2c:	50                   	push   %eax
  2d:	e8 d9 04 00 00       	call   50b <join>
   assert(join_pid == -1);
  32:	83 c4 10             	add    $0x10,%esp
  35:	83 c0 01             	add    $0x1,%eax
  38:	74 68                	je     a2 <main+0xa2>
  3a:	6a 22                	push   $0x22
  3c:	68 f8 08 00 00       	push   $0x8f8
  41:	68 01 09 00 00       	push   $0x901
  46:	6a 01                	push   $0x1
  48:	e8 83 05 00 00       	call   5d0 <printf>
  4d:	83 c4 0c             	add    $0xc,%esp
  50:	68 37 09 00 00       	push   $0x937
  55:	68 16 09 00 00       	push   $0x916
  5a:	6a 01                	push   $0x1
  5c:	e8 6f 05 00 00       	call   5d0 <printf>
  61:	5a                   	pop    %edx
  62:	59                   	pop    %ecx
  63:	68 2a 09 00 00       	push   $0x92a
  68:	6a 01                	push   $0x1
  6a:	e8 61 05 00 00       	call   5d0 <printf>
  6f:	58                   	pop    %eax
  70:	ff 35 40 0d 00 00    	push   0xd40
  76:	e8 18 04 00 00       	call   493 <kill>
  7b:	e8 e3 03 00 00       	call   463 <exit>
   assert(fork_pid > 0);
  80:	6a 1e                	push   $0x1e
  82:	68 f8 08 00 00       	push   $0x8f8
  87:	68 01 09 00 00       	push   $0x901
  8c:	6a 01                	push   $0x1
  8e:	e8 3d 05 00 00       	call   5d0 <printf>
  93:	83 c4 0c             	add    $0xc,%esp
  96:	68 09 09 00 00       	push   $0x909
  9b:	eb b8                	jmp    55 <main+0x55>
     exit();
  9d:	e8 c1 03 00 00       	call   463 <exit>

   assert(wait() > 0);
  a2:	e8 c4 03 00 00       	call   46b <wait>
  a7:	85 c0                	test   %eax,%eax
  a9:	7e 13                	jle    be <main+0xbe>
   printf(1, "TEST PASSED\n");
  ab:	50                   	push   %eax
  ac:	50                   	push   %eax
  ad:	68 51 09 00 00       	push   $0x951
  b2:	6a 01                	push   $0x1
  b4:	e8 17 05 00 00       	call   5d0 <printf>
   exit();
  b9:	e8 a5 03 00 00       	call   463 <exit>
   assert(wait() > 0);
  be:	6a 24                	push   $0x24
  c0:	68 f8 08 00 00       	push   $0x8f8
  c5:	68 01 09 00 00       	push   $0x901
  ca:	6a 01                	push   $0x1
  cc:	e8 ff 04 00 00       	call   5d0 <printf>
  d1:	83 c4 0c             	add    $0xc,%esp
  d4:	68 46 09 00 00       	push   $0x946
  d9:	e9 77 ff ff ff       	jmp    55 <main+0x55>
  de:	66 90                	xchg   %ax,%ax

000000e0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	56                   	push   %esi
  e4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
  e5:	31 db                	xor    %ebx,%ebx
  e7:	eb 0f                	jmp    f8 <thread_create+0x18>
  e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	83 fb 40             	cmp    $0x40,%ebx
  f6:	74 60                	je     158 <thread_create+0x78>
    if (inUse[i] == 0){
  f8:	8b 04 9d 60 0d 00 00 	mov    0xd60(,%ebx,4),%eax
  ff:	85 c0                	test   %eax,%eax
 101:	75 ed                	jne    f0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 103:	a1 28 0d 00 00       	mov    0xd28,%eax
 108:	83 ec 0c             	sub    $0xc,%esp
 10b:	01 c0                	add    %eax,%eax
 10d:	50                   	push   %eax
 10e:	e8 ed 06 00 00       	call   800 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 113:	8b 35 28 0d 00 00    	mov    0xd28,%esi
 119:	83 c4 10             	add    $0x10,%esp
 11c:	99                   	cltd   
      malloc_addrs[i] = stack;
 11d:	89 04 9d 60 0e 00 00 	mov    %eax,0xe60(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 124:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 126:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 128:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 12b:	29 d6                	sub    %edx,%esi
 12d:	01 f1                	add    %esi,%ecx
 12f:	85 d2                	test   %edx,%edx
 131:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 134:	51                   	push   %ecx
 135:	ff 75 10             	push   0x10(%ebp)
 138:	ff 75 0c             	push   0xc(%ebp)
 13b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 13e:	89 0c 9d 60 0f 00 00 	mov    %ecx,0xf60(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 145:	e8 b9 03 00 00       	call   503 <clone>
 14a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 14d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 150:	5b                   	pop    %ebx
 151:	5e                   	pop    %esi
 152:	5d                   	pop    %ebp
 153:	c3                   	ret    
 154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 158:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 15b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 16f:	90                   	nop

00000170 <thread_join>:

int 
thread_join()
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	56                   	push   %esi
 174:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 175:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 178:	31 db                	xor    %ebx,%ebx
{
 17a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 17d:	50                   	push   %eax
 17e:	e8 88 03 00 00       	call   50b <join>
 183:	83 c4 10             	add    $0x10,%esp
 186:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 188:	eb 0e                	jmp    198 <thread_join+0x28>
 18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 190:	83 c3 01             	add    $0x1,%ebx
 193:	83 fb 40             	cmp    $0x40,%ebx
 196:	74 27                	je     1bf <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 198:	83 3c 9d 60 0d 00 00 	cmpl   $0x1,0xd60(,%ebx,4)
 19f:	01 
 1a0:	75 ee                	jne    190 <thread_join+0x20>
      free(malloc_addrs[i]);
 1a2:	83 ec 0c             	sub    $0xc,%esp
 1a5:	ff 34 9d 60 0e 00 00 	push   0xe60(,%ebx,4)
 1ac:	e8 bf 05 00 00       	call   770 <free>
      inUse[i] = 0;
      break;
 1b1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 1b4:	c7 04 9d 60 0d 00 00 	movl   $0x0,0xd60(,%ebx,4)
 1bb:	00 00 00 00 
    }
  }
  return id;
}
 1bf:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1c2:	89 f0                	mov    %esi,%eax
 1c4:	5b                   	pop    %ebx
 1c5:	5e                   	pop    %esi
 1c6:	5d                   	pop    %ebp
 1c7:	c3                   	ret    
 1c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <lock_init>:

void lock_init(lock_t *lock){
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 1d3:	8b 45 08             	mov    0x8(%ebp),%eax
 1d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 1dc:	5d                   	pop    %ebp
 1dd:	c3                   	ret    
 1de:	66 90                	xchg   %ax,%ax

000001e0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 1e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 1e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 1e6:	89 e5                	mov    %esp,%ebp
 1e8:	8b 55 08             	mov    0x8(%ebp),%edx
 1eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1ef:	90                   	nop
 1f0:	89 c8                	mov    %ecx,%eax
 1f2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 1f5:	85 c0                	test   %eax,%eax
 1f7:	75 f7                	jne    1f0 <lock_acquire+0x10>
}
 1f9:	5d                   	pop    %ebp
 1fa:	c3                   	ret    
 1fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1ff:	90                   	nop

00000200 <lock_release>:

void lock_release(lock_t *lock){
 200:	55                   	push   %ebp
 201:	31 c0                	xor    %eax,%eax
 203:	89 e5                	mov    %esp,%ebp
 205:	8b 55 08             	mov    0x8(%ebp),%edx
 208:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 20b:	5d                   	pop    %ebp
 20c:	c3                   	ret    
 20d:	8d 76 00             	lea    0x0(%esi),%esi

00000210 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 210:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 211:	31 c0                	xor    %eax,%eax
{
 213:	89 e5                	mov    %esp,%ebp
 215:	53                   	push   %ebx
 216:	8b 4d 08             	mov    0x8(%ebp),%ecx
 219:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 220:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 224:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 227:	83 c0 01             	add    $0x1,%eax
 22a:	84 d2                	test   %dl,%dl
 22c:	75 f2                	jne    220 <strcpy+0x10>
    ;
  return os;
}
 22e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 231:	89 c8                	mov    %ecx,%eax
 233:	c9                   	leave  
 234:	c3                   	ret    
 235:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000240 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
 247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 24a:	0f b6 02             	movzbl (%edx),%eax
 24d:	84 c0                	test   %al,%al
 24f:	75 17                	jne    268 <strcmp+0x28>
 251:	eb 3a                	jmp    28d <strcmp+0x4d>
 253:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 257:	90                   	nop
 258:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 25c:	83 c2 01             	add    $0x1,%edx
 25f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 262:	84 c0                	test   %al,%al
 264:	74 1a                	je     280 <strcmp+0x40>
    p++, q++;
 266:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 268:	0f b6 19             	movzbl (%ecx),%ebx
 26b:	38 c3                	cmp    %al,%bl
 26d:	74 e9                	je     258 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 26f:	29 d8                	sub    %ebx,%eax
}
 271:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 274:	c9                   	leave  
 275:	c3                   	ret    
 276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 280:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 284:	31 c0                	xor    %eax,%eax
 286:	29 d8                	sub    %ebx,%eax
}
 288:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 28b:	c9                   	leave  
 28c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 28d:	0f b6 19             	movzbl (%ecx),%ebx
 290:	31 c0                	xor    %eax,%eax
 292:	eb db                	jmp    26f <strcmp+0x2f>
 294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <strlen>:

uint
strlen(const char *s)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2a6:	80 3a 00             	cmpb   $0x0,(%edx)
 2a9:	74 15                	je     2c0 <strlen+0x20>
 2ab:	31 c0                	xor    %eax,%eax
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
 2b0:	83 c0 01             	add    $0x1,%eax
 2b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2b7:	89 c1                	mov    %eax,%ecx
 2b9:	75 f5                	jne    2b0 <strlen+0x10>
    ;
  return n;
}
 2bb:	89 c8                	mov    %ecx,%eax
 2bd:	5d                   	pop    %ebp
 2be:	c3                   	ret    
 2bf:	90                   	nop
  for(n = 0; s[n]; n++)
 2c0:	31 c9                	xor    %ecx,%ecx
}
 2c2:	5d                   	pop    %ebp
 2c3:	89 c8                	mov    %ecx,%eax
 2c5:	c3                   	ret    
 2c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cd:	8d 76 00             	lea    0x0(%esi),%esi

000002d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 2d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2da:	8b 45 0c             	mov    0xc(%ebp),%eax
 2dd:	89 d7                	mov    %edx,%edi
 2df:	fc                   	cld    
 2e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2e5:	89 d0                	mov    %edx,%eax
 2e7:	c9                   	leave  
 2e8:	c3                   	ret    
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strchr>:

char*
strchr(const char *s, char c)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2fa:	0f b6 10             	movzbl (%eax),%edx
 2fd:	84 d2                	test   %dl,%dl
 2ff:	75 12                	jne    313 <strchr+0x23>
 301:	eb 1d                	jmp    320 <strchr+0x30>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 30c:	83 c0 01             	add    $0x1,%eax
 30f:	84 d2                	test   %dl,%dl
 311:	74 0d                	je     320 <strchr+0x30>
    if(*s == c)
 313:	38 d1                	cmp    %dl,%cl
 315:	75 f1                	jne    308 <strchr+0x18>
      return (char*)s;
  return 0;
}
 317:	5d                   	pop    %ebp
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 320:	31 c0                	xor    %eax,%eax
}
 322:	5d                   	pop    %ebp
 323:	c3                   	ret    
 324:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <gets>:

char*
gets(char *buf, int max)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 335:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 338:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 339:	31 db                	xor    %ebx,%ebx
{
 33b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 33e:	eb 27                	jmp    367 <gets+0x37>
    cc = read(0, &c, 1);
 340:	83 ec 04             	sub    $0x4,%esp
 343:	6a 01                	push   $0x1
 345:	57                   	push   %edi
 346:	6a 00                	push   $0x0
 348:	e8 2e 01 00 00       	call   47b <read>
    if(cc < 1)
 34d:	83 c4 10             	add    $0x10,%esp
 350:	85 c0                	test   %eax,%eax
 352:	7e 1d                	jle    371 <gets+0x41>
      break;
    buf[i++] = c;
 354:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 358:	8b 55 08             	mov    0x8(%ebp),%edx
 35b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 35f:	3c 0a                	cmp    $0xa,%al
 361:	74 1d                	je     380 <gets+0x50>
 363:	3c 0d                	cmp    $0xd,%al
 365:	74 19                	je     380 <gets+0x50>
  for(i=0; i+1 < max; ){
 367:	89 de                	mov    %ebx,%esi
 369:	83 c3 01             	add    $0x1,%ebx
 36c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 36f:	7c cf                	jl     340 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 371:	8b 45 08             	mov    0x8(%ebp),%eax
 374:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 378:	8d 65 f4             	lea    -0xc(%ebp),%esp
 37b:	5b                   	pop    %ebx
 37c:	5e                   	pop    %esi
 37d:	5f                   	pop    %edi
 37e:	5d                   	pop    %ebp
 37f:	c3                   	ret    
  buf[i] = '\0';
 380:	8b 45 08             	mov    0x8(%ebp),%eax
 383:	89 de                	mov    %ebx,%esi
 385:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 389:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38c:	5b                   	pop    %ebx
 38d:	5e                   	pop    %esi
 38e:	5f                   	pop    %edi
 38f:	5d                   	pop    %ebp
 390:	c3                   	ret    
 391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 398:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop

000003a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	56                   	push   %esi
 3a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3a5:	83 ec 08             	sub    $0x8,%esp
 3a8:	6a 00                	push   $0x0
 3aa:	ff 75 08             	push   0x8(%ebp)
 3ad:	e8 f1 00 00 00       	call   4a3 <open>
  if(fd < 0)
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	85 c0                	test   %eax,%eax
 3b7:	78 27                	js     3e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3b9:	83 ec 08             	sub    $0x8,%esp
 3bc:	ff 75 0c             	push   0xc(%ebp)
 3bf:	89 c3                	mov    %eax,%ebx
 3c1:	50                   	push   %eax
 3c2:	e8 f4 00 00 00       	call   4bb <fstat>
  close(fd);
 3c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ca:	89 c6                	mov    %eax,%esi
  close(fd);
 3cc:	e8 ba 00 00 00       	call   48b <close>
  return r;
 3d1:	83 c4 10             	add    $0x10,%esp
}
 3d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d7:	89 f0                	mov    %esi,%eax
 3d9:	5b                   	pop    %ebx
 3da:	5e                   	pop    %esi
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3e5:	eb ed                	jmp    3d4 <stat+0x34>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax

000003f0 <atoi>:

int
atoi(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3f7:	0f be 02             	movsbl (%edx),%eax
 3fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 400:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 405:	77 1e                	ja     425 <atoi+0x35>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 410:	83 c2 01             	add    $0x1,%edx
 413:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 416:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 41a:	0f be 02             	movsbl (%edx),%eax
 41d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 420:	80 fb 09             	cmp    $0x9,%bl
 423:	76 eb                	jbe    410 <atoi+0x20>
  return n;
}
 425:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 428:	89 c8                	mov    %ecx,%eax
 42a:	c9                   	leave  
 42b:	c3                   	ret    
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 45 10             	mov    0x10(%ebp),%eax
 437:	8b 55 08             	mov    0x8(%ebp),%edx
 43a:	56                   	push   %esi
 43b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 43e:	85 c0                	test   %eax,%eax
 440:	7e 13                	jle    455 <memmove+0x25>
 442:	01 d0                	add    %edx,%eax
  dst = vdst;
 444:	89 d7                	mov    %edx,%edi
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 450:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 451:	39 f8                	cmp    %edi,%eax
 453:	75 fb                	jne    450 <memmove+0x20>
  return vdst;
}
 455:	5e                   	pop    %esi
 456:	89 d0                	mov    %edx,%eax
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    

0000045b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 45b:	b8 01 00 00 00       	mov    $0x1,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    

00000463 <exit>:
SYSCALL(exit)
 463:	b8 02 00 00 00       	mov    $0x2,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret    

0000046b <wait>:
SYSCALL(wait)
 46b:	b8 03 00 00 00       	mov    $0x3,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <pipe>:
SYSCALL(pipe)
 473:	b8 04 00 00 00       	mov    $0x4,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <read>:
SYSCALL(read)
 47b:	b8 05 00 00 00       	mov    $0x5,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <write>:
SYSCALL(write)
 483:	b8 10 00 00 00       	mov    $0x10,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    

0000048b <close>:
SYSCALL(close)
 48b:	b8 15 00 00 00       	mov    $0x15,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    

00000493 <kill>:
SYSCALL(kill)
 493:	b8 06 00 00 00       	mov    $0x6,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    

0000049b <exec>:
SYSCALL(exec)
 49b:	b8 07 00 00 00       	mov    $0x7,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    

000004a3 <open>:
SYSCALL(open)
 4a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    

000004ab <mknod>:
SYSCALL(mknod)
 4ab:	b8 11 00 00 00       	mov    $0x11,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    

000004b3 <unlink>:
SYSCALL(unlink)
 4b3:	b8 12 00 00 00       	mov    $0x12,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    

000004bb <fstat>:
SYSCALL(fstat)
 4bb:	b8 08 00 00 00       	mov    $0x8,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <link>:
SYSCALL(link)
 4c3:	b8 13 00 00 00       	mov    $0x13,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <mkdir>:
SYSCALL(mkdir)
 4cb:	b8 14 00 00 00       	mov    $0x14,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    

000004d3 <chdir>:
SYSCALL(chdir)
 4d3:	b8 09 00 00 00       	mov    $0x9,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    

000004db <dup>:
SYSCALL(dup)
 4db:	b8 0a 00 00 00       	mov    $0xa,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    

000004e3 <getpid>:
SYSCALL(getpid)
 4e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    

000004eb <sbrk>:
SYSCALL(sbrk)
 4eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    

000004f3 <sleep>:
SYSCALL(sleep)
 4f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    

000004fb <uptime>:
SYSCALL(uptime)
 4fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    

00000503 <clone>:
SYSCALL(clone)
 503:	b8 16 00 00 00       	mov    $0x16,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    

0000050b <join>:
SYSCALL(join)
 50b:	b8 17 00 00 00       	mov    $0x17,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    
 513:	66 90                	xchg   %ax,%ax
 515:	66 90                	xchg   %ax,%ax
 517:	66 90                	xchg   %ax,%ax
 519:	66 90                	xchg   %ax,%ax
 51b:	66 90                	xchg   %ax,%ax
 51d:	66 90                	xchg   %ax,%ax
 51f:	90                   	nop

00000520 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
 526:	83 ec 3c             	sub    $0x3c,%esp
 529:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 52c:	89 d1                	mov    %edx,%ecx
{
 52e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 531:	85 d2                	test   %edx,%edx
 533:	0f 89 7f 00 00 00    	jns    5b8 <printint+0x98>
 539:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 53d:	74 79                	je     5b8 <printint+0x98>
    neg = 1;
 53f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 546:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 548:	31 db                	xor    %ebx,%ebx
 54a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 54d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 550:	89 c8                	mov    %ecx,%eax
 552:	31 d2                	xor    %edx,%edx
 554:	89 cf                	mov    %ecx,%edi
 556:	f7 75 c4             	divl   -0x3c(%ebp)
 559:	0f b6 92 c0 09 00 00 	movzbl 0x9c0(%edx),%edx
 560:	89 45 c0             	mov    %eax,-0x40(%ebp)
 563:	89 d8                	mov    %ebx,%eax
 565:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 568:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 56b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 56e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 571:	76 dd                	jbe    550 <printint+0x30>
  if(neg)
 573:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 576:	85 c9                	test   %ecx,%ecx
 578:	74 0c                	je     586 <printint+0x66>
    buf[i++] = '-';
 57a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 57f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 581:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 586:	8b 7d b8             	mov    -0x48(%ebp),%edi
 589:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 58d:	eb 07                	jmp    596 <printint+0x76>
 58f:	90                   	nop
    putc(fd, buf[i]);
 590:	0f b6 13             	movzbl (%ebx),%edx
 593:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 596:	83 ec 04             	sub    $0x4,%esp
 599:	88 55 d7             	mov    %dl,-0x29(%ebp)
 59c:	6a 01                	push   $0x1
 59e:	56                   	push   %esi
 59f:	57                   	push   %edi
 5a0:	e8 de fe ff ff       	call   483 <write>
  while(--i >= 0)
 5a5:	83 c4 10             	add    $0x10,%esp
 5a8:	39 de                	cmp    %ebx,%esi
 5aa:	75 e4                	jne    590 <printint+0x70>
}
 5ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5af:	5b                   	pop    %ebx
 5b0:	5e                   	pop    %esi
 5b1:	5f                   	pop    %edi
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5bf:	eb 87                	jmp    548 <printint+0x28>
 5c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cf:	90                   	nop

000005d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5df:	0f b6 13             	movzbl (%ebx),%edx
 5e2:	84 d2                	test   %dl,%dl
 5e4:	74 6a                	je     650 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5e6:	8d 45 10             	lea    0x10(%ebp),%eax
 5e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5f4:	eb 36                	jmp    62c <printf+0x5c>
 5f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
 600:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 603:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 608:	83 f8 25             	cmp    $0x25,%eax
 60b:	74 15                	je     622 <printf+0x52>
  write(fd, &c, 1);
 60d:	83 ec 04             	sub    $0x4,%esp
 610:	88 55 e7             	mov    %dl,-0x19(%ebp)
 613:	6a 01                	push   $0x1
 615:	57                   	push   %edi
 616:	56                   	push   %esi
 617:	e8 67 fe ff ff       	call   483 <write>
 61c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 61f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 622:	0f b6 13             	movzbl (%ebx),%edx
 625:	83 c3 01             	add    $0x1,%ebx
 628:	84 d2                	test   %dl,%dl
 62a:	74 24                	je     650 <printf+0x80>
    c = fmt[i] & 0xff;
 62c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 62f:	85 c9                	test   %ecx,%ecx
 631:	74 cd                	je     600 <printf+0x30>
      }
    } else if(state == '%'){
 633:	83 f9 25             	cmp    $0x25,%ecx
 636:	75 ea                	jne    622 <printf+0x52>
      if(c == 'd'){
 638:	83 f8 25             	cmp    $0x25,%eax
 63b:	0f 84 07 01 00 00    	je     748 <printf+0x178>
 641:	83 e8 63             	sub    $0x63,%eax
 644:	83 f8 15             	cmp    $0x15,%eax
 647:	77 17                	ja     660 <printf+0x90>
 649:	ff 24 85 68 09 00 00 	jmp    *0x968(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 650:	8d 65 f4             	lea    -0xc(%ebp),%esp
 653:	5b                   	pop    %ebx
 654:	5e                   	pop    %esi
 655:	5f                   	pop    %edi
 656:	5d                   	pop    %ebp
 657:	c3                   	ret    
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop
  write(fd, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 666:	6a 01                	push   $0x1
 668:	57                   	push   %edi
 669:	56                   	push   %esi
 66a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 66e:	e8 10 fe ff ff       	call   483 <write>
        putc(fd, c);
 673:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 677:	83 c4 0c             	add    $0xc,%esp
 67a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 67d:	6a 01                	push   $0x1
 67f:	57                   	push   %edi
 680:	56                   	push   %esi
 681:	e8 fd fd ff ff       	call   483 <write>
        putc(fd, c);
 686:	83 c4 10             	add    $0x10,%esp
      state = 0;
 689:	31 c9                	xor    %ecx,%ecx
 68b:	eb 95                	jmp    622 <printf+0x52>
 68d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 690:	83 ec 0c             	sub    $0xc,%esp
 693:	b9 10 00 00 00       	mov    $0x10,%ecx
 698:	6a 00                	push   $0x0
 69a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 69d:	8b 10                	mov    (%eax),%edx
 69f:	89 f0                	mov    %esi,%eax
 6a1:	e8 7a fe ff ff       	call   520 <printint>
        ap++;
 6a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6ad:	31 c9                	xor    %ecx,%ecx
 6af:	e9 6e ff ff ff       	jmp    622 <printf+0x52>
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6bb:	8b 10                	mov    (%eax),%edx
        ap++;
 6bd:	83 c0 04             	add    $0x4,%eax
 6c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6c3:	85 d2                	test   %edx,%edx
 6c5:	0f 84 8d 00 00 00    	je     758 <printf+0x188>
        while(*s != 0){
 6cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6d0:	84 c0                	test   %al,%al
 6d2:	0f 84 4a ff ff ff    	je     622 <printf+0x52>
 6d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6db:	89 d3                	mov    %edx,%ebx
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6e3:	83 c3 01             	add    $0x1,%ebx
 6e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6e9:	6a 01                	push   $0x1
 6eb:	57                   	push   %edi
 6ec:	56                   	push   %esi
 6ed:	e8 91 fd ff ff       	call   483 <write>
        while(*s != 0){
 6f2:	0f b6 03             	movzbl (%ebx),%eax
 6f5:	83 c4 10             	add    $0x10,%esp
 6f8:	84 c0                	test   %al,%al
 6fa:	75 e4                	jne    6e0 <printf+0x110>
      state = 0;
 6fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6ff:	31 c9                	xor    %ecx,%ecx
 701:	e9 1c ff ff ff       	jmp    622 <printf+0x52>
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 710:	83 ec 0c             	sub    $0xc,%esp
 713:	b9 0a 00 00 00       	mov    $0xa,%ecx
 718:	6a 01                	push   $0x1
 71a:	e9 7b ff ff ff       	jmp    69a <printf+0xca>
 71f:	90                   	nop
        putc(fd, *ap);
 720:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 723:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 726:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 728:	6a 01                	push   $0x1
 72a:	57                   	push   %edi
 72b:	56                   	push   %esi
        putc(fd, *ap);
 72c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 72f:	e8 4f fd ff ff       	call   483 <write>
        ap++;
 734:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 738:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73b:	31 c9                	xor    %ecx,%ecx
 73d:	e9 e0 fe ff ff       	jmp    622 <printf+0x52>
 742:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 748:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 74b:	83 ec 04             	sub    $0x4,%esp
 74e:	e9 2a ff ff ff       	jmp    67d <printf+0xad>
 753:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 757:	90                   	nop
          s = "(null)";
 758:	ba 5e 09 00 00       	mov    $0x95e,%edx
        while(*s != 0){
 75d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 760:	b8 28 00 00 00       	mov    $0x28,%eax
 765:	89 d3                	mov    %edx,%ebx
 767:	e9 74 ff ff ff       	jmp    6e0 <printf+0x110>
 76c:	66 90                	xchg   %ax,%ax
 76e:	66 90                	xchg   %ax,%ax

00000770 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 770:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 771:	a1 60 10 00 00       	mov    0x1060,%eax
{
 776:	89 e5                	mov    %esp,%ebp
 778:	57                   	push   %edi
 779:	56                   	push   %esi
 77a:	53                   	push   %ebx
 77b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 77e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	89 c2                	mov    %eax,%edx
 78a:	8b 00                	mov    (%eax),%eax
 78c:	39 ca                	cmp    %ecx,%edx
 78e:	73 30                	jae    7c0 <free+0x50>
 790:	39 c1                	cmp    %eax,%ecx
 792:	72 04                	jb     798 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 794:	39 c2                	cmp    %eax,%edx
 796:	72 f0                	jb     788 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 798:	8b 73 fc             	mov    -0x4(%ebx),%esi
 79b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 79e:	39 f8                	cmp    %edi,%eax
 7a0:	74 30                	je     7d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7a5:	8b 42 04             	mov    0x4(%edx),%eax
 7a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7ab:	39 f1                	cmp    %esi,%ecx
 7ad:	74 3a                	je     7e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7b1:	5b                   	pop    %ebx
  freep = p;
 7b2:	89 15 60 10 00 00    	mov    %edx,0x1060
}
 7b8:	5e                   	pop    %esi
 7b9:	5f                   	pop    %edi
 7ba:	5d                   	pop    %ebp
 7bb:	c3                   	ret    
 7bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7c0:	39 c2                	cmp    %eax,%edx
 7c2:	72 c4                	jb     788 <free+0x18>
 7c4:	39 c1                	cmp    %eax,%ecx
 7c6:	73 c0                	jae    788 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ce:	39 f8                	cmp    %edi,%eax
 7d0:	75 d0                	jne    7a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7d2:	03 70 04             	add    0x4(%eax),%esi
 7d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7d8:	8b 02                	mov    (%edx),%eax
 7da:	8b 00                	mov    (%eax),%eax
 7dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7df:	8b 42 04             	mov    0x4(%edx),%eax
 7e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7e5:	39 f1                	cmp    %esi,%ecx
 7e7:	75 c6                	jne    7af <free+0x3f>
    p->s.size += bp->s.size;
 7e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7ec:	89 15 60 10 00 00    	mov    %edx,0x1060
    p->s.size += bp->s.size;
 7f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7f8:	89 0a                	mov    %ecx,(%edx)
}
 7fa:	5b                   	pop    %ebx
 7fb:	5e                   	pop    %esi
 7fc:	5f                   	pop    %edi
 7fd:	5d                   	pop    %ebp
 7fe:	c3                   	ret    
 7ff:	90                   	nop

00000800 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 809:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 80c:	8b 3d 60 10 00 00    	mov    0x1060,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 812:	8d 70 07             	lea    0x7(%eax),%esi
 815:	c1 ee 03             	shr    $0x3,%esi
 818:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 81b:	85 ff                	test   %edi,%edi
 81d:	0f 84 9d 00 00 00    	je     8c0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 823:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 825:	8b 4a 04             	mov    0x4(%edx),%ecx
 828:	39 f1                	cmp    %esi,%ecx
 82a:	73 6a                	jae    896 <malloc+0x96>
 82c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 831:	39 de                	cmp    %ebx,%esi
 833:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 836:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 83d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 840:	eb 17                	jmp    859 <malloc+0x59>
 842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 848:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 84a:	8b 48 04             	mov    0x4(%eax),%ecx
 84d:	39 f1                	cmp    %esi,%ecx
 84f:	73 4f                	jae    8a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 851:	8b 3d 60 10 00 00    	mov    0x1060,%edi
 857:	89 c2                	mov    %eax,%edx
 859:	39 d7                	cmp    %edx,%edi
 85b:	75 eb                	jne    848 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 85d:	83 ec 0c             	sub    $0xc,%esp
 860:	ff 75 e4             	push   -0x1c(%ebp)
 863:	e8 83 fc ff ff       	call   4eb <sbrk>
  if(p == (char*)-1)
 868:	83 c4 10             	add    $0x10,%esp
 86b:	83 f8 ff             	cmp    $0xffffffff,%eax
 86e:	74 1c                	je     88c <malloc+0x8c>
  hp->s.size = nu;
 870:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 873:	83 ec 0c             	sub    $0xc,%esp
 876:	83 c0 08             	add    $0x8,%eax
 879:	50                   	push   %eax
 87a:	e8 f1 fe ff ff       	call   770 <free>
  return freep;
 87f:	8b 15 60 10 00 00    	mov    0x1060,%edx
      if((p = morecore(nunits)) == 0)
 885:	83 c4 10             	add    $0x10,%esp
 888:	85 d2                	test   %edx,%edx
 88a:	75 bc                	jne    848 <malloc+0x48>
        return 0;
  }
}
 88c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 88f:	31 c0                	xor    %eax,%eax
}
 891:	5b                   	pop    %ebx
 892:	5e                   	pop    %esi
 893:	5f                   	pop    %edi
 894:	5d                   	pop    %ebp
 895:	c3                   	ret    
    if(p->s.size >= nunits){
 896:	89 d0                	mov    %edx,%eax
 898:	89 fa                	mov    %edi,%edx
 89a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8a0:	39 ce                	cmp    %ecx,%esi
 8a2:	74 4c                	je     8f0 <malloc+0xf0>
        p->s.size -= nunits;
 8a4:	29 f1                	sub    %esi,%ecx
 8a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8ac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8af:	89 15 60 10 00 00    	mov    %edx,0x1060
}
 8b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8b8:	83 c0 08             	add    $0x8,%eax
}
 8bb:	5b                   	pop    %ebx
 8bc:	5e                   	pop    %esi
 8bd:	5f                   	pop    %edi
 8be:	5d                   	pop    %ebp
 8bf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8c0:	c7 05 60 10 00 00 64 	movl   $0x1064,0x1060
 8c7:	10 00 00 
    base.s.size = 0;
 8ca:	bf 64 10 00 00       	mov    $0x1064,%edi
    base.s.ptr = freep = prevp = &base;
 8cf:	c7 05 64 10 00 00 64 	movl   $0x1064,0x1064
 8d6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8db:	c7 05 68 10 00 00 00 	movl   $0x0,0x1068
 8e2:	00 00 00 
    if(p->s.size >= nunits){
 8e5:	e9 42 ff ff ff       	jmp    82c <malloc+0x2c>
 8ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8f0:	8b 08                	mov    (%eax),%ecx
 8f2:	89 0a                	mov    %ecx,(%edx)
 8f4:	eb b9                	jmp    8af <malloc+0xaf>
