
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   6:	e8 35 00 00 00       	call   40 <forktest>
  exit();
   b:	e8 93 04 00 00       	call   4a3 <exit>

00000010 <printf>:
{
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	83 ec 10             	sub    $0x10,%esp
  17:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  1a:	53                   	push   %ebx
  1b:	e8 c0 02 00 00       	call   2e0 <strlen>
  20:	83 c4 0c             	add    $0xc,%esp
  23:	50                   	push   %eax
  24:	53                   	push   %ebx
  25:	ff 75 08             	push   0x8(%ebp)
  28:	e8 96 04 00 00       	call   4c3 <write>
}
  2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  30:	83 c4 10             	add    $0x10,%esp
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000040 <forktest>:
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  for(n=0; n<N; n++){
  44:	31 db                	xor    %ebx,%ebx
{
  46:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  49:	68 e8 06 00 00       	push   $0x6e8
  4e:	e8 8d 02 00 00       	call   2e0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 e8 06 00 00       	push   $0x6e8
  5c:	6a 01                	push   $0x1
  5e:	e8 60 04 00 00       	call   4c3 <write>
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb 19                	jmp    81 <forktest+0x41>
  68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6f:	90                   	nop
    if(pid == 0)
  70:	74 58                	je     ca <forktest+0x8a>
  for(n=0; n<N; n++){
  72:	83 c3 01             	add    $0x1,%ebx
  75:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  7b:	0f 84 83 00 00 00    	je     104 <forktest+0xc4>
    pid = fork();
  81:	e8 15 04 00 00       	call   49b <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 16 04 00 00       	call   4ab <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 08 04 00 00       	call   4ab <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 1a 07 00 00       	push   $0x71a
  b0:	e8 2b 02 00 00       	call   2e0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 1a 07 00 00       	push   $0x71a
  be:	6a 01                	push   $0x1
  c0:	e8 fe 03 00 00       	call   4c3 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave  
  c9:	c3                   	ret    
      exit();
  ca:	e8 d4 03 00 00       	call   4a3 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 f3 06 00 00       	push   $0x6f3
  d7:	e8 04 02 00 00       	call   2e0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 f3 06 00 00       	push   $0x6f3
  e5:	6a 01                	push   $0x1
  e7:	e8 d7 03 00 00       	call   4c3 <write>
      exit();
  ec:	e8 b2 03 00 00       	call   4a3 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 07 07 00 00       	push   $0x707
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 9f 03 00 00       	call   4a3 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 28 07 00 00       	push   $0x728
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 88 03 00 00       	call   4a3 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	56                   	push   %esi
 124:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 125:	31 db                	xor    %ebx,%ebx
 127:	eb 0f                	jmp    138 <thread_create+0x18>
 129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 130:	83 c3 01             	add    $0x1,%ebx
 133:	83 fb 40             	cmp    $0x40,%ebx
 136:	74 60                	je     198 <thread_create+0x78>
    if (inUse[i] == 0){
 138:	8b 04 9d 80 0a 00 00 	mov    0xa80(,%ebx,4),%eax
 13f:	85 c0                	test   %eax,%eax
 141:	75 ed                	jne    130 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 143:	a1 7c 0a 00 00       	mov    0xa7c,%eax
 148:	83 ec 0c             	sub    $0xc,%esp
 14b:	01 c0                	add    %eax,%eax
 14d:	50                   	push   %eax
 14e:	e8 9d 04 00 00       	call   5f0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 153:	8b 35 7c 0a 00 00    	mov    0xa7c,%esi
 159:	83 c4 10             	add    $0x10,%esp
 15c:	99                   	cltd   
      malloc_addrs[i] = stack;
 15d:	89 04 9d 80 0b 00 00 	mov    %eax,0xb80(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 164:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 166:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 168:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 16b:	29 d6                	sub    %edx,%esi
 16d:	01 f1                	add    %esi,%ecx
 16f:	85 d2                	test   %edx,%edx
 171:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 174:	51                   	push   %ecx
 175:	ff 75 10             	push   0x10(%ebp)
 178:	ff 75 0c             	push   0xc(%ebp)
 17b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 17e:	89 0c 9d 80 0c 00 00 	mov    %ecx,0xc80(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 185:	e8 b9 03 00 00       	call   543 <clone>
 18a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 18d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 190:	5b                   	pop    %ebx
 191:	5e                   	pop    %esi
 192:	5d                   	pop    %ebp
 193:	c3                   	ret    
 194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 198:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 19b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 1a0:	5b                   	pop    %ebx
 1a1:	5e                   	pop    %esi
 1a2:	5d                   	pop    %ebp
 1a3:	c3                   	ret    
 1a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <thread_join>:

int 
thread_join()
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 1b5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 1b8:	31 db                	xor    %ebx,%ebx
{
 1ba:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 1bd:	50                   	push   %eax
 1be:	e8 88 03 00 00       	call   54b <join>
 1c3:	83 c4 10             	add    $0x10,%esp
 1c6:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 1c8:	eb 0e                	jmp    1d8 <thread_join+0x28>
 1ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d0:	83 c3 01             	add    $0x1,%ebx
 1d3:	83 fb 40             	cmp    $0x40,%ebx
 1d6:	74 27                	je     1ff <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 1d8:	83 3c 9d 80 0a 00 00 	cmpl   $0x1,0xa80(,%ebx,4)
 1df:	01 
 1e0:	75 ee                	jne    1d0 <thread_join+0x20>
      free(malloc_addrs[i]);
 1e2:	83 ec 0c             	sub    $0xc,%esp
 1e5:	ff 34 9d 80 0b 00 00 	push   0xb80(,%ebx,4)
 1ec:	e8 6f 03 00 00       	call   560 <free>
      inUse[i] = 0;
      break;
 1f1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 1f4:	c7 04 9d 80 0a 00 00 	movl   $0x0,0xa80(,%ebx,4)
 1fb:	00 00 00 00 
    }
  }
  return id;
}
 1ff:	8d 65 f8             	lea    -0x8(%ebp),%esp
 202:	89 f0                	mov    %esi,%eax
 204:	5b                   	pop    %ebx
 205:	5e                   	pop    %esi
 206:	5d                   	pop    %ebp
 207:	c3                   	ret    
 208:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20f:	90                   	nop

00000210 <lock_init>:

void lock_init(lock_t *lock){
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 213:	8b 45 08             	mov    0x8(%ebp),%eax
 216:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 21c:	5d                   	pop    %ebp
 21d:	c3                   	ret    
 21e:	66 90                	xchg   %ax,%ax

00000220 <lock_acquire>:

void lock_acquire(lock_t *lock){
 220:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 221:	b9 01 00 00 00       	mov    $0x1,%ecx
 226:	89 e5                	mov    %esp,%ebp
 228:	8b 55 08             	mov    0x8(%ebp),%edx
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop
 230:	89 c8                	mov    %ecx,%eax
 232:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 235:	85 c0                	test   %eax,%eax
 237:	75 f7                	jne    230 <lock_acquire+0x10>
}
 239:	5d                   	pop    %ebp
 23a:	c3                   	ret    
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <lock_release>:

void lock_release(lock_t *lock){
 240:	55                   	push   %ebp
 241:	31 c0                	xor    %eax,%eax
 243:	89 e5                	mov    %esp,%ebp
 245:	8b 55 08             	mov    0x8(%ebp),%edx
 248:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
 24d:	8d 76 00             	lea    0x0(%esi),%esi

00000250 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 250:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 251:	31 c0                	xor    %eax,%eax
{
 253:	89 e5                	mov    %esp,%ebp
 255:	53                   	push   %ebx
 256:	8b 4d 08             	mov    0x8(%ebp),%ecx
 259:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 260:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 264:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 267:	83 c0 01             	add    $0x1,%eax
 26a:	84 d2                	test   %dl,%dl
 26c:	75 f2                	jne    260 <strcpy+0x10>
    ;
  return os;
}
 26e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 271:	89 c8                	mov    %ecx,%eax
 273:	c9                   	leave  
 274:	c3                   	ret    
 275:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000280 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	53                   	push   %ebx
 284:	8b 55 08             	mov    0x8(%ebp),%edx
 287:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 28a:	0f b6 02             	movzbl (%edx),%eax
 28d:	84 c0                	test   %al,%al
 28f:	75 17                	jne    2a8 <strcmp+0x28>
 291:	eb 3a                	jmp    2cd <strcmp+0x4d>
 293:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 297:	90                   	nop
 298:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 29c:	83 c2 01             	add    $0x1,%edx
 29f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2a2:	84 c0                	test   %al,%al
 2a4:	74 1a                	je     2c0 <strcmp+0x40>
    p++, q++;
 2a6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2a8:	0f b6 19             	movzbl (%ecx),%ebx
 2ab:	38 c3                	cmp    %al,%bl
 2ad:	74 e9                	je     298 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2af:	29 d8                	sub    %ebx,%eax
}
 2b1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b4:	c9                   	leave  
 2b5:	c3                   	ret    
 2b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2c0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2c4:	31 c0                	xor    %eax,%eax
 2c6:	29 d8                	sub    %ebx,%eax
}
 2c8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2cb:	c9                   	leave  
 2cc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2cd:	0f b6 19             	movzbl (%ecx),%ebx
 2d0:	31 c0                	xor    %eax,%eax
 2d2:	eb db                	jmp    2af <strcmp+0x2f>
 2d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop

000002e0 <strlen>:

uint
strlen(const char *s)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2e6:	80 3a 00             	cmpb   $0x0,(%edx)
 2e9:	74 15                	je     300 <strlen+0x20>
 2eb:	31 c0                	xor    %eax,%eax
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	83 c0 01             	add    $0x1,%eax
 2f3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2f7:	89 c1                	mov    %eax,%ecx
 2f9:	75 f5                	jne    2f0 <strlen+0x10>
    ;
  return n;
}
 2fb:	89 c8                	mov    %ecx,%eax
 2fd:	5d                   	pop    %ebp
 2fe:	c3                   	ret    
 2ff:	90                   	nop
  for(n = 0; s[n]; n++)
 300:	31 c9                	xor    %ecx,%ecx
}
 302:	5d                   	pop    %ebp
 303:	89 c8                	mov    %ecx,%eax
 305:	c3                   	ret    
 306:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30d:	8d 76 00             	lea    0x0(%esi),%esi

00000310 <memset>:

void*
memset(void *dst, int c, uint n)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 317:	8b 4d 10             	mov    0x10(%ebp),%ecx
 31a:	8b 45 0c             	mov    0xc(%ebp),%eax
 31d:	89 d7                	mov    %edx,%edi
 31f:	fc                   	cld    
 320:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 322:	8b 7d fc             	mov    -0x4(%ebp),%edi
 325:	89 d0                	mov    %edx,%eax
 327:	c9                   	leave  
 328:	c3                   	ret    
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <strchr>:

char*
strchr(const char *s, char c)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	8b 45 08             	mov    0x8(%ebp),%eax
 336:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 33a:	0f b6 10             	movzbl (%eax),%edx
 33d:	84 d2                	test   %dl,%dl
 33f:	75 12                	jne    353 <strchr+0x23>
 341:	eb 1d                	jmp    360 <strchr+0x30>
 343:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 347:	90                   	nop
 348:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 34c:	83 c0 01             	add    $0x1,%eax
 34f:	84 d2                	test   %dl,%dl
 351:	74 0d                	je     360 <strchr+0x30>
    if(*s == c)
 353:	38 d1                	cmp    %dl,%cl
 355:	75 f1                	jne    348 <strchr+0x18>
      return (char*)s;
  return 0;
}
 357:	5d                   	pop    %ebp
 358:	c3                   	ret    
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 360:	31 c0                	xor    %eax,%eax
}
 362:	5d                   	pop    %ebp
 363:	c3                   	ret    
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <gets>:

