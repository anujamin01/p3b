
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

int
main(int argc, char *argv[])
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
  21:	7e 1f                	jle    42 <main+0x42>
  23:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  27:	90                   	nop
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
  2e:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  31:	e8 ca 00 00 00       	call   100 <ls>
  for(i=1; i<argc; i++)
  36:	83 c4 10             	add    $0x10,%esp
  39:	39 de                	cmp    %ebx,%esi
  3b:	75 eb                	jne    28 <main+0x28>
  exit();
  3d:	e8 81 06 00 00       	call   6c3 <exit>
    ls(".");
  42:	83 ec 0c             	sub    $0xc,%esp
  45:	68 a0 0b 00 00       	push   $0xba0
  4a:	e8 b1 00 00 00       	call   100 <ls>
    exit();
  4f:	e8 6f 06 00 00       	call   6c3 <exit>
  54:	66 90                	xchg   %ax,%ax
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <fmtname>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 75 08             	mov    0x8(%ebp),%esi
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  68:	83 ec 0c             	sub    $0xc,%esp
  6b:	56                   	push   %esi
  6c:	e8 8f 04 00 00       	call   500 <strlen>
  71:	83 c4 10             	add    $0x10,%esp
  74:	01 f0                	add    %esi,%eax
  76:	89 c3                	mov    %eax,%ebx
  78:	73 0f                	jae    89 <fmtname+0x29>
  7a:	eb 12                	jmp    8e <fmtname+0x2e>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  80:	8d 43 ff             	lea    -0x1(%ebx),%eax
  83:	39 c6                	cmp    %eax,%esi
  85:	77 0a                	ja     91 <fmtname+0x31>
  87:	89 c3                	mov    %eax,%ebx
  89:	80 3b 2f             	cmpb   $0x2f,(%ebx)
  8c:	75 f2                	jne    80 <fmtname+0x20>
  p++;
  8e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
  91:	83 ec 0c             	sub    $0xc,%esp
  94:	53                   	push   %ebx
  95:	e8 66 04 00 00       	call   500 <strlen>
  9a:	83 c4 10             	add    $0x10,%esp
  9d:	83 f8 0d             	cmp    $0xd,%eax
  a0:	77 4a                	ja     ec <fmtname+0x8c>
  memmove(buf, p, strlen(p));
  a2:	83 ec 0c             	sub    $0xc,%esp
  a5:	53                   	push   %ebx
  a6:	e8 55 04 00 00       	call   500 <strlen>
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	50                   	push   %eax
  af:	53                   	push   %ebx
  b0:	68 00 10 00 00       	push   $0x1000
  b5:	e8 d6 05 00 00       	call   690 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 1c 24             	mov    %ebx,(%esp)
  bd:	e8 3e 04 00 00       	call   500 <strlen>
  c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  c5:	bb 00 10 00 00       	mov    $0x1000,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	89 c6                	mov    %eax,%esi
  cc:	e8 2f 04 00 00       	call   500 <strlen>
  d1:	ba 0e 00 00 00       	mov    $0xe,%edx
  d6:	83 c4 0c             	add    $0xc,%esp
  d9:	29 f2                	sub    %esi,%edx
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	52                   	push   %edx
  e1:	6a 20                	push   $0x20
  e3:	50                   	push   %eax
  e4:	e8 47 04 00 00       	call   530 <memset>
  return buf;
  e9:	83 c4 10             	add    $0x10,%esp
}
  ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
  ef:	89 d8                	mov    %ebx,%eax
  f1:	5b                   	pop    %ebx
  f2:	5e                   	pop    %esi
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret    
  f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000100 <ls>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 64 02 00 00    	sub    $0x264,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 10f:	6a 00                	push   $0x0
 111:	57                   	push   %edi
 112:	e8 ec 05 00 00       	call   703 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 88 9e 01 00 00    	js     2c0 <ls+0x1c0>
  if(fstat(fd, &st) < 0){
 122:	83 ec 08             	sub    $0x8,%esp
 125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12b:	89 c3                	mov    %eax,%ebx
 12d:	56                   	push   %esi
 12e:	50                   	push   %eax
 12f:	e8 e7 05 00 00       	call   71b <fstat>
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	0f 88 c1 01 00 00    	js     300 <ls+0x200>
  switch(st.type){
 13f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 146:	66 83 f8 01          	cmp    $0x1,%ax
 14a:	74 64                	je     1b0 <ls+0xb0>
 14c:	66 83 f8 02          	cmp    $0x2,%ax
 150:	74 1e                	je     170 <ls+0x70>
  close(fd);
 152:	83 ec 0c             	sub    $0xc,%esp
 155:	53                   	push   %ebx
 156:	e8 90 05 00 00       	call   6eb <close>
 15b:	83 c4 10             	add    $0x10,%esp
}
 15e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 161:	5b                   	pop    %ebx
 162:	5e                   	pop    %esi
 163:	5f                   	pop    %edi
 164:	5d                   	pop    %ebp
 165:	c3                   	ret    
 166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 170:	83 ec 0c             	sub    $0xc,%esp
 173:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 179:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 17f:	57                   	push   %edi
 180:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 186:	e8 d5 fe ff ff       	call   60 <fmtname>
 18b:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 191:	59                   	pop    %ecx
 192:	5f                   	pop    %edi
 193:	52                   	push   %edx
 194:	56                   	push   %esi
 195:	6a 02                	push   $0x2
 197:	50                   	push   %eax
 198:	68 80 0b 00 00       	push   $0xb80
 19d:	6a 01                	push   $0x1
 19f:	e8 8c 06 00 00       	call   830 <printf>
    break;
 1a4:	83 c4 20             	add    $0x20,%esp
 1a7:	eb a9                	jmp    152 <ls+0x52>
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1b0:	83 ec 0c             	sub    $0xc,%esp
 1b3:	57                   	push   %edi
 1b4:	e8 47 03 00 00       	call   500 <strlen>
 1b9:	83 c4 10             	add    $0x10,%esp
 1bc:	83 c0 10             	add    $0x10,%eax
 1bf:	3d 00 02 00 00       	cmp    $0x200,%eax
 1c4:	0f 87 16 01 00 00    	ja     2e0 <ls+0x1e0>
    strcpy(buf, path);
 1ca:	83 ec 08             	sub    $0x8,%esp
 1cd:	57                   	push   %edi
 1ce:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 1d4:	57                   	push   %edi
 1d5:	e8 96 02 00 00       	call   470 <strcpy>
    p = buf+strlen(buf);
 1da:	89 3c 24             	mov    %edi,(%esp)
 1dd:	e8 1e 03 00 00       	call   500 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1e2:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 1e5:	01 f8                	add    %edi,%eax
    *p++ = '/';
 1e7:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 1ea:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 1f0:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 1f6:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	83 ec 04             	sub    $0x4,%esp
 203:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 209:	6a 10                	push   $0x10
 20b:	50                   	push   %eax
 20c:	53                   	push   %ebx
 20d:	e8 c9 04 00 00       	call   6db <read>
 212:	83 c4 10             	add    $0x10,%esp
 215:	83 f8 10             	cmp    $0x10,%eax
 218:	0f 85 34 ff ff ff    	jne    152 <ls+0x52>
      if(de.inum == 0)
 21e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 225:	00 
 226:	74 d8                	je     200 <ls+0x100>
      memmove(p, de.name, DIRSIZ);
 228:	83 ec 04             	sub    $0x4,%esp
 22b:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 231:	6a 0e                	push   $0xe
 233:	50                   	push   %eax
 234:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 23a:	e8 51 04 00 00       	call   690 <memmove>
      p[DIRSIZ] = 0;
 23f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 245:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 249:	58                   	pop    %eax
 24a:	5a                   	pop    %edx
 24b:	56                   	push   %esi
 24c:	57                   	push   %edi
 24d:	e8 ae 03 00 00       	call   600 <stat>
 252:	83 c4 10             	add    $0x10,%esp
 255:	85 c0                	test   %eax,%eax
 257:	0f 88 cb 00 00 00    	js     328 <ls+0x228>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 25d:	83 ec 0c             	sub    $0xc,%esp
 260:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 266:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 26c:	57                   	push   %edi
 26d:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 274:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 27a:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 280:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 286:	e8 d5 fd ff ff       	call   60 <fmtname>
 28b:	5a                   	pop    %edx
 28c:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 292:	59                   	pop    %ecx
 293:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 299:	51                   	push   %ecx
 29a:	52                   	push   %edx
 29b:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 2a1:	50                   	push   %eax
 2a2:	68 80 0b 00 00       	push   $0xb80
 2a7:	6a 01                	push   $0x1
 2a9:	e8 82 05 00 00       	call   830 <printf>
 2ae:	83 c4 20             	add    $0x20,%esp
 2b1:	e9 4a ff ff ff       	jmp    200 <ls+0x100>
 2b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	57                   	push   %edi
 2c4:	68 58 0b 00 00       	push   $0xb58
 2c9:	6a 02                	push   $0x2
 2cb:	e8 60 05 00 00       	call   830 <printf>
    return;
 2d0:	83 c4 10             	add    $0x10,%esp
}
 2d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d6:	5b                   	pop    %ebx
 2d7:	5e                   	pop    %esi
 2d8:	5f                   	pop    %edi
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret    
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop
      printf(1, "ls: path too long\n");
 2e0:	83 ec 08             	sub    $0x8,%esp
 2e3:	68 8d 0b 00 00       	push   $0xb8d
 2e8:	6a 01                	push   $0x1
 2ea:	e8 41 05 00 00       	call   830 <printf>
      break;
 2ef:	83 c4 10             	add    $0x10,%esp
 2f2:	e9 5b fe ff ff       	jmp    152 <ls+0x52>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot stat %s\n", path);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	57                   	push   %edi
 304:	68 6c 0b 00 00       	push   $0xb6c
 309:	6a 02                	push   $0x2
 30b:	e8 20 05 00 00       	call   830 <printf>
    close(fd);
 310:	89 1c 24             	mov    %ebx,(%esp)
 313:	e8 d3 03 00 00       	call   6eb <close>
    return;
 318:	83 c4 10             	add    $0x10,%esp
}
 31b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31e:	5b                   	pop    %ebx
 31f:	5e                   	pop    %esi
 320:	5f                   	pop    %edi
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
        printf(1, "ls: cannot stat %s\n", buf);
 328:	83 ec 04             	sub    $0x4,%esp
 32b:	57                   	push   %edi
 32c:	68 6c 0b 00 00       	push   $0xb6c
 331:	6a 01                	push   $0x1
 333:	e8 f8 04 00 00       	call   830 <printf>
        continue;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 c0 fe ff ff       	jmp    200 <ls+0x100>

