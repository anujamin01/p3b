
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
   7:	b8 30 00 00 00       	mov    $0x30,%eax
{
   c:	ff 71 fc             	push   -0x4(%ecx)
   f:	55                   	push   %ebp
  10:	89 e5                	mov    %esp,%ebp
  12:	57                   	push   %edi
  13:	56                   	push   %esi
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
  14:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
{
  1a:	53                   	push   %ebx

  for(i = 0; i < 4; i++)
  1b:	31 db                	xor    %ebx,%ebx
{
  1d:	51                   	push   %ecx
  1e:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
  24:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
  printf(1, "stressfs starting\n");
  2b:	68 58 09 00 00       	push   $0x958
  30:	6a 01                	push   $0x1
  char path[] = "stressfs0";
  32:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
  39:	74 72 65 
  3c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
  43:	73 66 73 
  printf(1, "stressfs starting\n");
  46:	e8 e5 05 00 00       	call   630 <printf>
  memset(data, 'a', sizeof(data));
  4b:	83 c4 0c             	add    $0xc,%esp
  4e:	68 00 02 00 00       	push   $0x200
  53:	6a 61                	push   $0x61
  55:	56                   	push   %esi
  56:	e8 d5 02 00 00       	call   330 <memset>
  5b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
  5e:	e8 58 04 00 00       	call   4bb <fork>
  63:	85 c0                	test   %eax,%eax
  65:	0f 8f bf 00 00 00    	jg     12a <main+0x12a>
  for(i = 0; i < 4; i++)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	83 fb 04             	cmp    $0x4,%ebx
  71:	75 eb                	jne    5e <main+0x5e>
  73:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
  78:	83 ec 04             	sub    $0x4,%esp
  7b:	53                   	push   %ebx

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  7c:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
  81:	68 6b 09 00 00       	push   $0x96b
  86:	6a 01                	push   $0x1
  88:	e8 a3 05 00 00       	call   630 <printf>
  path[8] += i;
  8d:	89 f8                	mov    %edi,%eax
  fd = open(path, O_CREATE | O_RDWR);
  8f:	5f                   	pop    %edi
  path[8] += i;
  90:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
  96:	58                   	pop    %eax
  97:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  9d:	68 02 02 00 00       	push   $0x202
  a2:	50                   	push   %eax
  a3:	e8 5b 04 00 00       	call   503 <open>
  a8:	83 c4 10             	add    $0x10,%esp
  ab:	89 c7                	mov    %eax,%edi
  for(i = 0; i < 20; i++)
  ad:	8d 76 00             	lea    0x0(%esi),%esi
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  b0:	83 ec 04             	sub    $0x4,%esp
  b3:	68 00 02 00 00       	push   $0x200
  b8:	56                   	push   %esi
  b9:	57                   	push   %edi
  ba:	e8 24 04 00 00       	call   4e3 <write>
  for(i = 0; i < 20; i++)
  bf:	83 c4 10             	add    $0x10,%esp
  c2:	83 eb 01             	sub    $0x1,%ebx
  c5:	75 e9                	jne    b0 <main+0xb0>
  close(fd);
  c7:	83 ec 0c             	sub    $0xc,%esp
  ca:	57                   	push   %edi
  cb:	e8 1b 04 00 00       	call   4eb <close>

  printf(1, "read\n");
  d0:	58                   	pop    %eax
  d1:	5a                   	pop    %edx
  d2:	68 75 09 00 00       	push   $0x975
  d7:	6a 01                	push   $0x1
  d9:	e8 52 05 00 00       	call   630 <printf>

  fd = open(path, O_RDONLY);
  de:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  e4:	59                   	pop    %ecx
  e5:	5b                   	pop    %ebx
  e6:	6a 00                	push   $0x0
  e8:	bb 14 00 00 00       	mov    $0x14,%ebx
  ed:	50                   	push   %eax
  ee:	e8 10 04 00 00       	call   503 <open>
  f3:	83 c4 10             	add    $0x10,%esp
  f6:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
  f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  ff:	90                   	nop
    read(fd, data, sizeof(data));
 100:	83 ec 04             	sub    $0x4,%esp
 103:	68 00 02 00 00       	push   $0x200
 108:	56                   	push   %esi
 109:	57                   	push   %edi
 10a:	e8 cc 03 00 00       	call   4db <read>
  for (i = 0; i < 20; i++)
 10f:	83 c4 10             	add    $0x10,%esp
 112:	83 eb 01             	sub    $0x1,%ebx
 115:	75 e9                	jne    100 <main+0x100>
  close(fd);
 117:	83 ec 0c             	sub    $0xc,%esp
 11a:	57                   	push   %edi
 11b:	e8 cb 03 00 00       	call   4eb <close>

  wait();
 120:	e8 a6 03 00 00       	call   4cb <wait>

  exit();
 125:	e8 99 03 00 00       	call   4c3 <exit>
  path[8] += i;
 12a:	89 df                	mov    %ebx,%edi
 12c:	e9 47 ff ff ff       	jmp    78 <main+0x78>
 131:	66 90                	xchg   %ax,%ax
 133:	66 90                	xchg   %ax,%ax
 135:	66 90                	xchg   %ax,%ax
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	56                   	push   %esi
 144:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 145:	31 db                	xor    %ebx,%ebx
 147:	eb 0f                	jmp    158 <thread_create+0x18>
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 150:	83 c3 01             	add    $0x1,%ebx
 153:	83 fb 40             	cmp    $0x40,%ebx
 156:	74 60                	je     1b8 <thread_create+0x78>
    if (inUse[i] == 0){
 158:	8b 04 9d 60 0d 00 00 	mov    0xd60(,%ebx,4),%eax
 15f:	85 c0                	test   %eax,%eax
 161:	75 ed                	jne    150 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 163:	a1 50 0d 00 00       	mov    0xd50,%eax
 168:	83 ec 0c             	sub    $0xc,%esp
 16b:	01 c0                	add    %eax,%eax
 16d:	50                   	push   %eax
 16e:	e8 ed 06 00 00       	call   860 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 173:	8b 35 50 0d 00 00    	mov    0xd50,%esi
 179:	83 c4 10             	add    $0x10,%esp
 17c:	99                   	cltd   
      malloc_addrs[i] = stack;
 17d:	89 04 9d 60 0e 00 00 	mov    %eax,0xe60(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 184:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 186:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 188:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 18b:	29 d6                	sub    %edx,%esi
 18d:	01 f1                	add    %esi,%ecx
 18f:	85 d2                	test   %edx,%edx
 191:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 194:	51                   	push   %ecx
 195:	ff 75 10             	push   0x10(%ebp)
 198:	ff 75 0c             	push   0xc(%ebp)
 19b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 19e:	89 0c 9d 60 0f 00 00 	mov    %ecx,0xf60(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 1a5:	e8 b9 03 00 00       	call   563 <clone>
 1aa:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 1ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b0:	5b                   	pop    %ebx
 1b1:	5e                   	pop    %esi
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    
 1b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 1bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 1c0:	5b                   	pop    %ebx
 1c1:	5e                   	pop    %esi
 1c2:	5d                   	pop    %ebp
 1c3:	c3                   	ret    
 1c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <thread_join>:

int 
thread_join()
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	56                   	push   %esi
 1d4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 1d5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 1d8:	31 db                	xor    %ebx,%ebx
{
 1da:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 1dd:	50                   	push   %eax
 1de:	e8 88 03 00 00       	call   56b <join>
 1e3:	83 c4 10             	add    $0x10,%esp
 1e6:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 1e8:	eb 0e                	jmp    1f8 <thread_join+0x28>
 1ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1f0:	83 c3 01             	add    $0x1,%ebx
 1f3:	83 fb 40             	cmp    $0x40,%ebx
 1f6:	74 27                	je     21f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 1f8:	83 3c 9d 60 0d 00 00 	cmpl   $0x1,0xd60(,%ebx,4)
 1ff:	01 
 200:	75 ee                	jne    1f0 <thread_join+0x20>
      free(malloc_addrs[i]);
 202:	83 ec 0c             	sub    $0xc,%esp
 205:	ff 34 9d 60 0e 00 00 	push   0xe60(,%ebx,4)
 20c:	e8 bf 05 00 00       	call   7d0 <free>
      inUse[i] = 0;
      break;
 211:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 214:	c7 04 9d 60 0d 00 00 	movl   $0x0,0xd60(,%ebx,4)
 21b:	00 00 00 00 
    }
  }
  return id;
}
 21f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 222:	89 f0                	mov    %esi,%eax
 224:	5b                   	pop    %ebx
 225:	5e                   	pop    %esi
 226:	5d                   	pop    %ebp
 227:	c3                   	ret    
 228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <lock_init>:

void lock_init(lock_t *lock){
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 233:	8b 45 08             	mov    0x8(%ebp),%eax
 236:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 23c:	5d                   	pop    %ebp
 23d:	c3                   	ret    
 23e:	66 90                	xchg   %ax,%ax

00000240 <lock_acquire>:

void lock_acquire(lock_t *lock){
 240:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 241:	b9 01 00 00 00       	mov    $0x1,%ecx
 246:	89 e5                	mov    %esp,%ebp
 248:	8b 55 08             	mov    0x8(%ebp),%edx
 24b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 24f:	90                   	nop
 250:	89 c8                	mov    %ecx,%eax
 252:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 255:	85 c0                	test   %eax,%eax
 257:	75 f7                	jne    250 <lock_acquire+0x10>
}
 259:	5d                   	pop    %ebp
 25a:	c3                   	ret    
 25b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 25f:	90                   	nop

00000260 <lock_release>:

void lock_release(lock_t *lock){
 260:	55                   	push   %ebp
 261:	31 c0                	xor    %eax,%eax
 263:	89 e5                	mov    %esp,%ebp
 265:	8b 55 08             	mov    0x8(%ebp),%edx
 268:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 26b:	5d                   	pop    %ebp
 26c:	c3                   	ret    
 26d:	8d 76 00             	lea    0x0(%esi),%esi

00000270 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 270:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 271:	31 c0                	xor    %eax,%eax
{
 273:	89 e5                	mov    %esp,%ebp
 275:	53                   	push   %ebx
 276:	8b 4d 08             	mov    0x8(%ebp),%ecx
 279:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 280:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 284:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 287:	83 c0 01             	add    $0x1,%eax
 28a:	84 d2                	test   %dl,%dl
 28c:	75 f2                	jne    280 <strcpy+0x10>
    ;
  return os;
}
 28e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 291:	89 c8                	mov    %ecx,%eax
 293:	c9                   	leave  
 294:	c3                   	ret    
 295:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	53                   	push   %ebx
 2a4:	8b 55 08             	mov    0x8(%ebp),%edx
 2a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2aa:	0f b6 02             	movzbl (%edx),%eax
 2ad:	84 c0                	test   %al,%al
 2af:	75 17                	jne    2c8 <strcmp+0x28>
 2b1:	eb 3a                	jmp    2ed <strcmp+0x4d>
 2b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b7:	90                   	nop
 2b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2bc:	83 c2 01             	add    $0x1,%edx
 2bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2c2:	84 c0                	test   %al,%al
 2c4:	74 1a                	je     2e0 <strcmp+0x40>
    p++, q++;
 2c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2c8:	0f b6 19             	movzbl (%ecx),%ebx
 2cb:	38 c3                	cmp    %al,%bl
 2cd:	74 e9                	je     2b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2cf:	29 d8                	sub    %ebx,%eax
}
 2d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2d4:	c9                   	leave  
 2d5:	c3                   	ret    
 2d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2e4:	31 c0                	xor    %eax,%eax
 2e6:	29 d8                	sub    %ebx,%eax
}
 2e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2eb:	c9                   	leave  
 2ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ed:	0f b6 19             	movzbl (%ecx),%ebx
 2f0:	31 c0                	xor    %eax,%eax
 2f2:	eb db                	jmp    2cf <strcmp+0x2f>
 2f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ff:	90                   	nop

00000300 <strlen>:

uint
strlen(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 306:	80 3a 00             	cmpb   $0x0,(%edx)
 309:	74 15                	je     320 <strlen+0x20>
 30b:	31 c0                	xor    %eax,%eax
 30d:	8d 76 00             	lea    0x0(%esi),%esi
 310:	83 c0 01             	add    $0x1,%eax
 313:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 317:	89 c1                	mov    %eax,%ecx
 319:	75 f5                	jne    310 <strlen+0x10>
    ;
  return n;
}
 31b:	89 c8                	mov    %ecx,%eax
 31d:	5d                   	pop    %ebp
 31e:	c3                   	ret    
 31f:	90                   	nop
  for(n = 0; s[n]; n++)
 320:	31 c9                	xor    %ecx,%ecx
}
 322:	5d                   	pop    %ebp
 323:	89 c8                	mov    %ecx,%eax
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <memset>:

void*
memset(void *dst, int c, uint n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 337:	8b 4d 10             	mov    0x10(%ebp),%ecx
 33a:	8b 45 0c             	mov    0xc(%ebp),%eax
 33d:	89 d7                	mov    %edx,%edi
 33f:	fc                   	cld    
 340:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 342:	8b 7d fc             	mov    -0x4(%ebp),%edi
 345:	89 d0                	mov    %edx,%eax
 347:	c9                   	leave  
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <strchr>:

char*
strchr(const char *s, char c)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 35a:	0f b6 10             	movzbl (%eax),%edx
 35d:	84 d2                	test   %dl,%dl
 35f:	75 12                	jne    373 <strchr+0x23>
 361:	eb 1d                	jmp    380 <strchr+0x30>
 363:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 367:	90                   	nop
 368:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 36c:	83 c0 01             	add    $0x1,%eax
 36f:	84 d2                	test   %dl,%dl
 371:	74 0d                	je     380 <strchr+0x30>
    if(*s == c)
 373:	38 d1                	cmp    %dl,%cl
 375:	75 f1                	jne    368 <strchr+0x18>
      return (char*)s;
  return 0;
}
 377:	5d                   	pop    %ebp
 378:	c3                   	ret    
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 380:	31 c0                	xor    %eax,%eax
}
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <gets>:

char*
gets(char *buf, int max)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 395:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 398:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 399:	31 db                	xor    %ebx,%ebx
{
 39b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 39e:	eb 27                	jmp    3c7 <gets+0x37>
    cc = read(0, &c, 1);
 3a0:	83 ec 04             	sub    $0x4,%esp
 3a3:	6a 01                	push   $0x1
 3a5:	57                   	push   %edi
 3a6:	6a 00                	push   $0x0
 3a8:	e8 2e 01 00 00       	call   4db <read>
    if(cc < 1)
 3ad:	83 c4 10             	add    $0x10,%esp
 3b0:	85 c0                	test   %eax,%eax
 3b2:	7e 1d                	jle    3d1 <gets+0x41>
      break;
    buf[i++] = c;
 3b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3bf:	3c 0a                	cmp    $0xa,%al
 3c1:	74 1d                	je     3e0 <gets+0x50>
 3c3:	3c 0d                	cmp    $0xd,%al
 3c5:	74 19                	je     3e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 3c7:	89 de                	mov    %ebx,%esi
 3c9:	83 c3 01             	add    $0x1,%ebx
 3cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3cf:	7c cf                	jl     3a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3d1:	8b 45 08             	mov    0x8(%ebp),%eax
 3d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3db:	5b                   	pop    %ebx
 3dc:	5e                   	pop    %esi
 3dd:	5f                   	pop    %edi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    
  buf[i] = '\0';
 3e0:	8b 45 08             	mov    0x8(%ebp),%eax
 3e3:	89 de                	mov    %ebx,%esi
 3e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ec:	5b                   	pop    %ebx
 3ed:	5e                   	pop    %esi
 3ee:	5f                   	pop    %edi
 3ef:	5d                   	pop    %ebp
 3f0:	c3                   	ret    
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <stat>:

int
stat(const char *n, struct stat *st)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	56                   	push   %esi
 404:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 405:	83 ec 08             	sub    $0x8,%esp
 408:	6a 00                	push   $0x0
 40a:	ff 75 08             	push   0x8(%ebp)
 40d:	e8 f1 00 00 00       	call   503 <open>
  if(fd < 0)
 412:	83 c4 10             	add    $0x10,%esp
 415:	85 c0                	test   %eax,%eax
 417:	78 27                	js     440 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 419:	83 ec 08             	sub    $0x8,%esp
 41c:	ff 75 0c             	push   0xc(%ebp)
 41f:	89 c3                	mov    %eax,%ebx
 421:	50                   	push   %eax
 422:	e8 f4 00 00 00       	call   51b <fstat>
  close(fd);
 427:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 42a:	89 c6                	mov    %eax,%esi
  close(fd);
 42c:	e8 ba 00 00 00       	call   4eb <close>
  return r;
 431:	83 c4 10             	add    $0x10,%esp
}
 434:	8d 65 f8             	lea    -0x8(%ebp),%esp
 437:	89 f0                	mov    %esi,%eax
 439:	5b                   	pop    %ebx
 43a:	5e                   	pop    %esi
 43b:	5d                   	pop    %ebp
 43c:	c3                   	ret    
 43d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 440:	be ff ff ff ff       	mov    $0xffffffff,%esi
 445:	eb ed                	jmp    434 <stat+0x34>
 447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44e:	66 90                	xchg   %ax,%ax

00000450 <atoi>:

int
atoi(const char *s)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 457:	0f be 02             	movsbl (%edx),%eax
 45a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 45d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 460:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 465:	77 1e                	ja     485 <atoi+0x35>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 470:	83 c2 01             	add    $0x1,%edx
 473:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 476:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 47a:	0f be 02             	movsbl (%edx),%eax
 47d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 480:	80 fb 09             	cmp    $0x9,%bl
 483:	76 eb                	jbe    470 <atoi+0x20>
  return n;
}
 485:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 488:	89 c8                	mov    %ecx,%eax
 48a:	c9                   	leave  
 48b:	c3                   	ret    
 48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	8b 45 10             	mov    0x10(%ebp),%eax
 497:	8b 55 08             	mov    0x8(%ebp),%edx
 49a:	56                   	push   %esi
 49b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 49e:	85 c0                	test   %eax,%eax
 4a0:	7e 13                	jle    4b5 <memmove+0x25>
 4a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4a4:	89 d7                	mov    %edx,%edi
 4a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4b1:	39 f8                	cmp    %edi,%eax
 4b3:	75 fb                	jne    4b0 <memmove+0x20>
  return vdst;
}
 4b5:	5e                   	pop    %esi
 4b6:	89 d0                	mov    %edx,%eax
 4b8:	5f                   	pop    %edi
 4b9:	5d                   	pop    %ebp
 4ba:	c3                   	ret    

