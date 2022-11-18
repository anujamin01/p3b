
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
   f:	83 ec 08             	sub    $0x8,%esp
  12:	6a 02                	push   $0x2
  14:	68 08 09 00 00       	push   $0x908
  19:	e8 95 04 00 00       	call   4b3 <open>
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	0f 88 9f 00 00 00    	js     c8 <main+0xc8>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 b8 04 00 00       	call   4eb <dup>
  dup(0);  // stderr
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 ac 04 00 00       	call   4eb <dup>
  3f:	83 c4 10             	add    $0x10,%esp
  42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(;;){
    printf(1, "init: starting sh\n");
  48:	83 ec 08             	sub    $0x8,%esp
  4b:	68 10 09 00 00       	push   $0x910
  50:	6a 01                	push   $0x1
  52:	e8 89 05 00 00       	call   5e0 <printf>
    pid = fork();
  57:	e8 0f 04 00 00       	call   46b <fork>
    if(pid < 0){
  5c:	83 c4 10             	add    $0x10,%esp
    pid = fork();
  5f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  61:	85 c0                	test   %eax,%eax
  63:	78 2c                	js     91 <main+0x91>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  65:	74 3d                	je     a4 <main+0xa4>
  67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6e:	66 90                	xchg   %ax,%ax
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
  70:	e8 06 04 00 00       	call   47b <wait>
  75:	85 c0                	test   %eax,%eax
  77:	78 cf                	js     48 <main+0x48>
  79:	39 c3                	cmp    %eax,%ebx
  7b:	74 cb                	je     48 <main+0x48>
      printf(1, "zombie!\n");
  7d:	83 ec 08             	sub    $0x8,%esp
  80:	68 4f 09 00 00       	push   $0x94f
  85:	6a 01                	push   $0x1
  87:	e8 54 05 00 00       	call   5e0 <printf>
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	eb df                	jmp    70 <main+0x70>
      printf(1, "init: fork failed\n");
  91:	53                   	push   %ebx
  92:	53                   	push   %ebx
  93:	68 23 09 00 00       	push   $0x923
  98:	6a 01                	push   $0x1
  9a:	e8 41 05 00 00       	call   5e0 <printf>
      exit();
  9f:	e8 cf 03 00 00       	call   473 <exit>
      exec("sh", argv);
  a4:	50                   	push   %eax
  a5:	50                   	push   %eax
  a6:	68 20 0d 00 00       	push   $0xd20
  ab:	68 36 09 00 00       	push   $0x936
  b0:	e8 f6 03 00 00       	call   4ab <exec>
      printf(1, "init: exec sh failed\n");
  b5:	5a                   	pop    %edx
  b6:	59                   	pop    %ecx
  b7:	68 39 09 00 00       	push   $0x939
  bc:	6a 01                	push   $0x1
  be:	e8 1d 05 00 00       	call   5e0 <printf>
      exit();
  c3:	e8 ab 03 00 00       	call   473 <exit>
    mknod("console", 1, 1);
  c8:	50                   	push   %eax
  c9:	6a 01                	push   $0x1
  cb:	6a 01                	push   $0x1
  cd:	68 08 09 00 00       	push   $0x908
  d2:	e8 e4 03 00 00       	call   4bb <mknod>
    open("console", O_RDWR);
  d7:	58                   	pop    %eax
  d8:	5a                   	pop    %edx
  d9:	6a 02                	push   $0x2
  db:	68 08 09 00 00       	push   $0x908
  e0:	e8 ce 03 00 00       	call   4b3 <open>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	e9 3c ff ff ff       	jmp    29 <main+0x29>
  ed:	66 90                	xchg   %ax,%ax
  ef:	90                   	nop

000000f0 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	56                   	push   %esi
  f4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
  f5:	31 db                	xor    %ebx,%ebx
  f7:	eb 0f                	jmp    108 <thread_create+0x18>
  f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 100:	83 c3 01             	add    $0x1,%ebx
 103:	83 fb 40             	cmp    $0x40,%ebx
 106:	74 60                	je     168 <thread_create+0x78>
    if (inUse[i] == 0){
 108:	8b 04 9d 40 0d 00 00 	mov    0xd40(,%ebx,4),%eax
 10f:	85 c0                	test   %eax,%eax
 111:	75 ed                	jne    100 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 113:	a1 28 0d 00 00       	mov    0xd28,%eax
 118:	83 ec 0c             	sub    $0xc,%esp
 11b:	01 c0                	add    %eax,%eax
 11d:	50                   	push   %eax
 11e:	e8 ed 06 00 00       	call   810 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 123:	8b 35 28 0d 00 00    	mov    0xd28,%esi
 129:	83 c4 10             	add    $0x10,%esp
 12c:	99                   	cltd   
      malloc_addrs[i] = stack;
 12d:	89 04 9d 40 0e 00 00 	mov    %eax,0xe40(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 134:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 136:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 138:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 13b:	29 d6                	sub    %edx,%esi
 13d:	01 f1                	add    %esi,%ecx
 13f:	85 d2                	test   %edx,%edx
 141:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 144:	51                   	push   %ecx
 145:	ff 75 10             	push   0x10(%ebp)
 148:	ff 75 0c             	push   0xc(%ebp)
 14b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 14e:	89 0c 9d 40 0f 00 00 	mov    %ecx,0xf40(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 155:	e8 b9 03 00 00       	call   513 <clone>
 15a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 15d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5d                   	pop    %ebp
 163:	c3                   	ret    
 164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 168:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 16b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 170:	5b                   	pop    %ebx
 171:	5e                   	pop    %esi
 172:	5d                   	pop    %ebp
 173:	c3                   	ret    
 174:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 17f:	90                   	nop

00000180 <thread_join>:

int 
thread_join()
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 185:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 188:	31 db                	xor    %ebx,%ebx
{
 18a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 18d:	50                   	push   %eax
 18e:	e8 88 03 00 00       	call   51b <join>
 193:	83 c4 10             	add    $0x10,%esp
 196:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 198:	eb 0e                	jmp    1a8 <thread_join+0x28>
 19a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1a0:	83 c3 01             	add    $0x1,%ebx
 1a3:	83 fb 40             	cmp    $0x40,%ebx
 1a6:	74 27                	je     1cf <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 1a8:	83 3c 9d 40 0d 00 00 	cmpl   $0x1,0xd40(,%ebx,4)
 1af:	01 
 1b0:	75 ee                	jne    1a0 <thread_join+0x20>
      free(malloc_addrs[i]);
 1b2:	83 ec 0c             	sub    $0xc,%esp
 1b5:	ff 34 9d 40 0e 00 00 	push   0xe40(,%ebx,4)
 1bc:	e8 bf 05 00 00       	call   780 <free>
      inUse[i] = 0;
      break;
 1c1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 1c4:	c7 04 9d 40 0d 00 00 	movl   $0x0,0xd40(,%ebx,4)
 1cb:	00 00 00 00 
    }
  }
  return id;
}
 1cf:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1d2:	89 f0                	mov    %esi,%eax
 1d4:	5b                   	pop    %ebx
 1d5:	5e                   	pop    %esi
 1d6:	5d                   	pop    %ebp
 1d7:	c3                   	ret    
 1d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1df:	90                   	nop

000001e0 <lock_init>:

void lock_init(lock_t *lock){
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 1e3:	8b 45 08             	mov    0x8(%ebp),%eax
 1e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 1ec:	5d                   	pop    %ebp
 1ed:	c3                   	ret    
 1ee:	66 90                	xchg   %ax,%ax

000001f0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 1f0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 1f1:	b9 01 00 00 00       	mov    $0x1,%ecx
 1f6:	89 e5                	mov    %esp,%ebp
 1f8:	8b 55 08             	mov    0x8(%ebp),%edx
 1fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1ff:	90                   	nop
 200:	89 c8                	mov    %ecx,%eax
 202:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 205:	85 c0                	test   %eax,%eax
 207:	75 f7                	jne    200 <lock_acquire+0x10>
}
 209:	5d                   	pop    %ebp
 20a:	c3                   	ret    
 20b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 20f:	90                   	nop

00000210 <lock_release>:

void lock_release(lock_t *lock){
 210:	55                   	push   %ebp
 211:	31 c0                	xor    %eax,%eax
 213:	89 e5                	mov    %esp,%ebp
 215:	8b 55 08             	mov    0x8(%ebp),%edx
 218:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 21b:	5d                   	pop    %ebp
 21c:	c3                   	ret    
 21d:	8d 76 00             	lea    0x0(%esi),%esi

00000220 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 220:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 221:	31 c0                	xor    %eax,%eax
{
 223:	89 e5                	mov    %esp,%ebp
 225:	53                   	push   %ebx
 226:	8b 4d 08             	mov    0x8(%ebp),%ecx
 229:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 230:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 234:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 237:	83 c0 01             	add    $0x1,%eax
 23a:	84 d2                	test   %dl,%dl
 23c:	75 f2                	jne    230 <strcpy+0x10>
    ;
  return os;
}
 23e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 241:	89 c8                	mov    %ecx,%eax
 243:	c9                   	leave  
 244:	c3                   	ret    
 245:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000250 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	53                   	push   %ebx
 254:	8b 55 08             	mov    0x8(%ebp),%edx
 257:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 25a:	0f b6 02             	movzbl (%edx),%eax
 25d:	84 c0                	test   %al,%al
 25f:	75 17                	jne    278 <strcmp+0x28>
 261:	eb 3a                	jmp    29d <strcmp+0x4d>
 263:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 267:	90                   	nop
 268:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 26c:	83 c2 01             	add    $0x1,%edx
 26f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 272:	84 c0                	test   %al,%al
 274:	74 1a                	je     290 <strcmp+0x40>
    p++, q++;
 276:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 278:	0f b6 19             	movzbl (%ecx),%ebx
 27b:	38 c3                	cmp    %al,%bl
 27d:	74 e9                	je     268 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 27f:	29 d8                	sub    %ebx,%eax
}
 281:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 284:	c9                   	leave  
 285:	c3                   	ret    
 286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 290:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 294:	31 c0                	xor    %eax,%eax
 296:	29 d8                	sub    %ebx,%eax
}
 298:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 29b:	c9                   	leave  
 29c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 29d:	0f b6 19             	movzbl (%ecx),%ebx
 2a0:	31 c0                	xor    %eax,%eax
 2a2:	eb db                	jmp    27f <strcmp+0x2f>
 2a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <strlen>:

uint
strlen(const char *s)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2b6:	80 3a 00             	cmpb   $0x0,(%edx)
 2b9:	74 15                	je     2d0 <strlen+0x20>
 2bb:	31 c0                	xor    %eax,%eax
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
 2c0:	83 c0 01             	add    $0x1,%eax
 2c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2c7:	89 c1                	mov    %eax,%ecx
 2c9:	75 f5                	jne    2c0 <strlen+0x10>
    ;
  return n;
}
 2cb:	89 c8                	mov    %ecx,%eax
 2cd:	5d                   	pop    %ebp
 2ce:	c3                   	ret    
 2cf:	90                   	nop
  for(n = 0; s[n]; n++)
 2d0:	31 c9                	xor    %ecx,%ecx
}
 2d2:	5d                   	pop    %ebp
 2d3:	89 c8                	mov    %ecx,%eax
 2d5:	c3                   	ret    
 2d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dd:	8d 76 00             	lea    0x0(%esi),%esi

