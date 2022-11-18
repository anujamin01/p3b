
_kill:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char **argv)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	bb 01 00 00 00       	mov    $0x1,%ebx
  15:	51                   	push   %ecx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 31                	mov    (%ecx),%esi
  1b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1e:	83 fe 01             	cmp    $0x1,%esi
  21:	7e 27                	jle    4a <main+0x4a>
  23:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  27:	90                   	nop
    printf(2, "usage: kill pid...\n");
    exit();
  }
  for(i=1; i<argc; i++)
    kill(atoi(argv[i]));
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
  2e:	83 c3 01             	add    $0x1,%ebx
    kill(atoi(argv[i]));
  31:	e8 3a 03 00 00       	call   370 <atoi>
  36:	89 04 24             	mov    %eax,(%esp)
  39:	e8 d5 03 00 00       	call   413 <kill>
  for(i=1; i<argc; i++)
  3e:	83 c4 10             	add    $0x10,%esp
  41:	39 de                	cmp    %ebx,%esi
  43:	75 e3                	jne    28 <main+0x28>
  exit();
  45:	e8 99 03 00 00       	call   3e3 <exit>
    printf(2, "usage: kill pid...\n");
  4a:	50                   	push   %eax
  4b:	50                   	push   %eax
  4c:	68 78 08 00 00       	push   $0x878
  51:	6a 02                	push   $0x2
  53:	e8 f8 04 00 00       	call   550 <printf>
    exit();
  58:	e8 86 03 00 00       	call   3e3 <exit>
  5d:	66 90                	xchg   %ax,%ax
  5f:	90                   	nop