00000340 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 345:	31 db                	xor    %ebx,%ebx
 347:	eb 0f                	jmp    358 <thread_create+0x18>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 350:	83 c3 01             	add    $0x1,%ebx
 353:	83 fb 40             	cmp    $0x40,%ebx
 356:	74 60                	je     3b8 <thread_create+0x78>
    if (inUse[i] == 0){
 358:	8b 04 9d 20 10 00 00 	mov    0x1020(,%ebx,4),%eax
 35f:	85 c0                	test   %eax,%eax
 361:	75 ed                	jne    350 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 363:	a1 f0 0f 00 00       	mov    0xff0,%eax
 368:	83 ec 0c             	sub    $0xc,%esp
 36b:	01 c0                	add    %eax,%eax
 36d:	50                   	push   %eax
 36e:	e8 ed 06 00 00       	call   a60 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 373:	8b 35 f0 0f 00 00    	mov    0xff0,%esi
 379:	83 c4 10             	add    $0x10,%esp
 37c:	99                   	cltd   
      malloc_addrs[i] = stack;
 37d:	89 04 9d 20 11 00 00 	mov    %eax,0x1120(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 384:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 386:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 388:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 38b:	29 d6                	sub    %edx,%esi
 38d:	01 f1                	add    %esi,%ecx
 38f:	85 d2                	test   %edx,%edx
 391:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 394:	51                   	push   %ecx
 395:	ff 75 10             	push   0x10(%ebp)
 398:	ff 75 0c             	push   0xc(%ebp)
 39b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 39e:	89 0c 9d 20 12 00 00 	mov    %ecx,0x1220(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 3a5:	e8 b9 03 00 00       	call   763 <clone>
 3aa:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 3ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b0:	5b                   	pop    %ebx
 3b1:	5e                   	pop    %esi
 3b2:	5d                   	pop    %ebp
 3b3:	c3                   	ret    
 3b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 3bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 3c0:	5b                   	pop    %ebx
 3c1:	5e                   	pop    %esi
 3c2:	5d                   	pop    %ebp
 3c3:	c3                   	ret    
 3c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <thread_join>:

int 
thread_join()
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 3d5:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 3d8:	31 db                	xor    %ebx,%ebx
{
 3da:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 3dd:	50                   	push   %eax
 3de:	e8 88 03 00 00       	call   76b <join>
 3e3:	83 c4 10             	add    $0x10,%esp
 3e6:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 3e8:	eb 0e                	jmp    3f8 <thread_join+0x28>
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3f0:	83 c3 01             	add    $0x1,%ebx
 3f3:	83 fb 40             	cmp    $0x40,%ebx
 3f6:	74 27                	je     41f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 3f8:	83 3c 9d 20 10 00 00 	cmpl   $0x1,0x1020(,%ebx,4)
 3ff:	01 
 400:	75 ee                	jne    3f0 <thread_join+0x20>
      free(malloc_addrs[i]);
 402:	83 ec 0c             	sub    $0xc,%esp
 405:	ff 34 9d 20 11 00 00 	push   0x1120(,%ebx,4)
 40c:	e8 bf 05 00 00       	call   9d0 <free>
      inUse[i] = 0;
      break;
 411:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 414:	c7 04 9d 20 10 00 00 	movl   $0x0,0x1020(,%ebx,4)
 41b:	00 00 00 00 
    }
  }
  return id;
}
 41f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 422:	89 f0                	mov    %esi,%eax
 424:	5b                   	pop    %ebx
 425:	5e                   	pop    %esi
 426:	5d                   	pop    %ebp
 427:	c3                   	ret    
 428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop

00000430 <lock_init>:

void lock_init(lock_t *lock){
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 433:	8b 45 08             	mov    0x8(%ebp),%eax
 436:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 43c:	5d                   	pop    %ebp
 43d:	c3                   	ret    
 43e:	66 90                	xchg   %ax,%ax

00000440 <lock_acquire>:

void lock_acquire(lock_t *lock){
 440:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 441:	b9 01 00 00 00       	mov    $0x1,%ecx
 446:	89 e5                	mov    %esp,%ebp
 448:	8b 55 08             	mov    0x8(%ebp),%edx
 44b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop
 450:	89 c8                	mov    %ecx,%eax
 452:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 455:	85 c0                	test   %eax,%eax
 457:	75 f7                	jne    450 <lock_acquire+0x10>
}
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <lock_release>:

void lock_release(lock_t *lock){
 460:	55                   	push   %ebp
 461:	31 c0                	xor    %eax,%eax
 463:	89 e5                	mov    %esp,%ebp
 465:	8b 55 08             	mov    0x8(%ebp),%edx
 468:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 46b:	5d                   	pop    %ebp
 46c:	c3                   	ret    
 46d:	8d 76 00             	lea    0x0(%esi),%esi

00000470 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 470:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 471:	31 c0                	xor    %eax,%eax
{
 473:	89 e5                	mov    %esp,%ebp
 475:	53                   	push   %ebx
 476:	8b 4d 08             	mov    0x8(%ebp),%ecx
 479:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 480:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 484:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 487:	83 c0 01             	add    $0x1,%eax
 48a:	84 d2                	test   %dl,%dl
 48c:	75 f2                	jne    480 <strcpy+0x10>
    ;
  return os;
}
 48e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 491:	89 c8                	mov    %ecx,%eax
 493:	c9                   	leave  
 494:	c3                   	ret    
 495:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
 4a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4aa:	0f b6 02             	movzbl (%edx),%eax
 4ad:	84 c0                	test   %al,%al
 4af:	75 17                	jne    4c8 <strcmp+0x28>
 4b1:	eb 3a                	jmp    4ed <strcmp+0x4d>
 4b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b7:	90                   	nop
 4b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 4bc:	83 c2 01             	add    $0x1,%edx
 4bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 4c2:	84 c0                	test   %al,%al
 4c4:	74 1a                	je     4e0 <strcmp+0x40>
    p++, q++;
 4c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 4c8:	0f b6 19             	movzbl (%ecx),%ebx
 4cb:	38 c3                	cmp    %al,%bl
 4cd:	74 e9                	je     4b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 4cf:	29 d8                	sub    %ebx,%eax
}
 4d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d4:	c9                   	leave  
 4d5:	c3                   	ret    
 4d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 4e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 4e4:	31 c0                	xor    %eax,%eax
 4e6:	29 d8                	sub    %ebx,%eax
}
 4e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4eb:	c9                   	leave  
 4ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 4ed:	0f b6 19             	movzbl (%ecx),%ebx
 4f0:	31 c0                	xor    %eax,%eax
 4f2:	eb db                	jmp    4cf <strcmp+0x2f>
 4f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <strlen>:

uint
strlen(const char *s)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 506:	80 3a 00             	cmpb   $0x0,(%edx)
 509:	74 15                	je     520 <strlen+0x20>
 50b:	31 c0                	xor    %eax,%eax
 50d:	8d 76 00             	lea    0x0(%esi),%esi
 510:	83 c0 01             	add    $0x1,%eax
 513:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 517:	89 c1                	mov    %eax,%ecx
 519:	75 f5                	jne    510 <strlen+0x10>
    ;
  return n;
}
 51b:	89 c8                	mov    %ecx,%eax
 51d:	5d                   	pop    %ebp
 51e:	c3                   	ret    
 51f:	90                   	nop
  for(n = 0; s[n]; n++)
 520:	31 c9                	xor    %ecx,%ecx
}
 522:	5d                   	pop    %ebp
 523:	89 c8                	mov    %ecx,%eax
 525:	c3                   	ret    
 526:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <memset>:

void*
memset(void *dst, int c, uint n)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 537:	8b 4d 10             	mov    0x10(%ebp),%ecx
 53a:	8b 45 0c             	mov    0xc(%ebp),%eax
 53d:	89 d7                	mov    %edx,%edi
 53f:	fc                   	cld    
 540:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 542:	8b 7d fc             	mov    -0x4(%ebp),%edi
 545:	89 d0                	mov    %edx,%eax
 547:	c9                   	leave  
 548:	c3                   	ret    
 549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000550 <strchr>:

char*
strchr(const char *s, char c)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	8b 45 08             	mov    0x8(%ebp),%eax
 556:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 55a:	0f b6 10             	movzbl (%eax),%edx
 55d:	84 d2                	test   %dl,%dl
 55f:	75 12                	jne    573 <strchr+0x23>
 561:	eb 1d                	jmp    580 <strchr+0x30>
 563:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 567:	90                   	nop
 568:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 56c:	83 c0 01             	add    $0x1,%eax
 56f:	84 d2                	test   %dl,%dl
 571:	74 0d                	je     580 <strchr+0x30>
    if(*s == c)
 573:	38 d1                	cmp    %dl,%cl
 575:	75 f1                	jne    568 <strchr+0x18>
      return (char*)s;
  return 0;
}
 577:	5d                   	pop    %ebp
 578:	c3                   	ret    
 579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 580:	31 c0                	xor    %eax,%eax
}
 582:	5d                   	pop    %ebp
 583:	c3                   	ret    
 584:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <gets>:

char*
gets(char *buf, int max)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 595:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 598:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 599:	31 db                	xor    %ebx,%ebx
{
 59b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 59e:	eb 27                	jmp    5c7 <gets+0x37>
    cc = read(0, &c, 1);
 5a0:	83 ec 04             	sub    $0x4,%esp
 5a3:	6a 01                	push   $0x1
 5a5:	57                   	push   %edi
 5a6:	6a 00                	push   $0x0
 5a8:	e8 2e 01 00 00       	call   6db <read>
    if(cc < 1)
 5ad:	83 c4 10             	add    $0x10,%esp
 5b0:	85 c0                	test   %eax,%eax
 5b2:	7e 1d                	jle    5d1 <gets+0x41>
      break;
    buf[i++] = c;
 5b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5b8:	8b 55 08             	mov    0x8(%ebp),%edx
 5bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5bf:	3c 0a                	cmp    $0xa,%al
 5c1:	74 1d                	je     5e0 <gets+0x50>
 5c3:	3c 0d                	cmp    $0xd,%al
 5c5:	74 19                	je     5e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 5c7:	89 de                	mov    %ebx,%esi
 5c9:	83 c3 01             	add    $0x1,%ebx
 5cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5cf:	7c cf                	jl     5a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 5d1:	8b 45 08             	mov    0x8(%ebp),%eax
 5d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5db:	5b                   	pop    %ebx
 5dc:	5e                   	pop    %esi
 5dd:	5f                   	pop    %edi
 5de:	5d                   	pop    %ebp
 5df:	c3                   	ret    
  buf[i] = '\0';
 5e0:	8b 45 08             	mov    0x8(%ebp),%eax
 5e3:	89 de                	mov    %ebx,%esi
 5e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 5e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ec:	5b                   	pop    %ebx
 5ed:	5e                   	pop    %esi
 5ee:	5f                   	pop    %edi
 5ef:	5d                   	pop    %ebp
 5f0:	c3                   	ret    
 5f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop

00000600 <stat>:

int
stat(const char *n, struct stat *st)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	56                   	push   %esi
 604:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 605:	83 ec 08             	sub    $0x8,%esp
 608:	6a 00                	push   $0x0
 60a:	ff 75 08             	push   0x8(%ebp)
 60d:	e8 f1 00 00 00       	call   703 <open>
  if(fd < 0)
 612:	83 c4 10             	add    $0x10,%esp
 615:	85 c0                	test   %eax,%eax
 617:	78 27                	js     640 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 619:	83 ec 08             	sub    $0x8,%esp
 61c:	ff 75 0c             	push   0xc(%ebp)
 61f:	89 c3                	mov    %eax,%ebx
 621:	50                   	push   %eax
 622:	e8 f4 00 00 00       	call   71b <fstat>
  close(fd);
 627:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 62a:	89 c6                	mov    %eax,%esi
  close(fd);
 62c:	e8 ba 00 00 00       	call   6eb <close>
  return r;
 631:	83 c4 10             	add    $0x10,%esp
}
 634:	8d 65 f8             	lea    -0x8(%ebp),%esp
 637:	89 f0                	mov    %esi,%eax
 639:	5b                   	pop    %ebx
 63a:	5e                   	pop    %esi
 63b:	5d                   	pop    %ebp
 63c:	c3                   	ret    
 63d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 640:	be ff ff ff ff       	mov    $0xffffffff,%esi
 645:	eb ed                	jmp    634 <stat+0x34>
 647:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64e:	66 90                	xchg   %ax,%ax