000002e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 2e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 2ed:	89 d7                	mov    %edx,%edi
 2ef:	fc                   	cld    
 2f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2f5:	89 d0                	mov    %edx,%eax
 2f7:	c9                   	leave  
 2f8:	c3                   	ret    
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000300 <strchr>:

char*
strchr(const char *s, char c)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 45 08             	mov    0x8(%ebp),%eax
 306:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 30a:	0f b6 10             	movzbl (%eax),%edx
 30d:	84 d2                	test   %dl,%dl
 30f:	75 12                	jne    323 <strchr+0x23>
 311:	eb 1d                	jmp    330 <strchr+0x30>
 313:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 317:	90                   	nop
 318:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 31c:	83 c0 01             	add    $0x1,%eax
 31f:	84 d2                	test   %dl,%dl
 321:	74 0d                	je     330 <strchr+0x30>
    if(*s == c)
 323:	38 d1                	cmp    %dl,%cl
 325:	75 f1                	jne    318 <strchr+0x18>
      return (char*)s;
  return 0;
}
 327:	5d                   	pop    %ebp
 328:	c3                   	ret    
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 330:	31 c0                	xor    %eax,%eax
}
 332:	5d                   	pop    %ebp
 333:	c3                   	ret    
 334:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 33f:	90                   	nop