char*
gets(char *buf, int max)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	57                   	push   %edi
 374:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 375:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 378:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 379:	31 db                	xor    %ebx,%ebx
{
 37b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 37e:	eb 27                	jmp    3a7 <gets+0x37>
    cc = read(0, &c, 1);
 380:	83 ec 04             	sub    $0x4,%esp
 383:	6a 01                	push   $0x1
 385:	57                   	push   %edi
 386:	6a 00                	push   $0x0
 388:	e8 2e 01 00 00       	call   4bb <read>
    if(cc < 1)
 38d:	83 c4 10             	add    $0x10,%esp
 390:	85 c0                	test   %eax,%eax
 392:	7e 1d                	jle    3b1 <gets+0x41>
      break;
    buf[i++] = c;
 394:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 398:	8b 55 08             	mov    0x8(%ebp),%edx
 39b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 39f:	3c 0a                	cmp    $0xa,%al
 3a1:	74 1d                	je     3c0 <gets+0x50>
 3a3:	3c 0d                	cmp    $0xd,%al
 3a5:	74 19                	je     3c0 <gets+0x50>
  for(i=0; i+1 < max; ){
 3a7:	89 de                	mov    %ebx,%esi
 3a9:	83 c3 01             	add    $0x1,%ebx
 3ac:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3af:	7c cf                	jl     380 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3b1:	8b 45 08             	mov    0x8(%ebp),%eax
 3b4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bb:	5b                   	pop    %ebx
 3bc:	5e                   	pop    %esi
 3bd:	5f                   	pop    %edi
 3be:	5d                   	pop    %ebp
 3bf:	c3                   	ret    
  buf[i] = '\0';
 3c0:	8b 45 08             	mov    0x8(%ebp),%eax
 3c3:	89 de                	mov    %ebx,%esi
 3c5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3c9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3cc:	5b                   	pop    %ebx
 3cd:	5e                   	pop    %esi
 3ce:	5f                   	pop    %edi
 3cf:	5d                   	pop    %ebp
 3d0:	c3                   	ret    
 3d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	56                   	push   %esi
 3e4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3e5:	83 ec 08             	sub    $0x8,%esp
 3e8:	6a 00                	push   $0x0
 3ea:	ff 75 08             	push   0x8(%ebp)
 3ed:	e8 f1 00 00 00       	call   4e3 <open>
  if(fd < 0)
 3f2:	83 c4 10             	add    $0x10,%esp
 3f5:	85 c0                	test   %eax,%eax
 3f7:	78 27                	js     420 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3f9:	83 ec 08             	sub    $0x8,%esp
 3fc:	ff 75 0c             	push   0xc(%ebp)
 3ff:	89 c3                	mov    %eax,%ebx
 401:	50                   	push   %eax
 402:	e8 f4 00 00 00       	call   4fb <fstat>
  close(fd);
 407:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 40a:	89 c6                	mov    %eax,%esi
  close(fd);
 40c:	e8 ba 00 00 00       	call   4cb <close>
  return r;
 411:	83 c4 10             	add    $0x10,%esp
}
 414:	8d 65 f8             	lea    -0x8(%ebp),%esp
 417:	89 f0                	mov    %esi,%eax
 419:	5b                   	pop    %ebx
 41a:	5e                   	pop    %esi
 41b:	5d                   	pop    %ebp
 41c:	c3                   	ret    
 41d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 420:	be ff ff ff ff       	mov    $0xffffffff,%esi
 425:	eb ed                	jmp    414 <stat+0x34>
 427:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42e:	66 90                	xchg   %ax,%ax

00000430 <atoi>:

int
atoi(const char *s)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	53                   	push   %ebx
 434:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 437:	0f be 02             	movsbl (%edx),%eax
 43a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 43d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 440:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 445:	77 1e                	ja     465 <atoi+0x35>
 447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 450:	83 c2 01             	add    $0x1,%edx
 453:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 456:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 45a:	0f be 02             	movsbl (%edx),%eax
 45d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 460:	80 fb 09             	cmp    $0x9,%bl
 463:	76 eb                	jbe    450 <atoi+0x20>
  return n;
}
 465:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 468:	89 c8                	mov    %ecx,%eax
 46a:	c9                   	leave  
 46b:	c3                   	ret    
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
 474:	8b 45 10             	mov    0x10(%ebp),%eax
 477:	8b 55 08             	mov    0x8(%ebp),%edx
 47a:	56                   	push   %esi
 47b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 47e:	85 c0                	test   %eax,%eax
 480:	7e 13                	jle    495 <memmove+0x25>
 482:	01 d0                	add    %edx,%eax
  dst = vdst;
 484:	89 d7                	mov    %edx,%edi
 486:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 490:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 491:	39 f8                	cmp    %edi,%eax
 493:	75 fb                	jne    490 <memmove+0x20>
  return vdst;
}
 495:	5e                   	pop    %esi
 496:	89 d0                	mov    %edx,%eax
 498:	5f                   	pop    %edi
 499:	5d                   	pop    %ebp
 49a:	c3                   	ret    

