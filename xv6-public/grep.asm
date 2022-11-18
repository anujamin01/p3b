
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
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
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
  1c:	83 f8 01             	cmp    $0x1,%eax
  1f:	7e 6f                	jle    90 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
  27:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
  2b:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
  30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
  33:	75 2d                	jne    62 <main+0x62>
  35:	eb 6c                	jmp    a3 <main+0xa3>
  37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3e:	66 90                	xchg   %ax,%ax
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
  40:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
  43:	83 c6 01             	add    $0x1,%esi
  46:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
  49:	50                   	push   %eax
  4a:	ff 75 e0             	push   -0x20(%ebp)
  4d:	e8 7e 01 00 00       	call   1d0 <grep>
    close(fd);
  52:	89 3c 24             	mov    %edi,(%esp)
  55:	e8 c1 06 00 00       	call   71b <close>
  for(i = 2; i < argc; i++){
  5a:	83 c4 10             	add    $0x10,%esp
  5d:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  60:	7e 29                	jle    8b <main+0x8b>
    if((fd = open(argv[i], 0)) < 0){
  62:	83 ec 08             	sub    $0x8,%esp
  65:	6a 00                	push   $0x0
  67:	ff 33                	push   (%ebx)
  69:	e8 c5 06 00 00       	call   733 <open>
  6e:	83 c4 10             	add    $0x10,%esp
  71:	89 c7                	mov    %eax,%edi
  73:	85 c0                	test   %eax,%eax
  75:	79 c9                	jns    40 <main+0x40>
      printf(1, "grep: cannot open %s\n", argv[i]);
  77:	50                   	push   %eax
  78:	ff 33                	push   (%ebx)
  7a:	68 a8 0b 00 00       	push   $0xba8
  7f:	6a 01                	push   $0x1
  81:	e8 da 07 00 00       	call   860 <printf>
      exit();
  86:	e8 68 06 00 00       	call   6f3 <exit>
  }
  exit();
  8b:	e8 63 06 00 00       	call   6f3 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
  90:	51                   	push   %ecx
  91:	51                   	push   %ecx
  92:	68 88 0b 00 00       	push   $0xb88
  97:	6a 02                	push   $0x2
  99:	e8 c2 07 00 00       	call   860 <printf>
    exit();
  9e:	e8 50 06 00 00       	call   6f3 <exit>
    grep(pattern, 0);
  a3:	52                   	push   %edx
  a4:	52                   	push   %edx
  a5:	6a 00                	push   $0x0
  a7:	50                   	push   %eax
  a8:	e8 23 01 00 00       	call   1d0 <grep>
    exit();
  ad:	e8 41 06 00 00       	call   6f3 <exit>
  b2:	66 90                	xchg   %ax,%ax
  b4:	66 90                	xchg   %ax,%ax
  b6:	66 90                	xchg   %ax,%ax
  b8:	66 90                	xchg   %ax,%ax
  ba:	66 90                	xchg   %ax,%ax
  bc:	66 90                	xchg   %ax,%ax
  be:	66 90                	xchg   %ax,%ax

000000c0 <matchhere>:
  return 0;
}

// matchhere: search for re at beginning of text
int matchhere(char *re, char *text)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  c6:	83 ec 0c             	sub    $0xc,%esp
  c9:	8b 75 08             	mov    0x8(%ebp),%esi
  cc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
  cf:	0f b6 06             	movzbl (%esi),%eax
  d2:	84 c0                	test   %al,%al
  d4:	75 2d                	jne    103 <matchhere+0x43>
  d6:	e9 7d 00 00 00       	jmp    158 <matchhere+0x98>
  db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  df:	90                   	nop
    return 1;
  if(re[1] == '*')
    return matchstar(re[0], re+2, text);
  if(re[0] == '$' && re[1] == '\0')
    return *text == '\0';
  e0:	0f b6 0f             	movzbl (%edi),%ecx
  if(re[0] == '$' && re[1] == '\0')
  e3:	80 fb 24             	cmp    $0x24,%bl
  e6:	75 04                	jne    ec <matchhere+0x2c>
  e8:	84 c0                	test   %al,%al
  ea:	74 79                	je     165 <matchhere+0xa5>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
  ec:	84 c9                	test   %cl,%cl
  ee:	74 58                	je     148 <matchhere+0x88>
  f0:	38 d9                	cmp    %bl,%cl
  f2:	74 05                	je     f9 <matchhere+0x39>
  f4:	80 fb 2e             	cmp    $0x2e,%bl
  f7:	75 4f                	jne    148 <matchhere+0x88>
    return matchhere(re+1, text+1);
  f9:	83 c7 01             	add    $0x1,%edi
  fc:	83 c6 01             	add    $0x1,%esi
  if(re[0] == '\0')
  ff:	84 c0                	test   %al,%al
 101:	74 55                	je     158 <matchhere+0x98>
  if(re[1] == '*')
 103:	0f be d8             	movsbl %al,%ebx
 106:	0f b6 46 01          	movzbl 0x1(%esi),%eax
 10a:	3c 2a                	cmp    $0x2a,%al
 10c:	75 d2                	jne    e0 <matchhere+0x20>
    return matchstar(re[0], re+2, text);
 10e:	83 c6 02             	add    $0x2,%esi
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
 111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
 118:	83 ec 08             	sub    $0x8,%esp
 11b:	57                   	push   %edi
 11c:	56                   	push   %esi
 11d:	e8 9e ff ff ff       	call   c0 <matchhere>
 122:	83 c4 10             	add    $0x10,%esp
 125:	85 c0                	test   %eax,%eax
 127:	75 2f                	jne    158 <matchhere+0x98>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 129:	0f be 17             	movsbl (%edi),%edx
 12c:	84 d2                	test   %dl,%dl
 12e:	74 0c                	je     13c <matchhere+0x7c>
 130:	83 c7 01             	add    $0x1,%edi
 133:	83 fb 2e             	cmp    $0x2e,%ebx
 136:	74 e0                	je     118 <matchhere+0x58>
 138:	39 da                	cmp    %ebx,%edx
 13a:	74 dc                	je     118 <matchhere+0x58>
}
 13c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5f                   	pop    %edi
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 148:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
 14b:	31 c0                	xor    %eax,%eax
}
 14d:	5b                   	pop    %ebx
 14e:	5e                   	pop    %esi
 14f:	5f                   	pop    %edi
 150:	5d                   	pop    %ebp
 151:	c3                   	ret    
 152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 158:	8d 65 f4             	lea    -0xc(%ebp),%esp
    return 1;
 15b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5f                   	pop    %edi
 163:	5d                   	pop    %ebp
 164:	c3                   	ret    
    return *text == '\0';
 165:	31 c0                	xor    %eax,%eax
 167:	84 c9                	test   %cl,%cl
 169:	0f 94 c0             	sete   %al
 16c:	eb ce                	jmp    13c <matchhere+0x7c>
 16e:	66 90                	xchg   %ax,%ax