00000650 <atoi>:

int
atoi(const char *s)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	53                   	push   %ebx
 654:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 657:	0f be 02             	movsbl (%edx),%eax
 65a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 65d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 660:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 665:	77 1e                	ja     685 <atoi+0x35>
 667:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 670:	83 c2 01             	add    $0x1,%edx
 673:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 676:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 67a:	0f be 02             	movsbl (%edx),%eax
 67d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 680:	80 fb 09             	cmp    $0x9,%bl
 683:	76 eb                	jbe    670 <atoi+0x20>
  return n;
}
 685:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 688:	89 c8                	mov    %ecx,%eax
 68a:	c9                   	leave  
 68b:	c3                   	ret    
 68c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000690 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	8b 45 10             	mov    0x10(%ebp),%eax
 697:	8b 55 08             	mov    0x8(%ebp),%edx
 69a:	56                   	push   %esi
 69b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 69e:	85 c0                	test   %eax,%eax
 6a0:	7e 13                	jle    6b5 <memmove+0x25>
 6a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 6a4:	89 d7                	mov    %edx,%edi
 6a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 6b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 6b1:	39 f8                	cmp    %edi,%eax
 6b3:	75 fb                	jne    6b0 <memmove+0x20>
  return vdst;
}
 6b5:	5e                   	pop    %esi
 6b6:	89 d0                	mov    %edx,%eax
 6b8:	5f                   	pop    %edi
 6b9:	5d                   	pop    %ebp
 6ba:	c3                   	ret    

000006bb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6bb:	b8 01 00 00 00       	mov    $0x1,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <exit>:
SYSCALL(exit)
 6c3:	b8 02 00 00 00       	mov    $0x2,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <wait>:
SYSCALL(wait)
 6cb:	b8 03 00 00 00       	mov    $0x3,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <pipe>:
SYSCALL(pipe)
 6d3:	b8 04 00 00 00       	mov    $0x4,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <read>:
SYSCALL(read)
 6db:	b8 05 00 00 00       	mov    $0x5,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <write>:
SYSCALL(write)
 6e3:	b8 10 00 00 00       	mov    $0x10,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <close>:
SYSCALL(close)
 6eb:	b8 15 00 00 00       	mov    $0x15,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <kill>:
SYSCALL(kill)
 6f3:	b8 06 00 00 00       	mov    $0x6,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <exec>:
SYSCALL(exec)
 6fb:	b8 07 00 00 00       	mov    $0x7,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <open>:
SYSCALL(open)
 703:	b8 0f 00 00 00       	mov    $0xf,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <mknod>:
SYSCALL(mknod)
 70b:	b8 11 00 00 00       	mov    $0x11,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <unlink>:
SYSCALL(unlink)
 713:	b8 12 00 00 00       	mov    $0x12,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <fstat>:
SYSCALL(fstat)
 71b:	b8 08 00 00 00       	mov    $0x8,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <link>:
SYSCALL(link)
 723:	b8 13 00 00 00       	mov    $0x13,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <mkdir>:
SYSCALL(mkdir)
 72b:	b8 14 00 00 00       	mov    $0x14,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <chdir>:
SYSCALL(chdir)
 733:	b8 09 00 00 00       	mov    $0x9,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <dup>:
SYSCALL(dup)
 73b:	b8 0a 00 00 00       	mov    $0xa,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <getpid>:
SYSCALL(getpid)
 743:	b8 0b 00 00 00       	mov    $0xb,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <sbrk>:
SYSCALL(sbrk)
 74b:	b8 0c 00 00 00       	mov    $0xc,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    

00000753 <sleep>:
SYSCALL(sleep)
 753:	b8 0d 00 00 00       	mov    $0xd,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret    

0000075b <uptime>:
SYSCALL(uptime)
 75b:	b8 0e 00 00 00       	mov    $0xe,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret    

00000763 <clone>:
SYSCALL(clone)
 763:	b8 16 00 00 00       	mov    $0x16,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret    

0000076b <join>:
SYSCALL(join)
 76b:	b8 17 00 00 00       	mov    $0x17,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret    
 773:	66 90                	xchg   %ax,%ax
 775:	66 90                	xchg   %ax,%ax
 777:	66 90                	xchg   %ax,%ax
 779:	66 90                	xchg   %ax,%ax
 77b:	66 90                	xchg   %ax,%ax
 77d:	66 90                	xchg   %ax,%ax
 77f:	90                   	nop

00000780 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 3c             	sub    $0x3c,%esp
 789:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 78c:	89 d1                	mov    %edx,%ecx
{
 78e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 791:	85 d2                	test   %edx,%edx
 793:	0f 89 7f 00 00 00    	jns    818 <printint+0x98>
 799:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 79d:	74 79                	je     818 <printint+0x98>
    neg = 1;
 79f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7a8:	31 db                	xor    %ebx,%ebx
 7aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7b0:	89 c8                	mov    %ecx,%eax
 7b2:	31 d2                	xor    %edx,%edx
 7b4:	89 cf                	mov    %ecx,%edi
 7b6:	f7 75 c4             	divl   -0x3c(%ebp)
 7b9:	0f b6 92 04 0c 00 00 	movzbl 0xc04(%edx),%edx
 7c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7c3:	89 d8                	mov    %ebx,%eax
 7c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7d1:	76 dd                	jbe    7b0 <printint+0x30>
  if(neg)
 7d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7d6:	85 c9                	test   %ecx,%ecx
 7d8:	74 0c                	je     7e6 <printint+0x66>
    buf[i++] = '-';
 7da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7ed:	eb 07                	jmp    7f6 <printint+0x76>
 7ef:	90                   	nop
    putc(fd, buf[i]);
 7f0:	0f b6 13             	movzbl (%ebx),%edx
 7f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7f6:	83 ec 04             	sub    $0x4,%esp
 7f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7fc:	6a 01                	push   $0x1
 7fe:	56                   	push   %esi
 7ff:	57                   	push   %edi
 800:	e8 de fe ff ff       	call   6e3 <write>
  while(--i >= 0)
 805:	83 c4 10             	add    $0x10,%esp
 808:	39 de                	cmp    %ebx,%esi
 80a:	75 e4                	jne    7f0 <printint+0x70>
}
 80c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80f:	5b                   	pop    %ebx
 810:	5e                   	pop    %esi
 811:	5f                   	pop    %edi
 812:	5d                   	pop    %ebp
 813:	c3                   	ret    
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 818:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 81f:	eb 87                	jmp    7a8 <printint+0x28>
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82f:	90                   	nop