0000049b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 49b:	b8 01 00 00 00       	mov    $0x1,%eax
 4a0:	cd 40                	int    $0x40
 4a2:	c3                   	ret    

000004a3 <exit>:
SYSCALL(exit)
 4a3:	b8 02 00 00 00       	mov    $0x2,%eax
 4a8:	cd 40                	int    $0x40
 4aa:	c3                   	ret    

000004ab <wait>:
SYSCALL(wait)
 4ab:	b8 03 00 00 00       	mov    $0x3,%eax
 4b0:	cd 40                	int    $0x40
 4b2:	c3                   	ret    

000004b3 <pipe>:
SYSCALL(pipe)
 4b3:	b8 04 00 00 00       	mov    $0x4,%eax
 4b8:	cd 40                	int    $0x40
 4ba:	c3                   	ret    

000004bb <read>:
SYSCALL(read)
 4bb:	b8 05 00 00 00       	mov    $0x5,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <write>:
SYSCALL(write)
 4c3:	b8 10 00 00 00       	mov    $0x10,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <close>:
SYSCALL(close)
 4cb:	b8 15 00 00 00       	mov    $0x15,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    

000004d3 <kill>:
SYSCALL(kill)
 4d3:	b8 06 00 00 00       	mov    $0x6,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    

000004db <exec>:
SYSCALL(exec)
 4db:	b8 07 00 00 00       	mov    $0x7,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    