00000340 <gets>:

char*
gets(char *buf, int max)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 345:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 348:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 349:	31 db                	xor    %ebx,%ebx
{
 34b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 34e:	eb 27                	jmp    377 <gets+0x37>
    cc = read(0, &c, 1);
 350:	83 ec 04             	sub    $0x4,%esp
 353:	6a 01                	push   $0x1
 355:	57                   	push   %edi
 356:	6a 00                	push   $0x0
 358:	e8 2e 01 00 00       	call   48b <read>
    if(cc < 1)
 35d:	83 c4 10             	add    $0x10,%esp
 360:	85 c0                	test   %eax,%eax
 362:	7e 1d                	jle    381 <gets+0x41>
      break;
    buf[i++] = c;
 364:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 368:	8b 55 08             	mov    0x8(%ebp),%edx
 36b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 36f:	3c 0a                	cmp    $0xa,%al
 371:	74 1d                	je     390 <gets+0x50>
 373:	3c 0d                	cmp    $0xd,%al
 375:	74 19                	je     390 <gets+0x50>
  for(i=0; i+1 < max; ){
 377:	89 de                	mov    %ebx,%esi
 379:	83 c3 01             	add    $0x1,%ebx
 37c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 37f:	7c cf                	jl     350 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 381:	8b 45 08             	mov    0x8(%ebp),%eax
 384:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 388:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38b:	5b                   	pop    %ebx
 38c:	5e                   	pop    %esi
 38d:	5f                   	pop    %edi
 38e:	5d                   	pop    %ebp
 38f:	c3                   	ret    
  buf[i] = '\0';
 390:	8b 45 08             	mov    0x8(%ebp),%eax
 393:	89 de                	mov    %ebx,%esi
 395:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 399:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39c:	5b                   	pop    %ebx
 39d:	5e                   	pop    %esi
 39e:	5f                   	pop    %edi
 39f:	5d                   	pop    %ebp
 3a0:	c3                   	ret    
 3a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	56                   	push   %esi
 3b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3b5:	83 ec 08             	sub    $0x8,%esp
 3b8:	6a 00                	push   $0x0
 3ba:	ff 75 08             	push   0x8(%ebp)
 3bd:	e8 f1 00 00 00       	call   4b3 <open>
  if(fd < 0)
 3c2:	83 c4 10             	add    $0x10,%esp
 3c5:	85 c0                	test   %eax,%eax
 3c7:	78 27                	js     3f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3c9:	83 ec 08             	sub    $0x8,%esp
 3cc:	ff 75 0c             	push   0xc(%ebp)
 3cf:	89 c3                	mov    %eax,%ebx
 3d1:	50                   	push   %eax
 3d2:	e8 f4 00 00 00       	call   4cb <fstat>
  close(fd);
 3d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3da:	89 c6                	mov    %eax,%esi
  close(fd);
 3dc:	e8 ba 00 00 00       	call   49b <close>
  return r;
 3e1:	83 c4 10             	add    $0x10,%esp
}
 3e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3e7:	89 f0                	mov    %esi,%eax
 3e9:	5b                   	pop    %ebx
 3ea:	5e                   	pop    %esi
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3f5:	eb ed                	jmp    3e4 <stat+0x34>
 3f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fe:	66 90                	xchg   %ax,%ax

00000400 <atoi>:

int
atoi(const char *s)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	53                   	push   %ebx
 404:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 407:	0f be 02             	movsbl (%edx),%eax
 40a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 40d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 410:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 415:	77 1e                	ja     435 <atoi+0x35>
 417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 420:	83 c2 01             	add    $0x1,%edx
 423:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 426:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 42a:	0f be 02             	movsbl (%edx),%eax
 42d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 430:	80 fb 09             	cmp    $0x9,%bl
 433:	76 eb                	jbe    420 <atoi+0x20>
  return n;
}
 435:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 438:	89 c8                	mov    %ecx,%eax
 43a:	c9                   	leave  
 43b:	c3                   	ret    
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	8b 45 10             	mov    0x10(%ebp),%eax
 447:	8b 55 08             	mov    0x8(%ebp),%edx
 44a:	56                   	push   %esi
 44b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 44e:	85 c0                	test   %eax,%eax
 450:	7e 13                	jle    465 <memmove+0x25>
 452:	01 d0                	add    %edx,%eax
  dst = vdst;
 454:	89 d7                	mov    %edx,%edi
 456:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 460:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 461:	39 f8                	cmp    %edi,%eax
 463:	75 fb                	jne    460 <memmove+0x20>
  return vdst;
}
 465:	5e                   	pop    %esi
 466:	89 d0                	mov    %edx,%eax
 468:	5f                   	pop    %edi
 469:	5d                   	pop    %ebp
 46a:	c3                   	ret    