000004bb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4bb:	b8 01 00 00 00       	mov    $0x1,%eax
 4c0:	cd 40                	int    $0x40
 4c2:	c3                   	ret    

000004c3 <exit>:
SYSCALL(exit)
 4c3:	b8 02 00 00 00       	mov    $0x2,%eax
 4c8:	cd 40                	int    $0x40
 4ca:	c3                   	ret    

000004cb <wait>:
SYSCALL(wait)
 4cb:	b8 03 00 00 00       	mov    $0x3,%eax
 4d0:	cd 40                	int    $0x40
 4d2:	c3                   	ret    

000004d3 <pipe>:
SYSCALL(pipe)
 4d3:	b8 04 00 00 00       	mov    $0x4,%eax
 4d8:	cd 40                	int    $0x40
 4da:	c3                   	ret    

000004db <read>:
SYSCALL(read)
 4db:	b8 05 00 00 00       	mov    $0x5,%eax
 4e0:	cd 40                	int    $0x40
 4e2:	c3                   	ret    

000004e3 <write>:
SYSCALL(write)
 4e3:	b8 10 00 00 00       	mov    $0x10,%eax
 4e8:	cd 40                	int    $0x40
 4ea:	c3                   	ret    

000004eb <close>:
SYSCALL(close)
 4eb:	b8 15 00 00 00       	mov    $0x15,%eax
 4f0:	cd 40                	int    $0x40
 4f2:	c3                   	ret    