00000830 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 839:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 83c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 83f:	0f b6 13             	movzbl (%ebx),%edx
 842:	84 d2                	test   %dl,%dl
 844:	74 6a                	je     8b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 846:	8d 45 10             	lea    0x10(%ebp),%eax
 849:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 84c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 84f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 851:	89 45 d0             	mov    %eax,-0x30(%ebp)
 854:	eb 36                	jmp    88c <printf+0x5c>
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
 860:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 863:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	74 15                	je     882 <printf+0x52>
  write(fd, &c, 1);
 86d:	83 ec 04             	sub    $0x4,%esp
 870:	88 55 e7             	mov    %dl,-0x19(%ebp)
 873:	6a 01                	push   $0x1
 875:	57                   	push   %edi
 876:	56                   	push   %esi
 877:	e8 67 fe ff ff       	call   6e3 <write>
 87c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 87f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 882:	0f b6 13             	movzbl (%ebx),%edx
 885:	83 c3 01             	add    $0x1,%ebx
 888:	84 d2                	test   %dl,%dl
 88a:	74 24                	je     8b0 <printf+0x80>
    c = fmt[i] & 0xff;
 88c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 88f:	85 c9                	test   %ecx,%ecx
 891:	74 cd                	je     860 <printf+0x30>
      }
    } else if(state == '%'){
 893:	83 f9 25             	cmp    $0x25,%ecx
 896:	75 ea                	jne    882 <printf+0x52>
      if(c == 'd'){
 898:	83 f8 25             	cmp    $0x25,%eax
 89b:	0f 84 07 01 00 00    	je     9a8 <printf+0x178>
 8a1:	83 e8 63             	sub    $0x63,%eax
 8a4:	83 f8 15             	cmp    $0x15,%eax
 8a7:	77 17                	ja     8c0 <printf+0x90>
 8a9:	ff 24 85 ac 0b 00 00 	jmp    *0xbac(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8b3:	5b                   	pop    %ebx
 8b4:	5e                   	pop    %esi
 8b5:	5f                   	pop    %edi
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret    
 8b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bf:	90                   	nop
  write(fd, &c, 1);
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8c6:	6a 01                	push   $0x1
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ce:	e8 10 fe ff ff       	call   6e3 <write>
        putc(fd, c);
 8d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8d7:	83 c4 0c             	add    $0xc,%esp
 8da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8dd:	6a 01                	push   $0x1
 8df:	57                   	push   %edi
 8e0:	56                   	push   %esi
 8e1:	e8 fd fd ff ff       	call   6e3 <write>
        putc(fd, c);
 8e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8e9:	31 c9                	xor    %ecx,%ecx
 8eb:	eb 95                	jmp    882 <printf+0x52>
 8ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8f8:	6a 00                	push   $0x0
 8fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fd:	8b 10                	mov    (%eax),%edx
 8ff:	89 f0                	mov    %esi,%eax
 901:	e8 7a fe ff ff       	call   780 <printint>
        ap++;
 906:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 90a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90d:	31 c9                	xor    %ecx,%ecx
 90f:	e9 6e ff ff ff       	jmp    882 <printf+0x52>
 914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 918:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91b:	8b 10                	mov    (%eax),%edx
        ap++;
 91d:	83 c0 04             	add    $0x4,%eax
 920:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 923:	85 d2                	test   %edx,%edx
 925:	0f 84 8d 00 00 00    	je     9b8 <printf+0x188>
        while(*s != 0){
 92b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 92e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 930:	84 c0                	test   %al,%al
 932:	0f 84 4a ff ff ff    	je     882 <printf+0x52>
 938:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 93b:	89 d3                	mov    %edx,%ebx
 93d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
          s++;
 943:	83 c3 01             	add    $0x1,%ebx
 946:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 949:	6a 01                	push   $0x1
 94b:	57                   	push   %edi
 94c:	56                   	push   %esi
 94d:	e8 91 fd ff ff       	call   6e3 <write>
        while(*s != 0){
 952:	0f b6 03             	movzbl (%ebx),%eax
 955:	83 c4 10             	add    $0x10,%esp
 958:	84 c0                	test   %al,%al
 95a:	75 e4                	jne    940 <printf+0x110>
      state = 0;
 95c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 95f:	31 c9                	xor    %ecx,%ecx
 961:	e9 1c ff ff ff       	jmp    882 <printf+0x52>
 966:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 96d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 970:	83 ec 0c             	sub    $0xc,%esp
 973:	b9 0a 00 00 00       	mov    $0xa,%ecx
 978:	6a 01                	push   $0x1
 97a:	e9 7b ff ff ff       	jmp    8fa <printf+0xca>
 97f:	90                   	nop
        putc(fd, *ap);
 980:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 983:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 986:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 988:	6a 01                	push   $0x1
 98a:	57                   	push   %edi
 98b:	56                   	push   %esi
        putc(fd, *ap);
 98c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 98f:	e8 4f fd ff ff       	call   6e3 <write>
        ap++;
 994:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 998:	83 c4 10             	add    $0x10,%esp
      state = 0;
 99b:	31 c9                	xor    %ecx,%ecx
 99d:	e9 e0 fe ff ff       	jmp    882 <printf+0x52>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9ab:	83 ec 04             	sub    $0x4,%esp
 9ae:	e9 2a ff ff ff       	jmp    8dd <printf+0xad>
 9b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9b7:	90                   	nop
          s = "(null)";
 9b8:	ba a2 0b 00 00       	mov    $0xba2,%edx
        while(*s != 0){
 9bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9c0:	b8 28 00 00 00       	mov    $0x28,%eax
 9c5:	89 d3                	mov    %edx,%ebx
 9c7:	e9 74 ff ff ff       	jmp    940 <printf+0x110>
 9cc:	66 90                	xchg   %ax,%ax
 9ce:	66 90                	xchg   %ax,%ax

000009d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	a1 20 13 00 00       	mov    0x1320,%eax
{
 9d6:	89 e5                	mov    %esp,%ebp
 9d8:	57                   	push   %edi
 9d9:	56                   	push   %esi
 9da:	53                   	push   %ebx
 9db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9e8:	89 c2                	mov    %eax,%edx
 9ea:	8b 00                	mov    (%eax),%eax
 9ec:	39 ca                	cmp    %ecx,%edx
 9ee:	73 30                	jae    a20 <free+0x50>
 9f0:	39 c1                	cmp    %eax,%ecx
 9f2:	72 04                	jb     9f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f4:	39 c2                	cmp    %eax,%edx
 9f6:	72 f0                	jb     9e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9fe:	39 f8                	cmp    %edi,%eax
 a00:	74 30                	je     a32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a05:	8b 42 04             	mov    0x4(%edx),%eax
 a08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a0b:	39 f1                	cmp    %esi,%ecx
 a0d:	74 3a                	je     a49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a11:	5b                   	pop    %ebx
  freep = p;
 a12:	89 15 20 13 00 00    	mov    %edx,0x1320
}
 a18:	5e                   	pop    %esi
 a19:	5f                   	pop    %edi
 a1a:	5d                   	pop    %ebp
 a1b:	c3                   	ret    
 a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a20:	39 c2                	cmp    %eax,%edx
 a22:	72 c4                	jb     9e8 <free+0x18>
 a24:	39 c1                	cmp    %eax,%ecx
 a26:	73 c0                	jae    9e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a2e:	39 f8                	cmp    %edi,%eax
 a30:	75 d0                	jne    a02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a32:	03 70 04             	add    0x4(%eax),%esi
 a35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a38:	8b 02                	mov    (%edx),%eax
 a3a:	8b 00                	mov    (%eax),%eax
 a3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a3f:	8b 42 04             	mov    0x4(%edx),%eax
 a42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a45:	39 f1                	cmp    %esi,%ecx
 a47:	75 c6                	jne    a0f <free+0x3f>
    p->s.size += bp->s.size;
 a49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a4c:	89 15 20 13 00 00    	mov    %edx,0x1320
    p->s.size += bp->s.size;
 a52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a58:	89 0a                	mov    %ecx,(%edx)
}
 a5a:	5b                   	pop    %ebx
 a5b:	5e                   	pop    %esi
 a5c:	5f                   	pop    %edi
 a5d:	5d                   	pop    %ebp
 a5e:	c3                   	ret    
 a5f:	90                   	nop

00000a60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a60:	55                   	push   %ebp
 a61:	89 e5                	mov    %esp,%ebp
 a63:	57                   	push   %edi
 a64:	56                   	push   %esi
 a65:	53                   	push   %ebx
 a66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a6c:	8b 3d 20 13 00 00    	mov    0x1320,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a72:	8d 70 07             	lea    0x7(%eax),%esi
 a75:	c1 ee 03             	shr    $0x3,%esi
 a78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a7b:	85 ff                	test   %edi,%edi
 a7d:	0f 84 9d 00 00 00    	je     b20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a85:	8b 4a 04             	mov    0x4(%edx),%ecx
 a88:	39 f1                	cmp    %esi,%ecx
 a8a:	73 6a                	jae    af6 <malloc+0x96>
 a8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a91:	39 de                	cmp    %ebx,%esi
 a93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 aa0:	eb 17                	jmp    ab9 <malloc+0x59>
 aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aaa:	8b 48 04             	mov    0x4(%eax),%ecx
 aad:	39 f1                	cmp    %esi,%ecx
 aaf:	73 4f                	jae    b00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ab1:	8b 3d 20 13 00 00    	mov    0x1320,%edi
 ab7:	89 c2                	mov    %eax,%edx
 ab9:	39 d7                	cmp    %edx,%edi
 abb:	75 eb                	jne    aa8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 abd:	83 ec 0c             	sub    $0xc,%esp
 ac0:	ff 75 e4             	push   -0x1c(%ebp)
 ac3:	e8 83 fc ff ff       	call   74b <sbrk>
  if(p == (char*)-1)
 ac8:	83 c4 10             	add    $0x10,%esp
 acb:	83 f8 ff             	cmp    $0xffffffff,%eax
 ace:	74 1c                	je     aec <malloc+0x8c>
  hp->s.size = nu;
 ad0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ad3:	83 ec 0c             	sub    $0xc,%esp
 ad6:	83 c0 08             	add    $0x8,%eax
 ad9:	50                   	push   %eax
 ada:	e8 f1 fe ff ff       	call   9d0 <free>
  return freep;
 adf:	8b 15 20 13 00 00    	mov    0x1320,%edx
      if((p = morecore(nunits)) == 0)
 ae5:	83 c4 10             	add    $0x10,%esp
 ae8:	85 d2                	test   %edx,%edx
 aea:	75 bc                	jne    aa8 <malloc+0x48>
        return 0;
  }
}
 aec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aef:	31 c0                	xor    %eax,%eax
}
 af1:	5b                   	pop    %ebx
 af2:	5e                   	pop    %esi
 af3:	5f                   	pop    %edi
 af4:	5d                   	pop    %ebp
 af5:	c3                   	ret    
    if(p->s.size >= nunits){
 af6:	89 d0                	mov    %edx,%eax
 af8:	89 fa                	mov    %edi,%edx
 afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b00:	39 ce                	cmp    %ecx,%esi
 b02:	74 4c                	je     b50 <malloc+0xf0>
        p->s.size -= nunits;
 b04:	29 f1                	sub    %esi,%ecx
 b06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b0f:	89 15 20 13 00 00    	mov    %edx,0x1320
}
 b15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b18:	83 c0 08             	add    $0x8,%eax
}
 b1b:	5b                   	pop    %ebx
 b1c:	5e                   	pop    %esi
 b1d:	5f                   	pop    %edi
 b1e:	5d                   	pop    %ebp
 b1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b20:	c7 05 20 13 00 00 24 	movl   $0x1324,0x1320
 b27:	13 00 00 
    base.s.size = 0;
 b2a:	bf 24 13 00 00       	mov    $0x1324,%edi
    base.s.ptr = freep = prevp = &base;
 b2f:	c7 05 24 13 00 00 24 	movl   $0x1324,0x1324
 b36:	13 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b3b:	c7 05 28 13 00 00 00 	movl   $0x0,0x1328
 b42:	00 00 00 
    if(p->s.size >= nunits){
 b45:	e9 42 ff ff ff       	jmp    a8c <malloc+0x2c>
 b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b50:	8b 08                	mov    (%eax),%ecx
 b52:	89 0a                	mov    %ecx,(%edx)
 b54:	eb b9                	jmp    b0f <malloc+0xaf>