00000170 <match>:
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	56                   	push   %esi
 174:	53                   	push   %ebx
 175:	8b 5d 08             	mov    0x8(%ebp),%ebx
 178:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(re[0] == '^')
 17b:	80 3b 5e             	cmpb   $0x5e,(%ebx)
 17e:	75 11                	jne    191 <match+0x21>
 180:	eb 2e                	jmp    1b0 <match+0x40>
 182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 188:	83 c6 01             	add    $0x1,%esi
 18b:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
 18f:	74 16                	je     1a7 <match+0x37>
    if(matchhere(re, text))
 191:	83 ec 08             	sub    $0x8,%esp
 194:	56                   	push   %esi
 195:	53                   	push   %ebx
 196:	e8 25 ff ff ff       	call   c0 <matchhere>
 19b:	83 c4 10             	add    $0x10,%esp
 19e:	85 c0                	test   %eax,%eax
 1a0:	74 e6                	je     188 <match+0x18>
      return 1;
 1a2:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	66 90                	xchg   %ax,%ax
    return matchhere(re+1, text);
 1b0:	83 c3 01             	add    $0x1,%ebx
 1b3:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
 1b6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b9:	5b                   	pop    %ebx
 1ba:	5e                   	pop    %esi
 1bb:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 1bc:	e9 ff fe ff ff       	jmp    c0 <matchhere>
 1c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <grep>:
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
 1d5:	53                   	push   %ebx
 1d6:	83 ec 1c             	sub    $0x1c,%esp
 1d9:	8b 7d 08             	mov    0x8(%ebp),%edi
  m = 0;
 1dc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    return matchhere(re+1, text);
 1e3:	8d 47 01             	lea    0x1(%edi),%eax
 1e6:	89 45 d8             	mov    %eax,-0x28(%ebp)
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 1f0:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 1f3:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 1f8:	83 ec 04             	sub    $0x4,%esp
 1fb:	29 c8                	sub    %ecx,%eax
 1fd:	50                   	push   %eax
 1fe:	8d 81 80 10 00 00    	lea    0x1080(%ecx),%eax
 204:	50                   	push   %eax
 205:	ff 75 0c             	push   0xc(%ebp)
 208:	e8 fe 04 00 00       	call   70b <read>
 20d:	83 c4 10             	add    $0x10,%esp
 210:	85 c0                	test   %eax,%eax
 212:	0f 8e e5 00 00 00    	jle    2fd <grep+0x12d>
    m += n;
 218:	01 45 dc             	add    %eax,-0x24(%ebp)
 21b:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    p = buf;
 21e:	c7 45 e4 80 10 00 00 	movl   $0x1080,-0x1c(%ebp)
    buf[m] = '\0';
 225:	c6 81 80 10 00 00 00 	movb   $0x0,0x1080(%ecx)
    while((q = strchr(p, '\n')) != 0){
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 230:	83 ec 08             	sub    $0x8,%esp
 233:	6a 0a                	push   $0xa
 235:	ff 75 e4             	push   -0x1c(%ebp)
 238:	e8 43 03 00 00       	call   580 <strchr>
 23d:	83 c4 10             	add    $0x10,%esp
 240:	89 c3                	mov    %eax,%ebx
 242:	85 c0                	test   %eax,%eax
 244:	74 72                	je     2b8 <grep+0xe8>
      *q = 0;
 246:	c6 03 00             	movb   $0x0,(%ebx)
        write(1, p, q+1 - p);
 249:	8d 43 01             	lea    0x1(%ebx),%eax
  if(re[0] == '^')
 24c:	80 3f 5e             	cmpb   $0x5e,(%edi)
        write(1, p, q+1 - p);
 24f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 252:	8b 75 e4             	mov    -0x1c(%ebp),%esi
  if(re[0] == '^')
 255:	75 12                	jne    269 <grep+0x99>
 257:	eb 47                	jmp    2a0 <grep+0xd0>
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  }while(*text++ != '\0');
 260:	83 c6 01             	add    $0x1,%esi
 263:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
 267:	74 2b                	je     294 <grep+0xc4>
    if(matchhere(re, text))
 269:	83 ec 08             	sub    $0x8,%esp
 26c:	56                   	push   %esi
 26d:	57                   	push   %edi
 26e:	e8 4d fe ff ff       	call   c0 <matchhere>
 273:	83 c4 10             	add    $0x10,%esp
 276:	85 c0                	test   %eax,%eax
 278:	74 e6                	je     260 <grep+0x90>
        write(1, p, q+1 - p);
 27a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 27d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 280:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
 283:	c6 03 0a             	movb   $0xa,(%ebx)
        write(1, p, q+1 - p);
 286:	29 d0                	sub    %edx,%eax
 288:	50                   	push   %eax
 289:	52                   	push   %edx
 28a:	6a 01                	push   $0x1
 28c:	e8 82 04 00 00       	call   713 <write>
 291:	83 c4 10             	add    $0x10,%esp
      p = q+1;
 294:	8b 45 e0             	mov    -0x20(%ebp),%eax
 297:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 29a:	eb 94                	jmp    230 <grep+0x60>
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return matchhere(re+1, text);
 2a0:	83 ec 08             	sub    $0x8,%esp
 2a3:	56                   	push   %esi
 2a4:	ff 75 d8             	push   -0x28(%ebp)
 2a7:	e8 14 fe ff ff       	call   c0 <matchhere>
 2ac:	83 c4 10             	add    $0x10,%esp
      if(match(pattern, p)){
 2af:	85 c0                	test   %eax,%eax
 2b1:	74 e1                	je     294 <grep+0xc4>
 2b3:	eb c5                	jmp    27a <grep+0xaa>
 2b5:	8d 76 00             	lea    0x0(%esi),%esi
    if(p == buf)
 2b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 2bb:	81 fa 80 10 00 00    	cmp    $0x1080,%edx
 2c1:	74 2e                	je     2f1 <grep+0x121>
    if(m > 0){
 2c3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 2c6:	85 c9                	test   %ecx,%ecx
 2c8:	0f 8e 22 ff ff ff    	jle    1f0 <grep+0x20>
      m -= p - buf;
 2ce:	89 d0                	mov    %edx,%eax
      memmove(buf, p, m);
 2d0:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 2d3:	2d 80 10 00 00       	sub    $0x1080,%eax
 2d8:	29 c1                	sub    %eax,%ecx
      memmove(buf, p, m);
 2da:	51                   	push   %ecx
 2db:	52                   	push   %edx
 2dc:	68 80 10 00 00       	push   $0x1080
      m -= p - buf;
 2e1:	89 4d dc             	mov    %ecx,-0x24(%ebp)
      memmove(buf, p, m);
 2e4:	e8 d7 03 00 00       	call   6c0 <memmove>
 2e9:	83 c4 10             	add    $0x10,%esp
 2ec:	e9 ff fe ff ff       	jmp    1f0 <grep+0x20>
      m = 0;
 2f1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 2f8:	e9 f3 fe ff ff       	jmp    1f0 <grep+0x20>
}
 2fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 300:	5b                   	pop    %ebx
 301:	5e                   	pop    %esi
 302:	5f                   	pop    %edi
 303:	5d                   	pop    %ebp
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <matchstar>:
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
 315:	53                   	push   %ebx
 316:	83 ec 0c             	sub    $0xc,%esp
 319:	8b 5d 08             	mov    0x8(%ebp),%ebx
 31c:	8b 75 0c             	mov    0xc(%ebp),%esi
 31f:	8b 7d 10             	mov    0x10(%ebp),%edi
 322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(matchhere(re, text))
 328:	83 ec 08             	sub    $0x8,%esp
 32b:	57                   	push   %edi
 32c:	56                   	push   %esi
 32d:	e8 8e fd ff ff       	call   c0 <matchhere>
 332:	83 c4 10             	add    $0x10,%esp
 335:	85 c0                	test   %eax,%eax
 337:	75 1f                	jne    358 <matchstar+0x48>
  }while(*text!='\0' && (*text++==c || c=='.'));
 339:	0f be 17             	movsbl (%edi),%edx
 33c:	84 d2                	test   %dl,%dl
 33e:	74 0c                	je     34c <matchstar+0x3c>
 340:	83 c7 01             	add    $0x1,%edi
 343:	39 da                	cmp    %ebx,%edx
 345:	74 e1                	je     328 <matchstar+0x18>
 347:	83 fb 2e             	cmp    $0x2e,%ebx
 34a:	74 dc                	je     328 <matchstar+0x18>
}
 34c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 34f:	5b                   	pop    %ebx
 350:	5e                   	pop    %esi
 351:	5f                   	pop    %edi
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
 35b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 360:	5b                   	pop    %ebx
 361:	5e                   	pop    %esi
 362:	5f                   	pop    %edi
 363:	5d                   	pop    %ebp
 364:	c3                   	ret    
 365:	66 90                	xchg   %ax,%ax
 367:	66 90                	xchg   %ax,%ax
 369:	66 90                	xchg   %ax,%ax
 36b:	66 90                	xchg   %ax,%ax
 36d:	66 90                	xchg   %ax,%ax
 36f:	90                   	nop