000004e3 <open>:
SYSCALL(open)
 4e3:	b8 0f 00 00 00       	mov    $0xf,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    

000004eb <mknod>:
SYSCALL(mknod)
 4eb:	b8 11 00 00 00       	mov    $0x11,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    

000004f3 <unlink>:
SYSCALL(unlink)
 4f3:	b8 12 00 00 00       	mov    $0x12,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    

000004fb <fstat>:
SYSCALL(fstat)
 4fb:	b8 08 00 00 00       	mov    $0x8,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    

00000503 <link>:
SYSCALL(link)
 503:	b8 13 00 00 00       	mov    $0x13,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    

0000050b <mkdir>:
SYSCALL(mkdir)
 50b:	b8 14 00 00 00       	mov    $0x14,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    

00000513 <chdir>:
SYSCALL(chdir)
 513:	b8 09 00 00 00       	mov    $0x9,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    

0000051b <dup>:
SYSCALL(dup)
 51b:	b8 0a 00 00 00       	mov    $0xa,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    

00000523 <getpid>:
SYSCALL(getpid)
 523:	b8 0b 00 00 00       	mov    $0xb,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    

0000052b <sbrk>:
SYSCALL(sbrk)
 52b:	b8 0c 00 00 00       	mov    $0xc,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret    