000004f3 <kill>:
SYSCALL(kill)
 4f3:	b8 06 00 00 00       	mov    $0x6,%eax
 4f8:	cd 40                	int    $0x40
 4fa:	c3                   	ret    

000004fb <exec>:
SYSCALL(exec)
 4fb:	b8 07 00 00 00       	mov    $0x7,%eax
 500:	cd 40                	int    $0x40
 502:	c3                   	ret    

00000503 <open>:
SYSCALL(open)
 503:	b8 0f 00 00 00       	mov    $0xf,%eax
 508:	cd 40                	int    $0x40
 50a:	c3                   	ret    

0000050b <mknod>:
SYSCALL(mknod)
 50b:	b8 11 00 00 00       	mov    $0x11,%eax
 510:	cd 40                	int    $0x40
 512:	c3                   	ret    

00000513 <unlink>:
SYSCALL(unlink)
 513:	b8 12 00 00 00       	mov    $0x12,%eax
 518:	cd 40                	int    $0x40
 51a:	c3                   	ret    

0000051b <fstat>:
SYSCALL(fstat)
 51b:	b8 08 00 00 00       	mov    $0x8,%eax
 520:	cd 40                	int    $0x40
 522:	c3                   	ret    

00000523 <link>:
SYSCALL(link)
 523:	b8 13 00 00 00       	mov    $0x13,%eax
 528:	cd 40                	int    $0x40
 52a:	c3                   	ret    