00000370 <thread_create>:
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)

int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	56                   	push   %esi
 374:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 375:	31 db                	xor    %ebx,%ebx
 377:	eb 0f                	jmp    388 <thread_create+0x18>
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 380:	83 c3 01             	add    $0x1,%ebx
 383:	83 fb 40             	cmp    $0x40,%ebx
 386:	74 60                	je     3e8 <thread_create+0x78>
    if (inUse[i] == 0){
 388:	8b 04 9d 80 14 00 00 	mov    0x1480(,%ebx,4),%eax
 38f:	85 c0                	test   %eax,%eax
 391:	75 ed                	jne    380 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 393:	a1 7c 10 00 00       	mov    0x107c,%eax
 398:	83 ec 0c             	sub    $0xc,%esp
 39b:	01 c0                	add    %eax,%eax
 39d:	50                   	push   %eax
 39e:	e8 ed 06 00 00       	call   a90 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 3a3:	8b 35 7c 10 00 00    	mov    0x107c,%esi
 3a9:	83 c4 10             	add    $0x10,%esp
 3ac:	99                   	cltd   
      malloc_addrs[i] = stack;
 3ad:	89 04 9d 80 15 00 00 	mov    %eax,0x1580(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 3b4:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 3b6:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 3b8:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 3bb:	29 d6                	sub    %edx,%esi
 3bd:	01 f1                	add    %esi,%ecx
 3bf:	85 d2                	test   %edx,%edx
 3c1:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 3c4:	51                   	push   %ecx
 3c5:	ff 75 10             	push   0x10(%ebp)
 3c8:	ff 75 0c             	push   0xc(%ebp)
 3cb:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 3ce:	89 0c 9d 80 16 00 00 	mov    %ecx,0x1680(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 3d5:	e8 b9 03 00 00       	call   793 <clone>
 3da:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 3dd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3e0:	5b                   	pop    %ebx
 3e1:	5e                   	pop    %esi
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 3eb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 3f0:	5b                   	pop    %ebx
 3f1:	5e                   	pop    %esi
 3f2:	5d                   	pop    %ebp
 3f3:	c3                   	ret    
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <thread_join>:

int 
thread_join()
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	56                   	push   %esi
 404:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 405:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 408:	31 db                	xor    %ebx,%ebx
{
 40a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 40d:	50                   	push   %eax
 40e:	e8 88 03 00 00       	call   79b <join>
 413:	83 c4 10             	add    $0x10,%esp
 416:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 418:	eb 0e                	jmp    428 <thread_join+0x28>
 41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 420:	83 c3 01             	add    $0x1,%ebx
 423:	83 fb 40             	cmp    $0x40,%ebx
 426:	74 27                	je     44f <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 428:	83 3c 9d 80 14 00 00 	cmpl   $0x1,0x1480(,%ebx,4)
 42f:	01 
 430:	75 ee                	jne    420 <thread_join+0x20>
      free(malloc_addrs[i]);
 432:	83 ec 0c             	sub    $0xc,%esp
 435:	ff 34 9d 80 15 00 00 	push   0x1580(,%ebx,4)
 43c:	e8 bf 05 00 00       	call   a00 <free>
      inUse[i] = 0;
      break;
 441:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 444:	c7 04 9d 80 14 00 00 	movl   $0x0,0x1480(,%ebx,4)
 44b:	00 00 00 00 
    }
  }
  return id;
}
 44f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 452:	89 f0                	mov    %esi,%eax
 454:	5b                   	pop    %ebx
 455:	5e                   	pop    %esi
 456:	5d                   	pop    %ebp
 457:	c3                   	ret    
 458:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <lock_init>:

void lock_init(lock_t *lock){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 46c:	5d                   	pop    %ebp
 46d:	c3                   	ret    
 46e:	66 90                	xchg   %ax,%ax

00000470 <lock_acquire>:

void lock_acquire(lock_t *lock){
 470:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 471:	b9 01 00 00 00       	mov    $0x1,%ecx
 476:	89 e5                	mov    %esp,%ebp
 478:	8b 55 08             	mov    0x8(%ebp),%edx
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop
 480:	89 c8                	mov    %ecx,%eax
 482:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 485:	85 c0                	test   %eax,%eax
 487:	75 f7                	jne    480 <lock_acquire+0x10>
}
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret    
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <lock_release>:

void lock_release(lock_t *lock){
 490:	55                   	push   %ebp
 491:	31 c0                	xor    %eax,%eax
 493:	89 e5                	mov    %esp,%ebp
 495:	8b 55 08             	mov    0x8(%ebp),%edx
 498:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 49b:	5d                   	pop    %ebp
 49c:	c3                   	ret    
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 4a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4a1:	31 c0                	xor    %eax,%eax
{
 4a3:	89 e5                	mov    %esp,%ebp
 4a5:	53                   	push   %ebx
 4a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 4b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 4b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 4b7:	83 c0 01             	add    $0x1,%eax
 4ba:	84 d2                	test   %dl,%dl
 4bc:	75 f2                	jne    4b0 <strcpy+0x10>
    ;
  return os;
}
 4be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4c1:	89 c8                	mov    %ecx,%eax
 4c3:	c9                   	leave  
 4c4:	c3                   	ret    
 4c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
 4d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4da:	0f b6 02             	movzbl (%edx),%eax
 4dd:	84 c0                	test   %al,%al
 4df:	75 17                	jne    4f8 <strcmp+0x28>
 4e1:	eb 3a                	jmp    51d <strcmp+0x4d>
 4e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4e7:	90                   	nop
 4e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 4ec:	83 c2 01             	add    $0x1,%edx
 4ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 4f2:	84 c0                	test   %al,%al
 4f4:	74 1a                	je     510 <strcmp+0x40>
    p++, q++;
 4f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 4f8:	0f b6 19             	movzbl (%ecx),%ebx
 4fb:	38 c3                	cmp    %al,%bl
 4fd:	74 e9                	je     4e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 4ff:	29 d8                	sub    %ebx,%eax
}
 501:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 504:	c9                   	leave  
 505:	c3                   	ret    
 506:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 510:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 514:	31 c0                	xor    %eax,%eax
 516:	29 d8                	sub    %ebx,%eax
}
 518:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 51b:	c9                   	leave  
 51c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 51d:	0f b6 19             	movzbl (%ecx),%ebx
 520:	31 c0                	xor    %eax,%eax
 522:	eb db                	jmp    4ff <strcmp+0x2f>
 524:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <strlen>:

uint
strlen(const char *s)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 536:	80 3a 00             	cmpb   $0x0,(%edx)
 539:	74 15                	je     550 <strlen+0x20>
 53b:	31 c0                	xor    %eax,%eax
 53d:	8d 76 00             	lea    0x0(%esi),%esi
 540:	83 c0 01             	add    $0x1,%eax
 543:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 547:	89 c1                	mov    %eax,%ecx
 549:	75 f5                	jne    540 <strlen+0x10>
    ;
  return n;
}
 54b:	89 c8                	mov    %ecx,%eax
 54d:	5d                   	pop    %ebp
 54e:	c3                   	ret    
 54f:	90                   	nop
  for(n = 0; s[n]; n++)
 550:	31 c9                	xor    %ecx,%ecx
}
 552:	5d                   	pop    %ebp
 553:	89 c8                	mov    %ecx,%eax
 555:	c3                   	ret    
 556:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55d:	8d 76 00             	lea    0x0(%esi),%esi