00000533 <sleep>:
SYSCALL(sleep)
 533:	b8 0d 00 00 00       	mov    $0xd,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret    

0000053b <uptime>:
SYSCALL(uptime)
 53b:	b8 0e 00 00 00       	mov    $0xe,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <clone>:
SYSCALL(clone)
 543:	b8 16 00 00 00       	mov    $0x16,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <join>:
SYSCALL(join)
 54b:	b8 17 00 00 00       	mov    $0x17,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    
 553:	66 90                	xchg   %ax,%ax
 555:	66 90                	xchg   %ax,%ax
 557:	66 90                	xchg   %ax,%ax
 559:	66 90                	xchg   %ax,%ax
 55b:	66 90                	xchg   %ax,%ax
 55d:	66 90                	xchg   %ax,%ax
 55f:	90                   	nop

00000560 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 560:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 561:	a1 80 0d 00 00       	mov    0xd80,%eax
{
 566:	89 e5                	mov    %esp,%ebp
 568:	57                   	push   %edi
 569:	56                   	push   %esi
 56a:	53                   	push   %ebx
 56b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 56e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 578:	89 c2                	mov    %eax,%edx
 57a:	8b 00                	mov    (%eax),%eax
 57c:	39 ca                	cmp    %ecx,%edx
 57e:	73 30                	jae    5b0 <free+0x50>
 580:	39 c1                	cmp    %eax,%ecx
 582:	72 04                	jb     588 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 584:	39 c2                	cmp    %eax,%edx
 586:	72 f0                	jb     578 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 588:	8b 73 fc             	mov    -0x4(%ebx),%esi
 58b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 58e:	39 f8                	cmp    %edi,%eax
 590:	74 30                	je     5c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 592:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 595:	8b 42 04             	mov    0x4(%edx),%eax
 598:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 59b:	39 f1                	cmp    %esi,%ecx
 59d:	74 3a                	je     5d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 59f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 5a1:	5b                   	pop    %ebx
  freep = p;
 5a2:	89 15 80 0d 00 00    	mov    %edx,0xd80
}
 5a8:	5e                   	pop    %esi
 5a9:	5f                   	pop    %edi
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5b0:	39 c2                	cmp    %eax,%edx
 5b2:	72 c4                	jb     578 <free+0x18>
 5b4:	39 c1                	cmp    %eax,%ecx
 5b6:	73 c0                	jae    578 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 5b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5be:	39 f8                	cmp    %edi,%eax
 5c0:	75 d0                	jne    592 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 5c2:	03 70 04             	add    0x4(%eax),%esi
 5c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 5c8:	8b 02                	mov    (%edx),%eax
 5ca:	8b 00                	mov    (%eax),%eax
 5cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 5cf:	8b 42 04             	mov    0x4(%edx),%eax
 5d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5d5:	39 f1                	cmp    %esi,%ecx
 5d7:	75 c6                	jne    59f <free+0x3f>
    p->s.size += bp->s.size;
 5d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 5dc:	89 15 80 0d 00 00    	mov    %edx,0xd80
    p->s.size += bp->s.size;
 5e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 5e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 5e8:	89 0a                	mov    %ecx,(%edx)
}
 5ea:	5b                   	pop    %ebx
 5eb:	5e                   	pop    %esi
 5ec:	5f                   	pop    %edi
 5ed:	5d                   	pop    %ebp
 5ee:	c3                   	ret    
 5ef:	90                   	nop