0000046b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 46b:	b8 01 00 00 00       	mov    $0x1,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <exit>:
SYSCALL(exit)
 473:	b8 02 00 00 00       	mov    $0x2,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <wait>:
SYSCALL(wait)
 47b:	b8 03 00 00 00       	mov    $0x3,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <pipe>:
SYSCALL(pipe)
 483:	b8 04 00 00 00       	mov    $0x4,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    

0000048b <read>:
SYSCALL(read)
 48b:	b8 05 00 00 00       	mov    $0x5,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    

00000493 <write>:
SYSCALL(write)
 493:	b8 10 00 00 00       	mov    $0x10,%eax
 498:	cd 40                	int    $0x40
 49a:	c3                   	ret    

0000049b <close>:
SYSCALL(close)
 49b:	b8 15 00 00 00       	mov    $0x15,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    

000004a3 <kill>:
SYSCALL(kill)
 4a3:	b8 06 00 00 00       	mov    $0x6,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    

000004ab <exec>:
SYSCALL(exec)
 4ab:	b8 07 00 00 00       	mov    $0x7,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    

000004b3 <open>:
SYSCALL(open)
 4b3:	b8 0f 00 00 00       	mov    $0xf,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    

000004bb <mknod>:
SYSCALL(mknod)
 4bb:	b8 11 00 00 00       	mov    $0x11,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <unlink>:
SYSCALL(unlink)
 4c3:	b8 12 00 00 00       	mov    $0x12,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <fstat>:
SYSCALL(fstat)
 4cb:	b8 08 00 00 00       	mov    $0x8,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    

000004d3 <link>:
SYSCALL(link)
 4d3:	b8 13 00 00 00       	mov    $0x13,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    

000004db <mkdir>:
SYSCALL(mkdir)
 4db:	b8 14 00 00 00       	mov    $0x14,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    

000004e3 <chdir>:
SYSCALL(chdir)
 4e3:	b8 09 00 00 00       	mov    $0x9,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    

000004eb <dup>:
SYSCALL(dup)
 4eb:	b8 0a 00 00 00       	mov    $0xa,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    

000004f3 <getpid>:
SYSCALL(getpid)
 4f3:	b8 0b 00 00 00       	mov    $0xb,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    

000004fb <sbrk>:
SYSCALL(sbrk)
 4fb:	b8 0c 00 00 00       	mov    $0xc,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    

00000503 <sleep>:
SYSCALL(sleep)
 503:	b8 0d 00 00 00       	mov    $0xd,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    

0000050b <uptime>:
SYSCALL(uptime)
 50b:	b8 0e 00 00 00       	mov    $0xe,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    

00000513 <clone>:
SYSCALL(clone)
 513:	b8 16 00 00 00       	mov    $0x16,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    

0000051b <join>:
SYSCALL(join)
 51b:	b8 17 00 00 00       	mov    $0x17,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    
 523:	66 90                	xchg   %ax,%ax
 525:	66 90                	xchg   %ax,%ax
 527:	66 90                	xchg   %ax,%ax
 529:	66 90                	xchg   %ax,%ax
 52b:	66 90                	xchg   %ax,%ax
 52d:	66 90                	xchg   %ax,%ax
 52f:	90                   	nop