00000560 <memset>:

void*
memset(void *dst, int c, uint n)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 567:	8b 4d 10             	mov    0x10(%ebp),%ecx
 56a:	8b 45 0c             	mov    0xc(%ebp),%eax
 56d:	89 d7                	mov    %edx,%edi
 56f:	fc                   	cld    
 570:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 572:	8b 7d fc             	mov    -0x4(%ebp),%edi
 575:	89 d0                	mov    %edx,%eax
 577:	c9                   	leave  
 578:	c3                   	ret    
 579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000580 <strchr>:

char*
strchr(const char *s, char c)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	8b 45 08             	mov    0x8(%ebp),%eax
 586:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 58a:	0f b6 10             	movzbl (%eax),%edx
 58d:	84 d2                	test   %dl,%dl
 58f:	75 12                	jne    5a3 <strchr+0x23>
 591:	eb 1d                	jmp    5b0 <strchr+0x30>
 593:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 597:	90                   	nop
 598:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 59c:	83 c0 01             	add    $0x1,%eax
 59f:	84 d2                	test   %dl,%dl
 5a1:	74 0d                	je     5b0 <strchr+0x30>
    if(*s == c)
 5a3:	38 d1                	cmp    %dl,%cl
 5a5:	75 f1                	jne    598 <strchr+0x18>
      return (char*)s;
  return 0;
}
 5a7:	5d                   	pop    %ebp
 5a8:	c3                   	ret    
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 5b0:	31 c0                	xor    %eax,%eax
}
 5b2:	5d                   	pop    %ebp
 5b3:	c3                   	ret    
 5b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <gets>:

char*
gets(char *buf, int max)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 5c5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 5c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 5c9:	31 db                	xor    %ebx,%ebx
{
 5cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 5ce:	eb 27                	jmp    5f7 <gets+0x37>
    cc = read(0, &c, 1);
 5d0:	83 ec 04             	sub    $0x4,%esp
 5d3:	6a 01                	push   $0x1
 5d5:	57                   	push   %edi
 5d6:	6a 00                	push   $0x0
 5d8:	e8 2e 01 00 00       	call   70b <read>
    if(cc < 1)
 5dd:	83 c4 10             	add    $0x10,%esp
 5e0:	85 c0                	test   %eax,%eax
 5e2:	7e 1d                	jle    601 <gets+0x41>
      break;
    buf[i++] = c;
 5e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5e8:	8b 55 08             	mov    0x8(%ebp),%edx
 5eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5ef:	3c 0a                	cmp    $0xa,%al
 5f1:	74 1d                	je     610 <gets+0x50>
 5f3:	3c 0d                	cmp    $0xd,%al
 5f5:	74 19                	je     610 <gets+0x50>
  for(i=0; i+1 < max; ){
 5f7:	89 de                	mov    %ebx,%esi
 5f9:	83 c3 01             	add    $0x1,%ebx
 5fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5ff:	7c cf                	jl     5d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 601:	8b 45 08             	mov    0x8(%ebp),%eax
 604:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 608:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60b:	5b                   	pop    %ebx
 60c:	5e                   	pop    %esi
 60d:	5f                   	pop    %edi
 60e:	5d                   	pop    %ebp
 60f:	c3                   	ret    
  buf[i] = '\0';
 610:	8b 45 08             	mov    0x8(%ebp),%eax
 613:	89 de                	mov    %ebx,%esi
 615:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 619:	8d 65 f4             	lea    -0xc(%ebp),%esp
 61c:	5b                   	pop    %ebx
 61d:	5e                   	pop    %esi
 61e:	5f                   	pop    %edi
 61f:	5d                   	pop    %ebp
 620:	c3                   	ret    
 621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 628:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <stat>:

int
stat(const char *n, struct stat *st)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	56                   	push   %esi
 634:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 635:	83 ec 08             	sub    $0x8,%esp
 638:	6a 00                	push   $0x0
 63a:	ff 75 08             	push   0x8(%ebp)
 63d:	e8 f1 00 00 00       	call   733 <open>
  if(fd < 0)
 642:	83 c4 10             	add    $0x10,%esp
 645:	85 c0                	test   %eax,%eax
 647:	78 27                	js     670 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 649:	83 ec 08             	sub    $0x8,%esp
 64c:	ff 75 0c             	push   0xc(%ebp)
 64f:	89 c3                	mov    %eax,%ebx
 651:	50                   	push   %eax
 652:	e8 f4 00 00 00       	call   74b <fstat>
  close(fd);
 657:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 65a:	89 c6                	mov    %eax,%esi
  close(fd);
 65c:	e8 ba 00 00 00       	call   71b <close>
  return r;
 661:	83 c4 10             	add    $0x10,%esp
}
 664:	8d 65 f8             	lea    -0x8(%ebp),%esp
 667:	89 f0                	mov    %esi,%eax
 669:	5b                   	pop    %ebx
 66a:	5e                   	pop    %esi
 66b:	5d                   	pop    %ebp
 66c:	c3                   	ret    
 66d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 670:	be ff ff ff ff       	mov    $0xffffffff,%esi
 675:	eb ed                	jmp    664 <stat+0x34>
 677:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67e:	66 90                	xchg   %ax,%ax

00000680 <atoi>:

int
atoi(const char *s)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	53                   	push   %ebx
 684:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 687:	0f be 02             	movsbl (%edx),%eax
 68a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 68d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 690:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 695:	77 1e                	ja     6b5 <atoi+0x35>
 697:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 6a0:	83 c2 01             	add    $0x1,%edx
 6a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 6a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 6aa:	0f be 02             	movsbl (%edx),%eax
 6ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6b0:	80 fb 09             	cmp    $0x9,%bl
 6b3:	76 eb                	jbe    6a0 <atoi+0x20>
  return n;
}
 6b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6b8:	89 c8                	mov    %ecx,%eax
 6ba:	c9                   	leave  
 6bb:	c3                   	ret    
 6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	8b 45 10             	mov    0x10(%ebp),%eax
 6c7:	8b 55 08             	mov    0x8(%ebp),%edx
 6ca:	56                   	push   %esi
 6cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6ce:	85 c0                	test   %eax,%eax
 6d0:	7e 13                	jle    6e5 <memmove+0x25>
 6d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 6d4:	89 d7                	mov    %edx,%edi
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 6e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 6e1:	39 f8                	cmp    %edi,%eax
 6e3:	75 fb                	jne    6e0 <memmove+0x20>
  return vdst;
}
 6e5:	5e                   	pop    %esi
 6e6:	89 d0                	mov    %edx,%eax
 6e8:	5f                   	pop    %edi
 6e9:	5d                   	pop    %ebp
 6ea:	c3                   	ret    

000006eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6eb:	b8 01 00 00 00       	mov    $0x1,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <exit>:
SYSCALL(exit)
 6f3:	b8 02 00 00 00       	mov    $0x2,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <wait>:
SYSCALL(wait)
 6fb:	b8 03 00 00 00       	mov    $0x3,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <pipe>:
SYSCALL(pipe)
 703:	b8 04 00 00 00       	mov    $0x4,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <read>:
SYSCALL(read)
 70b:	b8 05 00 00 00       	mov    $0x5,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <write>:
SYSCALL(write)
 713:	b8 10 00 00 00       	mov    $0x10,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <close>:
SYSCALL(close)
 71b:	b8 15 00 00 00       	mov    $0x15,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <kill>:
SYSCALL(kill)
 723:	b8 06 00 00 00       	mov    $0x6,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <exec>:
SYSCALL(exec)
 72b:	b8 07 00 00 00       	mov    $0x7,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    