000005f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 5f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 5fc:	8b 3d 80 0d 00 00    	mov    0xd80,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 602:	8d 70 07             	lea    0x7(%eax),%esi
 605:	c1 ee 03             	shr    $0x3,%esi
 608:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 60b:	85 ff                	test   %edi,%edi
 60d:	0f 84 9d 00 00 00    	je     6b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 613:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 615:	8b 4a 04             	mov    0x4(%edx),%ecx
 618:	39 f1                	cmp    %esi,%ecx
 61a:	73 6a                	jae    686 <malloc+0x96>
 61c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 621:	39 de                	cmp    %ebx,%esi
 623:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 626:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 62d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 630:	eb 17                	jmp    649 <malloc+0x59>
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 638:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 63a:	8b 48 04             	mov    0x4(%eax),%ecx
 63d:	39 f1                	cmp    %esi,%ecx
 63f:	73 4f                	jae    690 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 641:	8b 3d 80 0d 00 00    	mov    0xd80,%edi
 647:	89 c2                	mov    %eax,%edx
 649:	39 d7                	cmp    %edx,%edi
 64b:	75 eb                	jne    638 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 64d:	83 ec 0c             	sub    $0xc,%esp
 650:	ff 75 e4             	push   -0x1c(%ebp)
 653:	e8 d3 fe ff ff       	call   52b <sbrk>
  if(p == (char*)-1)
 658:	83 c4 10             	add    $0x10,%esp
 65b:	83 f8 ff             	cmp    $0xffffffff,%eax
 65e:	74 1c                	je     67c <malloc+0x8c>
  hp->s.size = nu;
 660:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 663:	83 ec 0c             	sub    $0xc,%esp
 666:	83 c0 08             	add    $0x8,%eax
 669:	50                   	push   %eax
 66a:	e8 f1 fe ff ff       	call   560 <free>
  return freep;
 66f:	8b 15 80 0d 00 00    	mov    0xd80,%edx
      if((p = morecore(nunits)) == 0)
 675:	83 c4 10             	add    $0x10,%esp
 678:	85 d2                	test   %edx,%edx
 67a:	75 bc                	jne    638 <malloc+0x48>
        return 0;
  }
}
 67c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 67f:	31 c0                	xor    %eax,%eax
}
 681:	5b                   	pop    %ebx
 682:	5e                   	pop    %esi
 683:	5f                   	pop    %edi
 684:	5d                   	pop    %ebp
 685:	c3                   	ret    
    if(p->s.size >= nunits){
 686:	89 d0                	mov    %edx,%eax
 688:	89 fa                	mov    %edi,%edx
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 690:	39 ce                	cmp    %ecx,%esi
 692:	74 4c                	je     6e0 <malloc+0xf0>
        p->s.size -= nunits;
 694:	29 f1                	sub    %esi,%ecx
 696:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 699:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 69c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 69f:	89 15 80 0d 00 00    	mov    %edx,0xd80
}
 6a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 6a8:	83 c0 08             	add    $0x8,%eax
}
 6ab:	5b                   	pop    %ebx
 6ac:	5e                   	pop    %esi
 6ad:	5f                   	pop    %edi
 6ae:	5d                   	pop    %ebp
 6af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 6b0:	c7 05 80 0d 00 00 84 	movl   $0xd84,0xd80
 6b7:	0d 00 00 
    base.s.size = 0;
 6ba:	bf 84 0d 00 00       	mov    $0xd84,%edi
    base.s.ptr = freep = prevp = &base;
 6bf:	c7 05 84 0d 00 00 84 	movl   $0xd84,0xd84
 6c6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 6cb:	c7 05 88 0d 00 00 00 	movl   $0x0,0xd88
 6d2:	00 00 00 
    if(p->s.size >= nunits){
 6d5:	e9 42 ff ff ff       	jmp    61c <malloc+0x2c>
 6da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 6e0:	8b 08                	mov    (%eax),%ecx
 6e2:	89 0a                	mov    %ecx,(%edx)
 6e4:	eb b9                	jmp    69f <malloc+0xaf>