00000060 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
  65:	31 db                	xor    %ebx,%ebx
  67:	eb 0f                	jmp    78 <thread_create+0x18>
  69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  70:	83 c3 01             	add    $0x1,%ebx
  73:	83 fb 40             	cmp    $0x40,%ebx
  76:	74 60                	je     d8 <thread_create+0x78>
    if (inUse[i] == 0){
  78:	8b 04 9d 80 0c 00 00 	mov    0xc80(,%ebx,4),%eax
  7f:	85 c0                	test   %eax,%eax
  81:	75 ed                	jne    70 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
  83:	a1 60 0c 00 00       	mov    0xc60,%eax
  88:	83 ec 0c             	sub    $0xc,%esp
  8b:	01 c0                	add    %eax,%eax
  8d:	50                   	push   %eax
  8e:	e8 ed 06 00 00       	call   780 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
  93:	8b 35 60 0c 00 00    	mov    0xc60,%esi
  99:	83 c4 10             	add    $0x10,%esp
  9c:	99                   	cltd   
      malloc_addrs[i] = stack;
  9d:	89 04 9d 80 0d 00 00 	mov    %eax,0xd80(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
  a4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
  a6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
  a8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
  ab:	29 d6                	sub    %edx,%esi
  ad:	01 f1                	add    %esi,%ecx
  af:	85 d2                	test   %edx,%edx
  b1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
  b4:	51                   	push   %ecx
  b5:	ff 75 10             	push   0x10(%ebp)
  b8:	ff 75 0c             	push   0xc(%ebp)
  bb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
  be:	89 0c 9d 80 0e 00 00 	mov    %ecx,0xe80(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
  c5:	e8 b9 03 00 00       	call   483 <clone>
  ca:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
  cd:	8d 65 f8             	lea    -0x8(%ebp),%esp
  d0:	5b                   	pop    %ebx
  d1:	5e                   	pop    %esi
  d2:	5d                   	pop    %ebp
  d3:	c3                   	ret    
  d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  d8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
  db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
  e0:	5b                   	pop    %ebx
  e1:	5e                   	pop    %esi
  e2:	5d                   	pop    %ebp
  e3:	c3                   	ret    
  e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  ef:	90                   	nop

000000f0 <thread_join>:

int 
thread_join()
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	56                   	push   %esi
  f4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
  f5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
  f8:	31 db                	xor    %ebx,%ebx
{
  fa:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
  fd:	50                   	push   %eax
  fe:	e8 88 03 00 00       	call   48b <join>
 103:	83 c4 10             	add    $0x10,%esp
 106:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 108:	eb 0e                	jmp    118 <thread_join+0x28>
 10a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 110:	83 c3 01             	add    $0x1,%ebx
 113:	83 fb 40             	cmp    $0x40,%ebx
 116:	74 27                	je     13f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 118:	83 3c 9d 80 0c 00 00 	cmpl   $0x1,0xc80(,%ebx,4)
 11f:	01 
 120:	75 ee                	jne    110 <thread_join+0x20>
      free(malloc_addrs[i]);
 122:	83 ec 0c             	sub    $0xc,%esp
 125:	ff 34 9d 80 0d 00 00 	push   0xd80(,%ebx,4)
 12c:	e8 bf 05 00 00       	call   6f0 <free>
      inUse[i] = 0;
      break;
 131:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 134:	c7 04 9d 80 0c 00 00 	movl   $0x0,0xc80(,%ebx,4)
 13b:	00 00 00 00 
    }
  }
  return id;
}
 13f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 142:	89 f0                	mov    %esi,%eax
 144:	5b                   	pop    %ebx
 145:	5e                   	pop    %esi
 146:	5d                   	pop    %ebp
 147:	c3                   	ret    
 148:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14f:	90                   	nop

00000150 <lock_init>:

void lock_init(lock_t *lock){
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 15c:	5d                   	pop    %ebp
 15d:	c3                   	ret    
 15e:	66 90                	xchg   %ax,%ax

00000160 <lock_acquire>:

void lock_acquire(lock_t *lock){
 160:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 161:	b9 01 00 00 00       	mov    $0x1,%ecx
 166:	89 e5                	mov    %esp,%ebp
 168:	8b 55 08             	mov    0x8(%ebp),%edx
 16b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 16f:	90                   	nop
 170:	89 c8                	mov    %ecx,%eax
 172:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 175:	85 c0                	test   %eax,%eax
 177:	75 f7                	jne    170 <lock_acquire+0x10>
}
 179:	5d                   	pop    %ebp
 17a:	c3                   	ret    
 17b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 17f:	90                   	nop

00000180 <lock_release>:

void lock_release(lock_t *lock){
 180:	55                   	push   %ebp
 181:	31 c0                	xor    %eax,%eax
 183:	89 e5                	mov    %esp,%ebp
 185:	8b 55 08             	mov    0x8(%ebp),%edx
 188:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret    
 18d:	8d 76 00             	lea    0x0(%esi),%esi

00000190 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 190:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 191:	31 c0                	xor    %eax,%eax
{
 193:	89 e5                	mov    %esp,%ebp
 195:	53                   	push   %ebx
 196:	8b 4d 08             	mov    0x8(%ebp),%ecx
 199:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1a7:	83 c0 01             	add    $0x1,%eax
 1aa:	84 d2                	test   %dl,%dl
 1ac:	75 f2                	jne    1a0 <strcpy+0x10>
    ;
  return os;
}
 1ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1b1:	89 c8                	mov    %ecx,%eax
 1b3:	c9                   	leave  
 1b4:	c3                   	ret    
 1b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	8b 55 08             	mov    0x8(%ebp),%edx
 1c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ca:	0f b6 02             	movzbl (%edx),%eax
 1cd:	84 c0                	test   %al,%al
 1cf:	75 17                	jne    1e8 <strcmp+0x28>
 1d1:	eb 3a                	jmp    20d <strcmp+0x4d>
 1d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1d7:	90                   	nop
 1d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1dc:	83 c2 01             	add    $0x1,%edx
 1df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1e2:	84 c0                	test   %al,%al
 1e4:	74 1a                	je     200 <strcmp+0x40>
    p++, q++;
 1e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1e8:	0f b6 19             	movzbl (%ecx),%ebx
 1eb:	38 c3                	cmp    %al,%bl
 1ed:	74 e9                	je     1d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1ef:	29 d8                	sub    %ebx,%eax
}
 1f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f4:	c9                   	leave  
 1f5:	c3                   	ret    
 1f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 200:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 204:	31 c0                	xor    %eax,%eax
 206:	29 d8                	sub    %ebx,%eax
}
 208:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 20b:	c9                   	leave  
 20c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 20d:	0f b6 19             	movzbl (%ecx),%ebx
 210:	31 c0                	xor    %eax,%eax
 212:	eb db                	jmp    1ef <strcmp+0x2f>
 214:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 21f:	90                   	nop

00000220 <strlen>:

uint
strlen(const char *s)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 226:	80 3a 00             	cmpb   $0x0,(%edx)
 229:	74 15                	je     240 <strlen+0x20>
 22b:	31 c0                	xor    %eax,%eax
 22d:	8d 76 00             	lea    0x0(%esi),%esi
 230:	83 c0 01             	add    $0x1,%eax
 233:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 237:	89 c1                	mov    %eax,%ecx
 239:	75 f5                	jne    230 <strlen+0x10>
    ;
  return n;
}
 23b:	89 c8                	mov    %ecx,%eax
 23d:	5d                   	pop    %ebp
 23e:	c3                   	ret    
 23f:	90                   	nop
  for(n = 0; s[n]; n++)
 240:	31 c9                	xor    %ecx,%ecx
}
 242:	5d                   	pop    %ebp
 243:	89 c8                	mov    %ecx,%eax
 245:	c3                   	ret    
 246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24d:	8d 76 00             	lea    0x0(%esi),%esi