00000733 <open>:
SYSCALL(open)
 733:	b8 0f 00 00 00       	mov    $0xf,%eax
 738:	cd 40                	int    $0x40
 73a:	c3                   	ret    

0000073b <mknod>:
SYSCALL(mknod)
 73b:	b8 11 00 00 00       	mov    $0x11,%eax
 740:	cd 40                	int    $0x40
 742:	c3                   	ret    

00000743 <unlink>:
SYSCALL(unlink)
 743:	b8 12 00 00 00       	mov    $0x12,%eax
 748:	cd 40                	int    $0x40
 74a:	c3                   	ret    

0000074b <fstat>:
SYSCALL(fstat)
 74b:	b8 08 00 00 00       	mov    $0x8,%eax
 750:	cd 40                	int    $0x40
 752:	c3                   	ret    

00000753 <link>:
SYSCALL(link)
 753:	b8 13 00 00 00       	mov    $0x13,%eax
 758:	cd 40                	int    $0x40
 75a:	c3                   	ret    

0000075b <mkdir>:
SYSCALL(mkdir)
 75b:	b8 14 00 00 00       	mov    $0x14,%eax
 760:	cd 40                	int    $0x40
 762:	c3                   	ret    

00000763 <chdir>:
SYSCALL(chdir)
 763:	b8 09 00 00 00       	mov    $0x9,%eax
 768:	cd 40                	int    $0x40
 76a:	c3                   	ret    

0000076b <dup>:
SYSCALL(dup)
 76b:	b8 0a 00 00 00       	mov    $0xa,%eax
 770:	cd 40                	int    $0x40
 772:	c3                   	ret    

00000773 <getpid>:
SYSCALL(getpid)
 773:	b8 0b 00 00 00       	mov    $0xb,%eax
 778:	cd 40                	int    $0x40
 77a:	c3                   	ret    

0000077b <sbrk>:
SYSCALL(sbrk)
 77b:	b8 0c 00 00 00       	mov    $0xc,%eax
 780:	cd 40                	int    $0x40
 782:	c3                   	ret    

00000783 <sleep>:
SYSCALL(sleep)
 783:	b8 0d 00 00 00       	mov    $0xd,%eax
 788:	cd 40                	int    $0x40
 78a:	c3                   	ret    

0000078b <uptime>:
SYSCALL(uptime)
 78b:	b8 0e 00 00 00       	mov    $0xe,%eax
 790:	cd 40                	int    $0x40
 792:	c3                   	ret    

00000793 <clone>:
SYSCALL(clone)
 793:	b8 16 00 00 00       	mov    $0x16,%eax
 798:	cd 40                	int    $0x40
 79a:	c3                   	ret    

0000079b <join>:
SYSCALL(join)
 79b:	b8 17 00 00 00       	mov    $0x17,%eax
 7a0:	cd 40                	int    $0x40
 7a2:	c3                   	ret    
 7a3:	66 90                	xchg   %ax,%ax
 7a5:	66 90                	xchg   %ax,%ax
 7a7:	66 90                	xchg   %ax,%ax
 7a9:	66 90                	xchg   %ax,%ax
 7ab:	66 90                	xchg   %ax,%ax
 7ad:	66 90                	xchg   %ax,%ax
 7af:	90                   	nop

000007b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
 7b6:	83 ec 3c             	sub    $0x3c,%esp
 7b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7bc:	89 d1                	mov    %edx,%ecx
{
 7be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7c1:	85 d2                	test   %edx,%edx
 7c3:	0f 89 7f 00 00 00    	jns    848 <printint+0x98>
 7c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7cd:	74 79                	je     848 <printint+0x98>
    neg = 1;
 7cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7d8:	31 db                	xor    %ebx,%ebx
 7da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7e0:	89 c8                	mov    %ecx,%eax
 7e2:	31 d2                	xor    %edx,%edx
 7e4:	89 cf                	mov    %ecx,%edi
 7e6:	f7 75 c4             	divl   -0x3c(%ebp)
 7e9:	0f b6 92 20 0c 00 00 	movzbl 0xc20(%edx),%edx
 7f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7f3:	89 d8                	mov    %ebx,%eax
 7f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 801:	76 dd                	jbe    7e0 <printint+0x30>
  if(neg)
 803:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 806:	85 c9                	test   %ecx,%ecx
 808:	74 0c                	je     816 <printint+0x66>
    buf[i++] = '-';
 80a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 80f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 811:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 816:	8b 7d b8             	mov    -0x48(%ebp),%edi
 819:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 81d:	eb 07                	jmp    826 <printint+0x76>
 81f:	90                   	nop
    putc(fd, buf[i]);
 820:	0f b6 13             	movzbl (%ebx),%edx
 823:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 826:	83 ec 04             	sub    $0x4,%esp
 829:	88 55 d7             	mov    %dl,-0x29(%ebp)
 82c:	6a 01                	push   $0x1
 82e:	56                   	push   %esi
 82f:	57                   	push   %edi
 830:	e8 de fe ff ff       	call   713 <write>
  while(--i >= 0)
 835:	83 c4 10             	add    $0x10,%esp
 838:	39 de                	cmp    %ebx,%esi
 83a:	75 e4                	jne    820 <printint+0x70>
}
 83c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 83f:	5b                   	pop    %ebx
 840:	5e                   	pop    %esi
 841:	5f                   	pop    %edi
 842:	5d                   	pop    %ebp
 843:	c3                   	ret    
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 848:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 84f:	eb 87                	jmp    7d8 <printint+0x28>
 851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85f:	90                   	nop