00000530 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
 536:	83 ec 3c             	sub    $0x3c,%esp
 539:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 53c:	89 d1                	mov    %edx,%ecx
{
 53e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 541:	85 d2                	test   %edx,%edx
 543:	0f 89 7f 00 00 00    	jns    5c8 <printint+0x98>
 549:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 54d:	74 79                	je     5c8 <printint+0x98>
    neg = 1;
 54f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 556:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 558:	31 db                	xor    %ebx,%ebx
 55a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 55d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 560:	89 c8                	mov    %ecx,%eax
 562:	31 d2                	xor    %edx,%edx
 564:	89 cf                	mov    %ecx,%edi
 566:	f7 75 c4             	divl   -0x3c(%ebp)
 569:	0f b6 92 b8 09 00 00 	movzbl 0x9b8(%edx),%edx
 570:	89 45 c0             	mov    %eax,-0x40(%ebp)
 573:	89 d8                	mov    %ebx,%eax
 575:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 578:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 57b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 57e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 581:	76 dd                	jbe    560 <printint+0x30>
  if(neg)
 583:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 586:	85 c9                	test   %ecx,%ecx
 588:	74 0c                	je     596 <printint+0x66>
    buf[i++] = '-';
 58a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 58f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 591:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 596:	8b 7d b8             	mov    -0x48(%ebp),%edi
 599:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 59d:	eb 07                	jmp    5a6 <printint+0x76>
 59f:	90                   	nop
    putc(fd, buf[i]);
 5a0:	0f b6 13             	movzbl (%ebx),%edx
 5a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5a6:	83 ec 04             	sub    $0x4,%esp
 5a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5ac:	6a 01                	push   $0x1
 5ae:	56                   	push   %esi
 5af:	57                   	push   %edi
 5b0:	e8 de fe ff ff       	call   493 <write>
  while(--i >= 0)
 5b5:	83 c4 10             	add    $0x10,%esp
 5b8:	39 de                	cmp    %ebx,%esi
 5ba:	75 e4                	jne    5a0 <printint+0x70>
}
 5bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5bf:	5b                   	pop    %ebx
 5c0:	5e                   	pop    %esi
 5c1:	5f                   	pop    %edi
 5c2:	5d                   	pop    %ebp
 5c3:	c3                   	ret    
 5c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5cf:	eb 87                	jmp    558 <printint+0x28>
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5ef:	0f b6 13             	movzbl (%ebx),%edx
 5f2:	84 d2                	test   %dl,%dl
 5f4:	74 6a                	je     660 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5f6:	8d 45 10             	lea    0x10(%ebp),%eax
 5f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 601:	89 45 d0             	mov    %eax,-0x30(%ebp)
 604:	eb 36                	jmp    63c <printf+0x5c>
 606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60d:	8d 76 00             	lea    0x0(%esi),%esi
 610:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 613:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 618:	83 f8 25             	cmp    $0x25,%eax
 61b:	74 15                	je     632 <printf+0x52>
  write(fd, &c, 1);
 61d:	83 ec 04             	sub    $0x4,%esp
 620:	88 55 e7             	mov    %dl,-0x19(%ebp)
 623:	6a 01                	push   $0x1
 625:	57                   	push   %edi
 626:	56                   	push   %esi
 627:	e8 67 fe ff ff       	call   493 <write>
 62c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 62f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 632:	0f b6 13             	movzbl (%ebx),%edx
 635:	83 c3 01             	add    $0x1,%ebx
 638:	84 d2                	test   %dl,%dl
 63a:	74 24                	je     660 <printf+0x80>
    c = fmt[i] & 0xff;
 63c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 63f:	85 c9                	test   %ecx,%ecx
 641:	74 cd                	je     610 <printf+0x30>
      }
    } else if(state == '%'){
 643:	83 f9 25             	cmp    $0x25,%ecx
 646:	75 ea                	jne    632 <printf+0x52>
      if(c == 'd'){
 648:	83 f8 25             	cmp    $0x25,%eax
 64b:	0f 84 07 01 00 00    	je     758 <printf+0x178>
 651:	83 e8 63             	sub    $0x63,%eax
 654:	83 f8 15             	cmp    $0x15,%eax
 657:	77 17                	ja     670 <printf+0x90>
 659:	ff 24 85 60 09 00 00 	jmp    *0x960(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 660:	8d 65 f4             	lea    -0xc(%ebp),%esp
 663:	5b                   	pop    %ebx
 664:	5e                   	pop    %esi
 665:	5f                   	pop    %edi
 666:	5d                   	pop    %ebp
 667:	c3                   	ret    
 668:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66f:	90                   	nop
  write(fd, &c, 1);
 670:	83 ec 04             	sub    $0x4,%esp
 673:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 676:	6a 01                	push   $0x1
 678:	57                   	push   %edi
 679:	56                   	push   %esi
 67a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 67e:	e8 10 fe ff ff       	call   493 <write>
        putc(fd, c);
 683:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 687:	83 c4 0c             	add    $0xc,%esp
 68a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 68d:	6a 01                	push   $0x1
 68f:	57                   	push   %edi
 690:	56                   	push   %esi
 691:	e8 fd fd ff ff       	call   493 <write>
        putc(fd, c);
 696:	83 c4 10             	add    $0x10,%esp
      state = 0;
 699:	31 c9                	xor    %ecx,%ecx
 69b:	eb 95                	jmp    632 <printf+0x52>
 69d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6a0:	83 ec 0c             	sub    $0xc,%esp
 6a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6a8:	6a 00                	push   $0x0
 6aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6ad:	8b 10                	mov    (%eax),%edx
 6af:	89 f0                	mov    %esi,%eax
 6b1:	e8 7a fe ff ff       	call   530 <printint>
        ap++;
 6b6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6ba:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6bd:	31 c9                	xor    %ecx,%ecx
 6bf:	e9 6e ff ff ff       	jmp    632 <printf+0x52>
 6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6cb:	8b 10                	mov    (%eax),%edx
        ap++;
 6cd:	83 c0 04             	add    $0x4,%eax
 6d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6d3:	85 d2                	test   %edx,%edx
 6d5:	0f 84 8d 00 00 00    	je     768 <printf+0x188>
        while(*s != 0){
 6db:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6de:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6e0:	84 c0                	test   %al,%al
 6e2:	0f 84 4a ff ff ff    	je     632 <printf+0x52>
 6e8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6eb:	89 d3                	mov    %edx,%ebx
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6f3:	83 c3 01             	add    $0x1,%ebx
 6f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6f9:	6a 01                	push   $0x1
 6fb:	57                   	push   %edi
 6fc:	56                   	push   %esi
 6fd:	e8 91 fd ff ff       	call   493 <write>
        while(*s != 0){
 702:	0f b6 03             	movzbl (%ebx),%eax
 705:	83 c4 10             	add    $0x10,%esp
 708:	84 c0                	test   %al,%al
 70a:	75 e4                	jne    6f0 <printf+0x110>
      state = 0;
 70c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 70f:	31 c9                	xor    %ecx,%ecx
 711:	e9 1c ff ff ff       	jmp    632 <printf+0x52>
 716:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 720:	83 ec 0c             	sub    $0xc,%esp
 723:	b9 0a 00 00 00       	mov    $0xa,%ecx
 728:	6a 01                	push   $0x1
 72a:	e9 7b ff ff ff       	jmp    6aa <printf+0xca>
 72f:	90                   	nop
        putc(fd, *ap);
 730:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 733:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 736:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 738:	6a 01                	push   $0x1
 73a:	57                   	push   %edi
 73b:	56                   	push   %esi
        putc(fd, *ap);
 73c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 73f:	e8 4f fd ff ff       	call   493 <write>
        ap++;
 744:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 748:	83 c4 10             	add    $0x10,%esp
      state = 0;
 74b:	31 c9                	xor    %ecx,%ecx
 74d:	e9 e0 fe ff ff       	jmp    632 <printf+0x52>
 752:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 758:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 75b:	83 ec 04             	sub    $0x4,%esp
 75e:	e9 2a ff ff ff       	jmp    68d <printf+0xad>
 763:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 767:	90                   	nop
          s = "(null)";
 768:	ba 58 09 00 00       	mov    $0x958,%edx
        while(*s != 0){
 76d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 770:	b8 28 00 00 00       	mov    $0x28,%eax
 775:	89 d3                	mov    %edx,%ebx
 777:	e9 74 ff ff ff       	jmp    6f0 <printf+0x110>
 77c:	66 90                	xchg   %ax,%ax
 77e:	66 90                	xchg   %ax,%ax

00000780 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 780:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 781:	a1 40 10 00 00       	mov    0x1040,%eax
{
 786:	89 e5                	mov    %esp,%ebp
 788:	57                   	push   %edi
 789:	56                   	push   %esi
 78a:	53                   	push   %ebx
 78b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 78e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 791:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 798:	89 c2                	mov    %eax,%edx
 79a:	8b 00                	mov    (%eax),%eax
 79c:	39 ca                	cmp    %ecx,%edx
 79e:	73 30                	jae    7d0 <free+0x50>
 7a0:	39 c1                	cmp    %eax,%ecx
 7a2:	72 04                	jb     7a8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7a4:	39 c2                	cmp    %eax,%edx
 7a6:	72 f0                	jb     798 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ae:	39 f8                	cmp    %edi,%eax
 7b0:	74 30                	je     7e2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7b2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7b5:	8b 42 04             	mov    0x4(%edx),%eax
 7b8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7bb:	39 f1                	cmp    %esi,%ecx
 7bd:	74 3a                	je     7f9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7bf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7c1:	5b                   	pop    %ebx
  freep = p;
 7c2:	89 15 40 10 00 00    	mov    %edx,0x1040
}
 7c8:	5e                   	pop    %esi
 7c9:	5f                   	pop    %edi
 7ca:	5d                   	pop    %ebp
 7cb:	c3                   	ret    
 7cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7d0:	39 c2                	cmp    %eax,%edx
 7d2:	72 c4                	jb     798 <free+0x18>
 7d4:	39 c1                	cmp    %eax,%ecx
 7d6:	73 c0                	jae    798 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7de:	39 f8                	cmp    %edi,%eax
 7e0:	75 d0                	jne    7b2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7e2:	03 70 04             	add    0x4(%eax),%esi
 7e5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7e8:	8b 02                	mov    (%edx),%eax
 7ea:	8b 00                	mov    (%eax),%eax
 7ec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7ef:	8b 42 04             	mov    0x4(%edx),%eax
 7f2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7f5:	39 f1                	cmp    %esi,%ecx
 7f7:	75 c6                	jne    7bf <free+0x3f>
    p->s.size += bp->s.size;
 7f9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7fc:	89 15 40 10 00 00    	mov    %edx,0x1040
    p->s.size += bp->s.size;
 802:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 805:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 808:	89 0a                	mov    %ecx,(%edx)
}
 80a:	5b                   	pop    %ebx
 80b:	5e                   	pop    %esi
 80c:	5f                   	pop    %edi
 80d:	5d                   	pop    %ebp
 80e:	c3                   	ret    
 80f:	90                   	nop

00000810 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
 816:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 819:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 81c:	8b 3d 40 10 00 00    	mov    0x1040,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 822:	8d 70 07             	lea    0x7(%eax),%esi
 825:	c1 ee 03             	shr    $0x3,%esi
 828:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 82b:	85 ff                	test   %edi,%edi
 82d:	0f 84 9d 00 00 00    	je     8d0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 833:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 835:	8b 4a 04             	mov    0x4(%edx),%ecx
 838:	39 f1                	cmp    %esi,%ecx
 83a:	73 6a                	jae    8a6 <malloc+0x96>
 83c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 841:	39 de                	cmp    %ebx,%esi
 843:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 846:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 84d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 850:	eb 17                	jmp    869 <malloc+0x59>
 852:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 858:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 85a:	8b 48 04             	mov    0x4(%eax),%ecx
 85d:	39 f1                	cmp    %esi,%ecx
 85f:	73 4f                	jae    8b0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 861:	8b 3d 40 10 00 00    	mov    0x1040,%edi
 867:	89 c2                	mov    %eax,%edx
 869:	39 d7                	cmp    %edx,%edi
 86b:	75 eb                	jne    858 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 86d:	83 ec 0c             	sub    $0xc,%esp
 870:	ff 75 e4             	push   -0x1c(%ebp)
 873:	e8 83 fc ff ff       	call   4fb <sbrk>
  if(p == (char*)-1)
 878:	83 c4 10             	add    $0x10,%esp
 87b:	83 f8 ff             	cmp    $0xffffffff,%eax
 87e:	74 1c                	je     89c <malloc+0x8c>
  hp->s.size = nu;
 880:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 883:	83 ec 0c             	sub    $0xc,%esp
 886:	83 c0 08             	add    $0x8,%eax
 889:	50                   	push   %eax
 88a:	e8 f1 fe ff ff       	call   780 <free>
  return freep;
 88f:	8b 15 40 10 00 00    	mov    0x1040,%edx
      if((p = morecore(nunits)) == 0)
 895:	83 c4 10             	add    $0x10,%esp
 898:	85 d2                	test   %edx,%edx
 89a:	75 bc                	jne    858 <malloc+0x48>
        return 0;
  }
}
 89c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 89f:	31 c0                	xor    %eax,%eax
}
 8a1:	5b                   	pop    %ebx
 8a2:	5e                   	pop    %esi
 8a3:	5f                   	pop    %edi
 8a4:	5d                   	pop    %ebp
 8a5:	c3                   	ret    
    if(p->s.size >= nunits){
 8a6:	89 d0                	mov    %edx,%eax
 8a8:	89 fa                	mov    %edi,%edx
 8aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8b0:	39 ce                	cmp    %ecx,%esi
 8b2:	74 4c                	je     900 <malloc+0xf0>
        p->s.size -= nunits;
 8b4:	29 f1                	sub    %esi,%ecx
 8b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8bc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8bf:	89 15 40 10 00 00    	mov    %edx,0x1040
}
 8c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8c8:	83 c0 08             	add    $0x8,%eax
}
 8cb:	5b                   	pop    %ebx
 8cc:	5e                   	pop    %esi
 8cd:	5f                   	pop    %edi
 8ce:	5d                   	pop    %ebp
 8cf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8d0:	c7 05 40 10 00 00 44 	movl   $0x1044,0x1040
 8d7:	10 00 00 
    base.s.size = 0;
 8da:	bf 44 10 00 00       	mov    $0x1044,%edi
    base.s.ptr = freep = prevp = &base;
 8df:	c7 05 44 10 00 00 44 	movl   $0x1044,0x1044
 8e6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8eb:	c7 05 48 10 00 00 00 	movl   $0x0,0x1048
 8f2:	00 00 00 
    if(p->s.size >= nunits){
 8f5:	e9 42 ff ff ff       	jmp    83c <malloc+0x2c>
 8fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 900:	8b 08                	mov    (%eax),%ecx
 902:	89 0a                	mov    %ecx,(%edx)
 904:	eb b9                	jmp    8bf <malloc+0xaf>