00000250 <memset>:

void*
memset(void *dst, int c, uint n)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 257:	8b 4d 10             	mov    0x10(%ebp),%ecx
 25a:	8b 45 0c             	mov    0xc(%ebp),%eax
 25d:	89 d7                	mov    %edx,%edi
 25f:	fc                   	cld    
 260:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 262:	8b 7d fc             	mov    -0x4(%ebp),%edi
 265:	89 d0                	mov    %edx,%eax
 267:	c9                   	leave  
 268:	c3                   	ret    
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000270 <strchr>:

char*
strchr(const char *s, char c)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 27a:	0f b6 10             	movzbl (%eax),%edx
 27d:	84 d2                	test   %dl,%dl
 27f:	75 12                	jne    293 <strchr+0x23>
 281:	eb 1d                	jmp    2a0 <strchr+0x30>
 283:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 287:	90                   	nop
 288:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 28c:	83 c0 01             	add    $0x1,%eax
 28f:	84 d2                	test   %dl,%dl
 291:	74 0d                	je     2a0 <strchr+0x30>
    if(*s == c)
 293:	38 d1                	cmp    %dl,%cl
 295:	75 f1                	jne    288 <strchr+0x18>
      return (char*)s;
  return 0;
}
 297:	5d                   	pop    %ebp
 298:	c3                   	ret    
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2a0:	31 c0                	xor    %eax,%eax
}
 2a2:	5d                   	pop    %ebp
 2a3:	c3                   	ret    
 2a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <gets>:

char*
gets(char *buf, int max)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2b9:	31 db                	xor    %ebx,%ebx
{
 2bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2be:	eb 27                	jmp    2e7 <gets+0x37>
    cc = read(0, &c, 1);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	6a 01                	push   $0x1
 2c5:	57                   	push   %edi
 2c6:	6a 00                	push   $0x0
 2c8:	e8 2e 01 00 00       	call   3fb <read>
    if(cc < 1)
 2cd:	83 c4 10             	add    $0x10,%esp
 2d0:	85 c0                	test   %eax,%eax
 2d2:	7e 1d                	jle    2f1 <gets+0x41>
      break;
    buf[i++] = c;
 2d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d8:	8b 55 08             	mov    0x8(%ebp),%edx
 2db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2df:	3c 0a                	cmp    $0xa,%al
 2e1:	74 1d                	je     300 <gets+0x50>
 2e3:	3c 0d                	cmp    $0xd,%al
 2e5:	74 19                	je     300 <gets+0x50>
  for(i=0; i+1 < max; ){
 2e7:	89 de                	mov    %ebx,%esi
 2e9:	83 c3 01             	add    $0x1,%ebx
 2ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ef:	7c cf                	jl     2c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2f1:	8b 45 08             	mov    0x8(%ebp),%eax
 2f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fb:	5b                   	pop    %ebx
 2fc:	5e                   	pop    %esi
 2fd:	5f                   	pop    %edi
 2fe:	5d                   	pop    %ebp
 2ff:	c3                   	ret    
  buf[i] = '\0';
 300:	8b 45 08             	mov    0x8(%ebp),%eax
 303:	89 de                	mov    %ebx,%esi
 305:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 309:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30c:	5b                   	pop    %ebx
 30d:	5e                   	pop    %esi
 30e:	5f                   	pop    %edi
 30f:	5d                   	pop    %ebp
 310:	c3                   	ret    
 311:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 318:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31f:	90                   	nop

00000320 <stat>:

int
stat(const char *n, struct stat *st)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 325:	83 ec 08             	sub    $0x8,%esp
 328:	6a 00                	push   $0x0
 32a:	ff 75 08             	push   0x8(%ebp)
 32d:	e8 f1 00 00 00       	call   423 <open>
  if(fd < 0)
 332:	83 c4 10             	add    $0x10,%esp
 335:	85 c0                	test   %eax,%eax
 337:	78 27                	js     360 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 339:	83 ec 08             	sub    $0x8,%esp
 33c:	ff 75 0c             	push   0xc(%ebp)
 33f:	89 c3                	mov    %eax,%ebx
 341:	50                   	push   %eax
 342:	e8 f4 00 00 00       	call   43b <fstat>
  close(fd);
 347:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 34a:	89 c6                	mov    %eax,%esi
  close(fd);
 34c:	e8 ba 00 00 00       	call   40b <close>
  return r;
 351:	83 c4 10             	add    $0x10,%esp
}
 354:	8d 65 f8             	lea    -0x8(%ebp),%esp
 357:	89 f0                	mov    %esi,%eax
 359:	5b                   	pop    %ebx
 35a:	5e                   	pop    %esi
 35b:	5d                   	pop    %ebp
 35c:	c3                   	ret    
 35d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 360:	be ff ff ff ff       	mov    $0xffffffff,%esi
 365:	eb ed                	jmp    354 <stat+0x34>
 367:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36e:	66 90                	xchg   %ax,%ax

00000370 <atoi>:

int
atoi(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 377:	0f be 02             	movsbl (%edx),%eax
 37a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 37d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 380:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 385:	77 1e                	ja     3a5 <atoi+0x35>
 387:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 390:	83 c2 01             	add    $0x1,%edx
 393:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 396:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 39a:	0f be 02             	movsbl (%edx),%eax
 39d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3a0:	80 fb 09             	cmp    $0x9,%bl
 3a3:	76 eb                	jbe    390 <atoi+0x20>
  return n;
}
 3a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a8:	89 c8                	mov    %ecx,%eax
 3aa:	c9                   	leave  
 3ab:	c3                   	ret    
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	8b 45 10             	mov    0x10(%ebp),%eax
 3b7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ba:	56                   	push   %esi
 3bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3be:	85 c0                	test   %eax,%eax
 3c0:	7e 13                	jle    3d5 <memmove+0x25>
 3c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3c4:	89 d7                	mov    %edx,%edi
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3d1:	39 f8                	cmp    %edi,%eax
 3d3:	75 fb                	jne    3d0 <memmove+0x20>
  return vdst;
}
 3d5:	5e                   	pop    %esi
 3d6:	89 d0                	mov    %edx,%eax
 3d8:	5f                   	pop    %edi
 3d9:	5d                   	pop    %ebp
 3da:	c3                   	ret    

000003db <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3db:	b8 01 00 00 00       	mov    $0x1,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret    

000003e3 <exit>:
SYSCALL(exit)
 3e3:	b8 02 00 00 00       	mov    $0x2,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret    

000003eb <wait>:
SYSCALL(wait)
 3eb:	b8 03 00 00 00       	mov    $0x3,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret    

000003f3 <pipe>:
SYSCALL(pipe)
 3f3:	b8 04 00 00 00       	mov    $0x4,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret    

000003fb <read>:
SYSCALL(read)
 3fb:	b8 05 00 00 00       	mov    $0x5,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret    

00000403 <write>:
SYSCALL(write)
 403:	b8 10 00 00 00       	mov    $0x10,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret    

0000040b <close>:
SYSCALL(close)
 40b:	b8 15 00 00 00       	mov    $0x15,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret    

00000413 <kill>:
SYSCALL(kill)
 413:	b8 06 00 00 00       	mov    $0x6,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret    

0000041b <exec>:
SYSCALL(exec)
 41b:	b8 07 00 00 00       	mov    $0x7,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret    

00000423 <open>:
SYSCALL(open)
 423:	b8 0f 00 00 00       	mov    $0xf,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret    

0000042b <mknod>:
SYSCALL(mknod)
 42b:	b8 11 00 00 00       	mov    $0x11,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret    

00000433 <unlink>:
SYSCALL(unlink)
 433:	b8 12 00 00 00       	mov    $0x12,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret    

0000043b <fstat>:
SYSCALL(fstat)
 43b:	b8 08 00 00 00       	mov    $0x8,%eax
 440:	cd 40                	int    $0x40
 442:	c3                   	ret    