0000052b <mkdir>:
SYSCALL(mkdir)
 52b:	b8 14 00 00 00       	mov    $0x14,%eax
 530:	cd 40                	int    $0x40
 532:	c3                   	ret    

00000533 <chdir>:
SYSCALL(chdir)
 533:	b8 09 00 00 00       	mov    $0x9,%eax
 538:	cd 40                	int    $0x40
 53a:	c3                   	ret    

0000053b <dup>:
SYSCALL(dup)
 53b:	b8 0a 00 00 00       	mov    $0xa,%eax
 540:	cd 40                	int    $0x40
 542:	c3                   	ret    

00000543 <getpid>:
SYSCALL(getpid)
 543:	b8 0b 00 00 00       	mov    $0xb,%eax
 548:	cd 40                	int    $0x40
 54a:	c3                   	ret    

0000054b <sbrk>:
SYSCALL(sbrk)
 54b:	b8 0c 00 00 00       	mov    $0xc,%eax
 550:	cd 40                	int    $0x40
 552:	c3                   	ret    

00000553 <sleep>:
SYSCALL(sleep)
 553:	b8 0d 00 00 00       	mov    $0xd,%eax
 558:	cd 40                	int    $0x40
 55a:	c3                   	ret    

0000055b <uptime>:
SYSCALL(uptime)
 55b:	b8 0e 00 00 00       	mov    $0xe,%eax
 560:	cd 40                	int    $0x40
 562:	c3                   	ret    