00000860 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 869:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 86c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 86f:	0f b6 13             	movzbl (%ebx),%edx
 872:	84 d2                	test   %dl,%dl
 874:	74 6a                	je     8e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 876:	8d 45 10             	lea    0x10(%ebp),%eax
 879:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 87c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 87f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 881:	89 45 d0             	mov    %eax,-0x30(%ebp)
 884:	eb 36                	jmp    8bc <printf+0x5c>
 886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88d:	8d 76 00             	lea    0x0(%esi),%esi
 890:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 893:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 898:	83 f8 25             	cmp    $0x25,%eax
 89b:	74 15                	je     8b2 <printf+0x52>
  write(fd, &c, 1);
 89d:	83 ec 04             	sub    $0x4,%esp
 8a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8a3:	6a 01                	push   $0x1
 8a5:	57                   	push   %edi
 8a6:	56                   	push   %esi
 8a7:	e8 67 fe ff ff       	call   713 <write>
 8ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8b2:	0f b6 13             	movzbl (%ebx),%edx
 8b5:	83 c3 01             	add    $0x1,%ebx
 8b8:	84 d2                	test   %dl,%dl
 8ba:	74 24                	je     8e0 <printf+0x80>
    c = fmt[i] & 0xff;
 8bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8bf:	85 c9                	test   %ecx,%ecx
 8c1:	74 cd                	je     890 <printf+0x30>
      }
    } else if(state == '%'){
 8c3:	83 f9 25             	cmp    $0x25,%ecx
 8c6:	75 ea                	jne    8b2 <printf+0x52>
      if(c == 'd'){
 8c8:	83 f8 25             	cmp    $0x25,%eax
 8cb:	0f 84 07 01 00 00    	je     9d8 <printf+0x178>
 8d1:	83 e8 63             	sub    $0x63,%eax
 8d4:	83 f8 15             	cmp    $0x15,%eax
 8d7:	77 17                	ja     8f0 <printf+0x90>
 8d9:	ff 24 85 c8 0b 00 00 	jmp    *0xbc8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8e3:	5b                   	pop    %ebx
 8e4:	5e                   	pop    %esi
 8e5:	5f                   	pop    %edi
 8e6:	5d                   	pop    %ebp
 8e7:	c3                   	ret    
 8e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ef:	90                   	nop
  write(fd, &c, 1);
 8f0:	83 ec 04             	sub    $0x4,%esp
 8f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8f6:	6a 01                	push   $0x1
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8fe:	e8 10 fe ff ff       	call   713 <write>
        putc(fd, c);
 903:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 907:	83 c4 0c             	add    $0xc,%esp
 90a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 90d:	6a 01                	push   $0x1
 90f:	57                   	push   %edi
 910:	56                   	push   %esi
 911:	e8 fd fd ff ff       	call   713 <write>
        putc(fd, c);
 916:	83 c4 10             	add    $0x10,%esp
      state = 0;
 919:	31 c9                	xor    %ecx,%ecx
 91b:	eb 95                	jmp    8b2 <printf+0x52>
 91d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 920:	83 ec 0c             	sub    $0xc,%esp
 923:	b9 10 00 00 00       	mov    $0x10,%ecx
 928:	6a 00                	push   $0x0
 92a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 92d:	8b 10                	mov    (%eax),%edx
 92f:	89 f0                	mov    %esi,%eax
 931:	e8 7a fe ff ff       	call   7b0 <printint>
        ap++;
 936:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 93a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 93d:	31 c9                	xor    %ecx,%ecx
 93f:	e9 6e ff ff ff       	jmp    8b2 <printf+0x52>
 944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 948:	8b 45 d0             	mov    -0x30(%ebp),%eax
 94b:	8b 10                	mov    (%eax),%edx
        ap++;
 94d:	83 c0 04             	add    $0x4,%eax
 950:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 953:	85 d2                	test   %edx,%edx
 955:	0f 84 8d 00 00 00    	je     9e8 <printf+0x188>
        while(*s != 0){
 95b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 95e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 960:	84 c0                	test   %al,%al
 962:	0f 84 4a ff ff ff    	je     8b2 <printf+0x52>
 968:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 96b:	89 d3                	mov    %edx,%ebx
 96d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 970:	83 ec 04             	sub    $0x4,%esp
          s++;
 973:	83 c3 01             	add    $0x1,%ebx
 976:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 979:	6a 01                	push   $0x1
 97b:	57                   	push   %edi
 97c:	56                   	push   %esi
 97d:	e8 91 fd ff ff       	call   713 <write>
        while(*s != 0){
 982:	0f b6 03             	movzbl (%ebx),%eax
 985:	83 c4 10             	add    $0x10,%esp
 988:	84 c0                	test   %al,%al
 98a:	75 e4                	jne    970 <printf+0x110>
      state = 0;
 98c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 98f:	31 c9                	xor    %ecx,%ecx
 991:	e9 1c ff ff ff       	jmp    8b2 <printf+0x52>
 996:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 99d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9a0:	83 ec 0c             	sub    $0xc,%esp
 9a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9a8:	6a 01                	push   $0x1
 9aa:	e9 7b ff ff ff       	jmp    92a <printf+0xca>
 9af:	90                   	nop
        putc(fd, *ap);
 9b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9b8:	6a 01                	push   $0x1
 9ba:	57                   	push   %edi
 9bb:	56                   	push   %esi
        putc(fd, *ap);
 9bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9bf:	e8 4f fd ff ff       	call   713 <write>
        ap++;
 9c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9cb:	31 c9                	xor    %ecx,%ecx
 9cd:	e9 e0 fe ff ff       	jmp    8b2 <printf+0x52>
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9db:	83 ec 04             	sub    $0x4,%esp
 9de:	e9 2a ff ff ff       	jmp    90d <printf+0xad>
 9e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9e7:	90                   	nop
          s = "(null)";
 9e8:	ba be 0b 00 00       	mov    $0xbbe,%edx
        while(*s != 0){
 9ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9f0:	b8 28 00 00 00       	mov    $0x28,%eax
 9f5:	89 d3                	mov    %edx,%ebx
 9f7:	e9 74 ff ff ff       	jmp    970 <printf+0x110>
 9fc:	66 90                	xchg   %ax,%ax
 9fe:	66 90                	xchg   %ax,%ax

00000a00 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a00:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a01:	a1 80 17 00 00       	mov    0x1780,%eax
{
 a06:	89 e5                	mov    %esp,%ebp
 a08:	57                   	push   %edi
 a09:	56                   	push   %esi
 a0a:	53                   	push   %ebx
 a0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a0e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a18:	89 c2                	mov    %eax,%edx
 a1a:	8b 00                	mov    (%eax),%eax
 a1c:	39 ca                	cmp    %ecx,%edx
 a1e:	73 30                	jae    a50 <free+0x50>
 a20:	39 c1                	cmp    %eax,%ecx
 a22:	72 04                	jb     a28 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a24:	39 c2                	cmp    %eax,%edx
 a26:	72 f0                	jb     a18 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a2e:	39 f8                	cmp    %edi,%eax
 a30:	74 30                	je     a62 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a32:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a35:	8b 42 04             	mov    0x4(%edx),%eax
 a38:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a3b:	39 f1                	cmp    %esi,%ecx
 a3d:	74 3a                	je     a79 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a3f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a41:	5b                   	pop    %ebx
  freep = p;
 a42:	89 15 80 17 00 00    	mov    %edx,0x1780
}
 a48:	5e                   	pop    %esi
 a49:	5f                   	pop    %edi
 a4a:	5d                   	pop    %ebp
 a4b:	c3                   	ret    
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a50:	39 c2                	cmp    %eax,%edx
 a52:	72 c4                	jb     a18 <free+0x18>
 a54:	39 c1                	cmp    %eax,%ecx
 a56:	73 c0                	jae    a18 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a58:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a5b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a5e:	39 f8                	cmp    %edi,%eax
 a60:	75 d0                	jne    a32 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a62:	03 70 04             	add    0x4(%eax),%esi
 a65:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a68:	8b 02                	mov    (%edx),%eax
 a6a:	8b 00                	mov    (%eax),%eax
 a6c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a6f:	8b 42 04             	mov    0x4(%edx),%eax
 a72:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a75:	39 f1                	cmp    %esi,%ecx
 a77:	75 c6                	jne    a3f <free+0x3f>
    p->s.size += bp->s.size;
 a79:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a7c:	89 15 80 17 00 00    	mov    %edx,0x1780
    p->s.size += bp->s.size;
 a82:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a85:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a88:	89 0a                	mov    %ecx,(%edx)
}
 a8a:	5b                   	pop    %ebx
 a8b:	5e                   	pop    %esi
 a8c:	5f                   	pop    %edi
 a8d:	5d                   	pop    %ebp
 a8e:	c3                   	ret    
 a8f:	90                   	nop

00000a90 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a90:	55                   	push   %ebp
 a91:	89 e5                	mov    %esp,%ebp
 a93:	57                   	push   %edi
 a94:	56                   	push   %esi
 a95:	53                   	push   %ebx
 a96:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a99:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a9c:	8b 3d 80 17 00 00    	mov    0x1780,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 aa2:	8d 70 07             	lea    0x7(%eax),%esi
 aa5:	c1 ee 03             	shr    $0x3,%esi
 aa8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 aab:	85 ff                	test   %edi,%edi
 aad:	0f 84 9d 00 00 00    	je     b50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ab3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ab5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ab8:	39 f1                	cmp    %esi,%ecx
 aba:	73 6a                	jae    b26 <malloc+0x96>
 abc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ac1:	39 de                	cmp    %ebx,%esi
 ac3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ac6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 acd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ad0:	eb 17                	jmp    ae9 <malloc+0x59>
 ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ad8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ada:	8b 48 04             	mov    0x4(%eax),%ecx
 add:	39 f1                	cmp    %esi,%ecx
 adf:	73 4f                	jae    b30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ae1:	8b 3d 80 17 00 00    	mov    0x1780,%edi
 ae7:	89 c2                	mov    %eax,%edx
 ae9:	39 d7                	cmp    %edx,%edi
 aeb:	75 eb                	jne    ad8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 aed:	83 ec 0c             	sub    $0xc,%esp
 af0:	ff 75 e4             	push   -0x1c(%ebp)
 af3:	e8 83 fc ff ff       	call   77b <sbrk>
  if(p == (char*)-1)
 af8:	83 c4 10             	add    $0x10,%esp
 afb:	83 f8 ff             	cmp    $0xffffffff,%eax
 afe:	74 1c                	je     b1c <malloc+0x8c>
  hp->s.size = nu;
 b00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b03:	83 ec 0c             	sub    $0xc,%esp
 b06:	83 c0 08             	add    $0x8,%eax
 b09:	50                   	push   %eax
 b0a:	e8 f1 fe ff ff       	call   a00 <free>
  return freep;
 b0f:	8b 15 80 17 00 00    	mov    0x1780,%edx
      if((p = morecore(nunits)) == 0)
 b15:	83 c4 10             	add    $0x10,%esp
 b18:	85 d2                	test   %edx,%edx
 b1a:	75 bc                	jne    ad8 <malloc+0x48>
        return 0;
  }
}
 b1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b1f:	31 c0                	xor    %eax,%eax
}
 b21:	5b                   	pop    %ebx
 b22:	5e                   	pop    %esi
 b23:	5f                   	pop    %edi
 b24:	5d                   	pop    %ebp
 b25:	c3                   	ret    
    if(p->s.size >= nunits){
 b26:	89 d0                	mov    %edx,%eax
 b28:	89 fa                	mov    %edi,%edx
 b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b30:	39 ce                	cmp    %ecx,%esi
 b32:	74 4c                	je     b80 <malloc+0xf0>
        p->s.size -= nunits;
 b34:	29 f1                	sub    %esi,%ecx
 b36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b3f:	89 15 80 17 00 00    	mov    %edx,0x1780
}
 b45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b48:	83 c0 08             	add    $0x8,%eax
}
 b4b:	5b                   	pop    %ebx
 b4c:	5e                   	pop    %esi
 b4d:	5f                   	pop    %edi
 b4e:	5d                   	pop    %ebp
 b4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b50:	c7 05 80 17 00 00 84 	movl   $0x1784,0x1780
 b57:	17 00 00 
    base.s.size = 0;
 b5a:	bf 84 17 00 00       	mov    $0x1784,%edi
    base.s.ptr = freep = prevp = &base;
 b5f:	c7 05 84 17 00 00 84 	movl   $0x1784,0x1784
 b66:	17 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b6b:	c7 05 88 17 00 00 00 	movl   $0x0,0x1788
 b72:	00 00 00 
    if(p->s.size >= nunits){
 b75:	e9 42 ff ff ff       	jmp    abc <malloc+0x2c>
 b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b80:	8b 08                	mov    (%eax),%ecx
 b82:	89 0a                	mov    %ecx,(%edx)
 b84:	eb b9                	jmp    b3f <malloc+0xaf>