00000443 <link>:
SYSCALL(link)
 443:	b8 13 00 00 00       	mov    $0x13,%eax
 448:	cd 40                	int    $0x40
 44a:	c3                   	ret    

0000044b <mkdir>:
SYSCALL(mkdir)
 44b:	b8 14 00 00 00       	mov    $0x14,%eax
 450:	cd 40                	int    $0x40
 452:	c3                   	ret    

00000453 <chdir>:
SYSCALL(chdir)
 453:	b8 09 00 00 00       	mov    $0x9,%eax
 458:	cd 40                	int    $0x40
 45a:	c3                   	ret    

0000045b <dup>:
SYSCALL(dup)
 45b:	b8 0a 00 00 00       	mov    $0xa,%eax
 460:	cd 40                	int    $0x40
 462:	c3                   	ret    

00000463 <getpid>:
SYSCALL(getpid)
 463:	b8 0b 00 00 00       	mov    $0xb,%eax
 468:	cd 40                	int    $0x40
 46a:	c3                   	ret    

0000046b <sbrk>:
SYSCALL(sbrk)
 46b:	b8 0c 00 00 00       	mov    $0xc,%eax
 470:	cd 40                	int    $0x40
 472:	c3                   	ret    

00000473 <sleep>:
SYSCALL(sleep)
 473:	b8 0d 00 00 00       	mov    $0xd,%eax
 478:	cd 40                	int    $0x40
 47a:	c3                   	ret    

0000047b <uptime>:
SYSCALL(uptime)
 47b:	b8 0e 00 00 00       	mov    $0xe,%eax
 480:	cd 40                	int    $0x40
 482:	c3                   	ret    

00000483 <clone>:
SYSCALL(clone)
 483:	b8 16 00 00 00       	mov    $0x16,%eax
 488:	cd 40                	int    $0x40
 48a:	c3                   	ret    

0000048b <join>:
SYSCALL(join)
 48b:	b8 17 00 00 00       	mov    $0x17,%eax
 490:	cd 40                	int    $0x40
 492:	c3                   	ret    
 493:	66 90                	xchg   %ax,%ax
 495:	66 90                	xchg   %ax,%ax
 497:	66 90                	xchg   %ax,%ax
 499:	66 90                	xchg   %ax,%ax
 49b:	66 90                	xchg   %ax,%ax
 49d:	66 90                	xchg   %ax,%ax
 49f:	90                   	nop