00000563 <clone>:
SYSCALL(clone)
 563:	b8 16 00 00 00       	mov    $0x16,%eax
 568:	cd 40                	int    $0x40
 56a:	c3                   	ret    

0000056b <join>:
SYSCALL(join)
 56b:	b8 17 00 00 00       	mov    $0x17,%eax
 570:	cd 40                	int    $0x40
 572:	c3                   	ret    
 573:	66 90                	xchg   %ax,%ax
 575:	66 90                	xchg   %ax,%ax
 577:	66 90                	xchg   %ax,%ax
 579:	66 90                	xchg   %ax,%ax
 57b:	66 90                	xchg   %ax,%ax
 57d:	66 90                	xchg   %ax,%ax
 57f:	90                   	nop

00000580 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
 586:	83 ec 3c             	sub    $0x3c,%esp
 589:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 58c:	89 d1                	mov    %edx,%ecx
{
 58e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 591:	85 d2                	test   %edx,%edx
 593:	0f 89 7f 00 00 00    	jns    618 <printint+0x98>
 599:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 59d:	74 79                	je     618 <printint+0x98>
    neg = 1;
 59f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5a8:	31 db                	xor    %ebx,%ebx
 5aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5b0:	89 c8                	mov    %ecx,%eax
 5b2:	31 d2                	xor    %edx,%edx
 5b4:	89 cf                	mov    %ecx,%edi
 5b6:	f7 75 c4             	divl   -0x3c(%ebp)
 5b9:	0f b6 92 dc 09 00 00 	movzbl 0x9dc(%edx),%edx
 5c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5c3:	89 d8                	mov    %ebx,%eax
 5c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5d1:	76 dd                	jbe    5b0 <printint+0x30>
  if(neg)
 5d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5d6:	85 c9                	test   %ecx,%ecx
 5d8:	74 0c                	je     5e6 <printint+0x66>
    buf[i++] = '-';
 5da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5ed:	eb 07                	jmp    5f6 <printint+0x76>
 5ef:	90                   	nop
    putc(fd, buf[i]);
 5f0:	0f b6 13             	movzbl (%ebx),%edx
 5f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5f6:	83 ec 04             	sub    $0x4,%esp
 5f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5fc:	6a 01                	push   $0x1
 5fe:	56                   	push   %esi
 5ff:	57                   	push   %edi
 600:	e8 de fe ff ff       	call   4e3 <write>
  while(--i >= 0)
 605:	83 c4 10             	add    $0x10,%esp
 608:	39 de                	cmp    %ebx,%esi
 60a:	75 e4                	jne    5f0 <printint+0x70>
}
 60c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60f:	5b                   	pop    %ebx
 610:	5e                   	pop    %esi
 611:	5f                   	pop    %edi
 612:	5d                   	pop    %ebp
 613:	c3                   	ret    
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 618:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 61f:	eb 87                	jmp    5a8 <printint+0x28>
 621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 628:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 639:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 63c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 63f:	0f b6 13             	movzbl (%ebx),%edx
 642:	84 d2                	test   %dl,%dl
 644:	74 6a                	je     6b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 646:	8d 45 10             	lea    0x10(%ebp),%eax
 649:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 64c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 64f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 651:	89 45 d0             	mov    %eax,-0x30(%ebp)
 654:	eb 36                	jmp    68c <printf+0x5c>
 656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
 660:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 663:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 668:	83 f8 25             	cmp    $0x25,%eax
 66b:	74 15                	je     682 <printf+0x52>
  write(fd, &c, 1);
 66d:	83 ec 04             	sub    $0x4,%esp
 670:	88 55 e7             	mov    %dl,-0x19(%ebp)
 673:	6a 01                	push   $0x1
 675:	57                   	push   %edi
 676:	56                   	push   %esi
 677:	e8 67 fe ff ff       	call   4e3 <write>
 67c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 67f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 682:	0f b6 13             	movzbl (%ebx),%edx
 685:	83 c3 01             	add    $0x1,%ebx
 688:	84 d2                	test   %dl,%dl
 68a:	74 24                	je     6b0 <printf+0x80>
    c = fmt[i] & 0xff;
 68c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 68f:	85 c9                	test   %ecx,%ecx
 691:	74 cd                	je     660 <printf+0x30>
      }
    } else if(state == '%'){
 693:	83 f9 25             	cmp    $0x25,%ecx
 696:	75 ea                	jne    682 <printf+0x52>
      if(c == 'd'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	0f 84 07 01 00 00    	je     7a8 <printf+0x178>
 6a1:	83 e8 63             	sub    $0x63,%eax
 6a4:	83 f8 15             	cmp    $0x15,%eax
 6a7:	77 17                	ja     6c0 <printf+0x90>
 6a9:	ff 24 85 84 09 00 00 	jmp    *0x984(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6b3:	5b                   	pop    %ebx
 6b4:	5e                   	pop    %esi
 6b5:	5f                   	pop    %edi
 6b6:	5d                   	pop    %ebp
 6b7:	c3                   	ret    
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
 6c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6c6:	6a 01                	push   $0x1
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6ce:	e8 10 fe ff ff       	call   4e3 <write>
        putc(fd, c);
 6d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6d7:	83 c4 0c             	add    $0xc,%esp
 6da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6dd:	6a 01                	push   $0x1
 6df:	57                   	push   %edi
 6e0:	56                   	push   %esi
 6e1:	e8 fd fd ff ff       	call   4e3 <write>
        putc(fd, c);
 6e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6e9:	31 c9                	xor    %ecx,%ecx
 6eb:	eb 95                	jmp    682 <printf+0x52>
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6f0:	83 ec 0c             	sub    $0xc,%esp
 6f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6f8:	6a 00                	push   $0x0
 6fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6fd:	8b 10                	mov    (%eax),%edx
 6ff:	89 f0                	mov    %esi,%eax
 701:	e8 7a fe ff ff       	call   580 <printint>
        ap++;
 706:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 70a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 70d:	31 c9                	xor    %ecx,%ecx
 70f:	e9 6e ff ff ff       	jmp    682 <printf+0x52>
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 718:	8b 45 d0             	mov    -0x30(%ebp),%eax
 71b:	8b 10                	mov    (%eax),%edx
        ap++;
 71d:	83 c0 04             	add    $0x4,%eax
 720:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 723:	85 d2                	test   %edx,%edx
 725:	0f 84 8d 00 00 00    	je     7b8 <printf+0x188>
        while(*s != 0){
 72b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 72e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 730:	84 c0                	test   %al,%al
 732:	0f 84 4a ff ff ff    	je     682 <printf+0x52>
 738:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 73b:	89 d3                	mov    %edx,%ebx
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 740:	83 ec 04             	sub    $0x4,%esp
          s++;
 743:	83 c3 01             	add    $0x1,%ebx
 746:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 749:	6a 01                	push   $0x1
 74b:	57                   	push   %edi
 74c:	56                   	push   %esi
 74d:	e8 91 fd ff ff       	call   4e3 <write>
        while(*s != 0){
 752:	0f b6 03             	movzbl (%ebx),%eax
 755:	83 c4 10             	add    $0x10,%esp
 758:	84 c0                	test   %al,%al
 75a:	75 e4                	jne    740 <printf+0x110>
      state = 0;
 75c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 75f:	31 c9                	xor    %ecx,%ecx
 761:	e9 1c ff ff ff       	jmp    682 <printf+0x52>
 766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 0a 00 00 00       	mov    $0xa,%ecx
 778:	6a 01                	push   $0x1
 77a:	e9 7b ff ff ff       	jmp    6fa <printf+0xca>
 77f:	90                   	nop
        putc(fd, *ap);
 780:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 783:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 786:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 788:	6a 01                	push   $0x1
 78a:	57                   	push   %edi
 78b:	56                   	push   %esi
        putc(fd, *ap);
 78c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 78f:	e8 4f fd ff ff       	call   4e3 <write>
        ap++;
 794:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 798:	83 c4 10             	add    $0x10,%esp
      state = 0;
 79b:	31 c9                	xor    %ecx,%ecx
 79d:	e9 e0 fe ff ff       	jmp    682 <printf+0x52>
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7ab:	83 ec 04             	sub    $0x4,%esp
 7ae:	e9 2a ff ff ff       	jmp    6dd <printf+0xad>
 7b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7b7:	90                   	nop
          s = "(null)";
 7b8:	ba 7b 09 00 00       	mov    $0x97b,%edx
        while(*s != 0){
 7bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7c0:	b8 28 00 00 00       	mov    $0x28,%eax
 7c5:	89 d3                	mov    %edx,%ebx
 7c7:	e9 74 ff ff ff       	jmp    740 <printf+0x110>
 7cc:	66 90                	xchg   %ax,%ax
 7ce:	66 90                	xchg   %ax,%ax

000007d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7d1:	a1 60 10 00 00       	mov    0x1060,%eax
{
 7d6:	89 e5                	mov    %esp,%ebp
 7d8:	57                   	push   %edi
 7d9:	56                   	push   %esi
 7da:	53                   	push   %ebx
 7db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7e8:	89 c2                	mov    %eax,%edx
 7ea:	8b 00                	mov    (%eax),%eax
 7ec:	39 ca                	cmp    %ecx,%edx
 7ee:	73 30                	jae    820 <free+0x50>
 7f0:	39 c1                	cmp    %eax,%ecx
 7f2:	72 04                	jb     7f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7f4:	39 c2                	cmp    %eax,%edx
 7f6:	72 f0                	jb     7e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7fe:	39 f8                	cmp    %edi,%eax
 800:	74 30                	je     832 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 802:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 805:	8b 42 04             	mov    0x4(%edx),%eax
 808:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 80b:	39 f1                	cmp    %esi,%ecx
 80d:	74 3a                	je     849 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 80f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 811:	5b                   	pop    %ebx
  freep = p;
 812:	89 15 60 10 00 00    	mov    %edx,0x1060
}
 818:	5e                   	pop    %esi
 819:	5f                   	pop    %edi
 81a:	5d                   	pop    %ebp
 81b:	c3                   	ret    
 81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 820:	39 c2                	cmp    %eax,%edx
 822:	72 c4                	jb     7e8 <free+0x18>
 824:	39 c1                	cmp    %eax,%ecx
 826:	73 c0                	jae    7e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 828:	8b 73 fc             	mov    -0x4(%ebx),%esi
 82b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82e:	39 f8                	cmp    %edi,%eax
 830:	75 d0                	jne    802 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 832:	03 70 04             	add    0x4(%eax),%esi
 835:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 838:	8b 02                	mov    (%edx),%eax
 83a:	8b 00                	mov    (%eax),%eax
 83c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 83f:	8b 42 04             	mov    0x4(%edx),%eax
 842:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 845:	39 f1                	cmp    %esi,%ecx
 847:	75 c6                	jne    80f <free+0x3f>
    p->s.size += bp->s.size;
 849:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 84c:	89 15 60 10 00 00    	mov    %edx,0x1060
    p->s.size += bp->s.size;
 852:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 855:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 858:	89 0a                	mov    %ecx,(%edx)
}
 85a:	5b                   	pop    %ebx
 85b:	5e                   	pop    %esi
 85c:	5f                   	pop    %edi
 85d:	5d                   	pop    %ebp
 85e:	c3                   	ret    
 85f:	90                   	nop

00000860 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 869:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 86c:	8b 3d 60 10 00 00    	mov    0x1060,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 872:	8d 70 07             	lea    0x7(%eax),%esi
 875:	c1 ee 03             	shr    $0x3,%esi
 878:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 87b:	85 ff                	test   %edi,%edi
 87d:	0f 84 9d 00 00 00    	je     920 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 883:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 885:	8b 4a 04             	mov    0x4(%edx),%ecx
 888:	39 f1                	cmp    %esi,%ecx
 88a:	73 6a                	jae    8f6 <malloc+0x96>
 88c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 891:	39 de                	cmp    %ebx,%esi
 893:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 896:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 89d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8a0:	eb 17                	jmp    8b9 <malloc+0x59>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8aa:	8b 48 04             	mov    0x4(%eax),%ecx
 8ad:	39 f1                	cmp    %esi,%ecx
 8af:	73 4f                	jae    900 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8b1:	8b 3d 60 10 00 00    	mov    0x1060,%edi
 8b7:	89 c2                	mov    %eax,%edx
 8b9:	39 d7                	cmp    %edx,%edi
 8bb:	75 eb                	jne    8a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8bd:	83 ec 0c             	sub    $0xc,%esp
 8c0:	ff 75 e4             	push   -0x1c(%ebp)
 8c3:	e8 83 fc ff ff       	call   54b <sbrk>
  if(p == (char*)-1)
 8c8:	83 c4 10             	add    $0x10,%esp
 8cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ce:	74 1c                	je     8ec <malloc+0x8c>
  hp->s.size = nu;
 8d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8d3:	83 ec 0c             	sub    $0xc,%esp
 8d6:	83 c0 08             	add    $0x8,%eax
 8d9:	50                   	push   %eax
 8da:	e8 f1 fe ff ff       	call   7d0 <free>
  return freep;
 8df:	8b 15 60 10 00 00    	mov    0x1060,%edx
      if((p = morecore(nunits)) == 0)
 8e5:	83 c4 10             	add    $0x10,%esp
 8e8:	85 d2                	test   %edx,%edx
 8ea:	75 bc                	jne    8a8 <malloc+0x48>
        return 0;
  }
}
 8ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8ef:	31 c0                	xor    %eax,%eax
}
 8f1:	5b                   	pop    %ebx
 8f2:	5e                   	pop    %esi
 8f3:	5f                   	pop    %edi
 8f4:	5d                   	pop    %ebp
 8f5:	c3                   	ret    
    if(p->s.size >= nunits){
 8f6:	89 d0                	mov    %edx,%eax
 8f8:	89 fa                	mov    %edi,%edx
 8fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 900:	39 ce                	cmp    %ecx,%esi
 902:	74 4c                	je     950 <malloc+0xf0>
        p->s.size -= nunits;
 904:	29 f1                	sub    %esi,%ecx
 906:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 909:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 90c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 90f:	89 15 60 10 00 00    	mov    %edx,0x1060
}
 915:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 918:	83 c0 08             	add    $0x8,%eax
}
 91b:	5b                   	pop    %ebx
 91c:	5e                   	pop    %esi
 91d:	5f                   	pop    %edi
 91e:	5d                   	pop    %ebp
 91f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 920:	c7 05 60 10 00 00 64 	movl   $0x1064,0x1060
 927:	10 00 00 
    base.s.size = 0;
 92a:	bf 64 10 00 00       	mov    $0x1064,%edi
    base.s.ptr = freep = prevp = &base;
 92f:	c7 05 64 10 00 00 64 	movl   $0x1064,0x1064
 936:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 939:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 93b:	c7 05 68 10 00 00 00 	movl   $0x0,0x1068
 942:	00 00 00 
    if(p->s.size >= nunits){
 945:	e9 42 ff ff ff       	jmp    88c <malloc+0x2c>
 94a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 950:	8b 08                	mov    (%eax),%ecx
 952:	89 0a                	mov    %ecx,(%edx)
 954:	eb b9                	jmp    90f <malloc+0xaf>