000004a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
 4a5:	53                   	push   %ebx
 4a6:	83 ec 3c             	sub    $0x3c,%esp
 4a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4ac:	89 d1                	mov    %edx,%ecx
{
 4ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 4b1:	85 d2                	test   %edx,%edx
 4b3:	0f 89 7f 00 00 00    	jns    538 <printint+0x98>
 4b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4bd:	74 79                	je     538 <printint+0x98>
    neg = 1;
 4bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 4c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 4c8:	31 db                	xor    %ebx,%ebx
 4ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4d0:	89 c8                	mov    %ecx,%eax
 4d2:	31 d2                	xor    %edx,%edx
 4d4:	89 cf                	mov    %ecx,%edi
 4d6:	f7 75 c4             	divl   -0x3c(%ebp)
 4d9:	0f b6 92 ec 08 00 00 	movzbl 0x8ec(%edx),%edx
 4e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 4e3:	89 d8                	mov    %ebx,%eax
 4e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 4e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 4eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 4ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 4f1:	76 dd                	jbe    4d0 <printint+0x30>
  if(neg)
 4f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 4f6:	85 c9                	test   %ecx,%ecx
 4f8:	74 0c                	je     506 <printint+0x66>
    buf[i++] = '-';
 4fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 4ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 501:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 506:	8b 7d b8             	mov    -0x48(%ebp),%edi
 509:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 50d:	eb 07                	jmp    516 <printint+0x76>
 50f:	90                   	nop
    putc(fd, buf[i]);
 510:	0f b6 13             	movzbl (%ebx),%edx
 513:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 516:	83 ec 04             	sub    $0x4,%esp
 519:	88 55 d7             	mov    %dl,-0x29(%ebp)
 51c:	6a 01                	push   $0x1
 51e:	56                   	push   %esi
 51f:	57                   	push   %edi
 520:	e8 de fe ff ff       	call   403 <write>
  while(--i >= 0)
 525:	83 c4 10             	add    $0x10,%esp
 528:	39 de                	cmp    %ebx,%esi
 52a:	75 e4                	jne    510 <printint+0x70>
}
 52c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52f:	5b                   	pop    %ebx
 530:	5e                   	pop    %esi
 531:	5f                   	pop    %edi
 532:	5d                   	pop    %ebp
 533:	c3                   	ret    
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 538:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 53f:	eb 87                	jmp    4c8 <printint+0x28>
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	56                   	push   %esi
 555:	53                   	push   %ebx
 556:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 559:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 55c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 55f:	0f b6 13             	movzbl (%ebx),%edx
 562:	84 d2                	test   %dl,%dl
 564:	74 6a                	je     5d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 566:	8d 45 10             	lea    0x10(%ebp),%eax
 569:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 56c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 56f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 571:	89 45 d0             	mov    %eax,-0x30(%ebp)
 574:	eb 36                	jmp    5ac <printf+0x5c>
 576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
 580:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 583:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 588:	83 f8 25             	cmp    $0x25,%eax
 58b:	74 15                	je     5a2 <printf+0x52>
  write(fd, &c, 1);
 58d:	83 ec 04             	sub    $0x4,%esp
 590:	88 55 e7             	mov    %dl,-0x19(%ebp)
 593:	6a 01                	push   $0x1
 595:	57                   	push   %edi
 596:	56                   	push   %esi
 597:	e8 67 fe ff ff       	call   403 <write>
 59c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 59f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5a2:	0f b6 13             	movzbl (%ebx),%edx
 5a5:	83 c3 01             	add    $0x1,%ebx
 5a8:	84 d2                	test   %dl,%dl
 5aa:	74 24                	je     5d0 <printf+0x80>
    c = fmt[i] & 0xff;
 5ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 5af:	85 c9                	test   %ecx,%ecx
 5b1:	74 cd                	je     580 <printf+0x30>
      }
    } else if(state == '%'){
 5b3:	83 f9 25             	cmp    $0x25,%ecx
 5b6:	75 ea                	jne    5a2 <printf+0x52>
      if(c == 'd'){
 5b8:	83 f8 25             	cmp    $0x25,%eax
 5bb:	0f 84 07 01 00 00    	je     6c8 <printf+0x178>
 5c1:	83 e8 63             	sub    $0x63,%eax
 5c4:	83 f8 15             	cmp    $0x15,%eax
 5c7:	77 17                	ja     5e0 <printf+0x90>
 5c9:	ff 24 85 94 08 00 00 	jmp    *0x894(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5d3:	5b                   	pop    %ebx
 5d4:	5e                   	pop    %esi
 5d5:	5f                   	pop    %edi
 5d6:	5d                   	pop    %ebp
 5d7:	c3                   	ret    
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop
  write(fd, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 5e6:	6a 01                	push   $0x1
 5e8:	57                   	push   %edi
 5e9:	56                   	push   %esi
 5ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5ee:	e8 10 fe ff ff       	call   403 <write>
        putc(fd, c);
 5f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 5f7:	83 c4 0c             	add    $0xc,%esp
 5fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5fd:	6a 01                	push   $0x1
 5ff:	57                   	push   %edi
 600:	56                   	push   %esi
 601:	e8 fd fd ff ff       	call   403 <write>
        putc(fd, c);
 606:	83 c4 10             	add    $0x10,%esp
      state = 0;
 609:	31 c9                	xor    %ecx,%ecx
 60b:	eb 95                	jmp    5a2 <printf+0x52>
 60d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 610:	83 ec 0c             	sub    $0xc,%esp
 613:	b9 10 00 00 00       	mov    $0x10,%ecx
 618:	6a 00                	push   $0x0
 61a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 61d:	8b 10                	mov    (%eax),%edx
 61f:	89 f0                	mov    %esi,%eax
 621:	e8 7a fe ff ff       	call   4a0 <printint>
        ap++;
 626:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 62a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 62d:	31 c9                	xor    %ecx,%ecx
 62f:	e9 6e ff ff ff       	jmp    5a2 <printf+0x52>
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 638:	8b 45 d0             	mov    -0x30(%ebp),%eax
 63b:	8b 10                	mov    (%eax),%edx
        ap++;
 63d:	83 c0 04             	add    $0x4,%eax
 640:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 643:	85 d2                	test   %edx,%edx
 645:	0f 84 8d 00 00 00    	je     6d8 <printf+0x188>
        while(*s != 0){
 64b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 64e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 650:	84 c0                	test   %al,%al
 652:	0f 84 4a ff ff ff    	je     5a2 <printf+0x52>
 658:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 65b:	89 d3                	mov    %edx,%ebx
 65d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
          s++;
 663:	83 c3 01             	add    $0x1,%ebx
 666:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 669:	6a 01                	push   $0x1
 66b:	57                   	push   %edi
 66c:	56                   	push   %esi
 66d:	e8 91 fd ff ff       	call   403 <write>
        while(*s != 0){
 672:	0f b6 03             	movzbl (%ebx),%eax
 675:	83 c4 10             	add    $0x10,%esp
 678:	84 c0                	test   %al,%al
 67a:	75 e4                	jne    660 <printf+0x110>
      state = 0;
 67c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 67f:	31 c9                	xor    %ecx,%ecx
 681:	e9 1c ff ff ff       	jmp    5a2 <printf+0x52>
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 690:	83 ec 0c             	sub    $0xc,%esp
 693:	b9 0a 00 00 00       	mov    $0xa,%ecx
 698:	6a 01                	push   $0x1
 69a:	e9 7b ff ff ff       	jmp    61a <printf+0xca>
 69f:	90                   	nop
        putc(fd, *ap);
 6a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 6a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6a8:	6a 01                	push   $0x1
 6aa:	57                   	push   %edi
 6ab:	56                   	push   %esi
        putc(fd, *ap);
 6ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6af:	e8 4f fd ff ff       	call   403 <write>
        ap++;
 6b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6bb:	31 c9                	xor    %ecx,%ecx
 6bd:	e9 e0 fe ff ff       	jmp    5a2 <printf+0x52>
 6c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 6c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 6cb:	83 ec 04             	sub    $0x4,%esp
 6ce:	e9 2a ff ff ff       	jmp    5fd <printf+0xad>
 6d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6d7:	90                   	nop
          s = "(null)";
 6d8:	ba 8c 08 00 00       	mov    $0x88c,%edx
        while(*s != 0){
 6dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6e0:	b8 28 00 00 00       	mov    $0x28,%eax
 6e5:	89 d3                	mov    %edx,%ebx
 6e7:	e9 74 ff ff ff       	jmp    660 <printf+0x110>
 6ec:	66 90                	xchg   %ax,%ax
 6ee:	66 90                	xchg   %ax,%ax

000006f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f1:	a1 80 0f 00 00       	mov    0xf80,%eax
{
 6f6:	89 e5                	mov    %esp,%ebp
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	53                   	push   %ebx
 6fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	89 c2                	mov    %eax,%edx
 70a:	8b 00                	mov    (%eax),%eax
 70c:	39 ca                	cmp    %ecx,%edx
 70e:	73 30                	jae    740 <free+0x50>
 710:	39 c1                	cmp    %eax,%ecx
 712:	72 04                	jb     718 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 714:	39 c2                	cmp    %eax,%edx
 716:	72 f0                	jb     708 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 718:	8b 73 fc             	mov    -0x4(%ebx),%esi
 71b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 71e:	39 f8                	cmp    %edi,%eax
 720:	74 30                	je     752 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 722:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 725:	8b 42 04             	mov    0x4(%edx),%eax
 728:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 72b:	39 f1                	cmp    %esi,%ecx
 72d:	74 3a                	je     769 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 72f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 731:	5b                   	pop    %ebx
  freep = p;
 732:	89 15 80 0f 00 00    	mov    %edx,0xf80
}
 738:	5e                   	pop    %esi
 739:	5f                   	pop    %edi
 73a:	5d                   	pop    %ebp
 73b:	c3                   	ret    
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 740:	39 c2                	cmp    %eax,%edx
 742:	72 c4                	jb     708 <free+0x18>
 744:	39 c1                	cmp    %eax,%ecx
 746:	73 c0                	jae    708 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 748:	8b 73 fc             	mov    -0x4(%ebx),%esi
 74b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 74e:	39 f8                	cmp    %edi,%eax
 750:	75 d0                	jne    722 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 752:	03 70 04             	add    0x4(%eax),%esi
 755:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 758:	8b 02                	mov    (%edx),%eax
 75a:	8b 00                	mov    (%eax),%eax
 75c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 75f:	8b 42 04             	mov    0x4(%edx),%eax
 762:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 765:	39 f1                	cmp    %esi,%ecx
 767:	75 c6                	jne    72f <free+0x3f>
    p->s.size += bp->s.size;
 769:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 76c:	89 15 80 0f 00 00    	mov    %edx,0xf80
    p->s.size += bp->s.size;
 772:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 775:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 778:	89 0a                	mov    %ecx,(%edx)
}
 77a:	5b                   	pop    %ebx
 77b:	5e                   	pop    %esi
 77c:	5f                   	pop    %edi
 77d:	5d                   	pop    %ebp
 77e:	c3                   	ret    
 77f:	90                   	nop

00000780 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 789:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 78c:	8b 3d 80 0f 00 00    	mov    0xf80,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 792:	8d 70 07             	lea    0x7(%eax),%esi
 795:	c1 ee 03             	shr    $0x3,%esi
 798:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 79b:	85 ff                	test   %edi,%edi
 79d:	0f 84 9d 00 00 00    	je     840 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 7a5:	8b 4a 04             	mov    0x4(%edx),%ecx
 7a8:	39 f1                	cmp    %esi,%ecx
 7aa:	73 6a                	jae    816 <malloc+0x96>
 7ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7b1:	39 de                	cmp    %ebx,%esi
 7b3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 7b6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7c0:	eb 17                	jmp    7d9 <malloc+0x59>
 7c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ca:	8b 48 04             	mov    0x4(%eax),%ecx
 7cd:	39 f1                	cmp    %esi,%ecx
 7cf:	73 4f                	jae    820 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7d1:	8b 3d 80 0f 00 00    	mov    0xf80,%edi
 7d7:	89 c2                	mov    %eax,%edx
 7d9:	39 d7                	cmp    %edx,%edi
 7db:	75 eb                	jne    7c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7dd:	83 ec 0c             	sub    $0xc,%esp
 7e0:	ff 75 e4             	push   -0x1c(%ebp)
 7e3:	e8 83 fc ff ff       	call   46b <sbrk>
  if(p == (char*)-1)
 7e8:	83 c4 10             	add    $0x10,%esp
 7eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ee:	74 1c                	je     80c <malloc+0x8c>
  hp->s.size = nu;
 7f0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7f3:	83 ec 0c             	sub    $0xc,%esp
 7f6:	83 c0 08             	add    $0x8,%eax
 7f9:	50                   	push   %eax
 7fa:	e8 f1 fe ff ff       	call   6f0 <free>
  return freep;
 7ff:	8b 15 80 0f 00 00    	mov    0xf80,%edx
      if((p = morecore(nunits)) == 0)
 805:	83 c4 10             	add    $0x10,%esp
 808:	85 d2                	test   %edx,%edx
 80a:	75 bc                	jne    7c8 <malloc+0x48>
        return 0;
  }
}
 80c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 80f:	31 c0                	xor    %eax,%eax
}
 811:	5b                   	pop    %ebx
 812:	5e                   	pop    %esi
 813:	5f                   	pop    %edi
 814:	5d                   	pop    %ebp
 815:	c3                   	ret    
    if(p->s.size >= nunits){
 816:	89 d0                	mov    %edx,%eax
 818:	89 fa                	mov    %edi,%edx
 81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 820:	39 ce                	cmp    %ecx,%esi
 822:	74 4c                	je     870 <malloc+0xf0>
        p->s.size -= nunits;
 824:	29 f1                	sub    %esi,%ecx
 826:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 829:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 82c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 82f:	89 15 80 0f 00 00    	mov    %edx,0xf80
}
 835:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 838:	83 c0 08             	add    $0x8,%eax
}
 83b:	5b                   	pop    %ebx
 83c:	5e                   	pop    %esi
 83d:	5f                   	pop    %edi
 83e:	5d                   	pop    %ebp
 83f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 840:	c7 05 80 0f 00 00 84 	movl   $0xf84,0xf80
 847:	0f 00 00 
    base.s.size = 0;
 84a:	bf 84 0f 00 00       	mov    $0xf84,%edi
    base.s.ptr = freep = prevp = &base;
 84f:	c7 05 84 0f 00 00 84 	movl   $0xf84,0xf84
 856:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 859:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 85b:	c7 05 88 0f 00 00 00 	movl   $0x0,0xf88
 862:	00 00 00 
    if(p->s.size >= nunits){
 865:	e9 42 ff ff ff       	jmp    7ac <malloc+0x2c>
 86a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 870:	8b 08                	mov    (%eax),%ecx
 872:	89 0a                	mov    %ecx,(%edx)
 874:	eb b9                	jmp    82f <malloc+0xaf>
