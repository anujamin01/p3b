
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      17:	90                   	nop
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 91 00 00 00    	jg     b2 <main+0xb2>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 89 14 00 00       	push   $0x1489
      2b:	e8 63 0f 00 00       	call   f93 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d e2 1b 00 00 20 	cmpb   $0x20,0x1be2
      47:	0f 84 88 00 00 00    	je     d5 <main+0xd5>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 f6 0e 00 00       	call   f4b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 5e                	je     c0 <main+0xc0>
    wait();
      62:	e8 f4 0e 00 00       	call   f5b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 e8 13 00 00       	push   $0x13e8
      6f:	6a 02                	push   $0x2
      71:	e8 4a 10 00 00       	call   10c0 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 e0 1b 00 00       	push   $0x1be0
      82:	e8 39 0d 00 00       	call   dc0 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 e0 1b 00 00       	push   $0x1be0
      90:	e8 8b 0d 00 00       	call   e20 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 e0 1b 00 00 	movzbl 0x1be0,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 77                	je     11a <main+0x11a>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d e1 1b 00 00 64 	cmpb   $0x64,0x1be1
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
      close(fd);
      b2:	83 ec 0c             	sub    $0xc,%esp
      b5:	50                   	push   %eax
      b6:	e8 c0 0e 00 00       	call   f7b <close>
      break;
      bb:	83 c4 10             	add    $0x10,%esp
      be:	eb a7                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c0:	83 ec 0c             	sub    $0xc,%esp
      c3:	68 e0 1b 00 00       	push   $0x1be0
      c8:	e8 93 0a 00 00       	call   b60 <parsecmd>
      cd:	89 04 24             	mov    %eax,(%esp)
      d0:	e8 db 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      d5:	83 ec 0c             	sub    $0xc,%esp
      d8:	68 e0 1b 00 00       	push   $0x1be0
      dd:	e8 ae 0c 00 00       	call   d90 <strlen>
      if(chdir(buf+3) < 0)
      e2:	c7 04 24 e3 1b 00 00 	movl   $0x1be3,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      e9:	c6 80 df 1b 00 00 00 	movb   $0x0,0x1bdf(%eax)
      if(chdir(buf+3) < 0)
      f0:	e8 ce 0e 00 00       	call   fc3 <chdir>
      f5:	83 c4 10             	add    $0x10,%esp
      f8:	85 c0                	test   %eax,%eax
      fa:	0f 89 67 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     100:	51                   	push   %ecx
     101:	68 e3 1b 00 00       	push   $0x1be3
     106:	68 91 14 00 00       	push   $0x1491
     10b:	6a 02                	push   $0x2
     10d:	e8 ae 0f 00 00       	call   10c0 <printf>
     112:	83 c4 10             	add    $0x10,%esp
     115:	e9 4d ff ff ff       	jmp    67 <main+0x67>
  exit();
     11a:	e8 34 0e 00 00       	call   f53 <exit>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 eb 13 00 00       	push   $0x13eb
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 75 0c             	mov    0xc(%ebp),%esi
     138:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 e8 13 00 00       	push   $0x13e8
     143:	6a 02                	push   $0x2
     145:	e8 76 0f 00 00       	call   10c0 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 6a 0c 00 00       	call   dc0 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 c1 0c 00 00       	call   e20 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret    
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 85 14 00 00       	push   $0x1485
     17e:	6a 02                	push   $0x2
     180:	e8 3b 0f 00 00       	call   10c0 <printf>
  exit();
     185:	e8 c9 0d 00 00       	call   f53 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 b0 0d 00 00       	call   f4b <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave  
     1a1:	c3                   	ret    
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 eb 13 00 00       	push   $0x13eb
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 42                	je     200 <runcmd+0x50>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 e3 00 00 00    	ja     2aa <runcmd+0xfa>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 a0 14 00 00 	jmp    *0x14a0(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 29                	je     200 <runcmd+0x50>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	8d 53 04             	lea    0x4(%ebx),%edx
     1da:	51                   	push   %ecx
     1db:	51                   	push   %ecx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 a8 0d 00 00       	call   f8b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 f7 13 00 00       	push   $0x13f7
     1ee:	6a 02                	push   $0x2
     1f0:	e8 cb 0e 00 00       	call   10c0 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
     1f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     1ff:	90                   	nop
    exit();
     200:	e8 4e 0d 00 00       	call   f53 <exit>
    if(fork1() == 0)
     205:	e8 86 ff ff ff       	call   190 <fork1>
     20a:	85 c0                	test   %eax,%eax
     20c:	75 f2                	jne    200 <runcmd+0x50>
     20e:	e9 8c 00 00 00       	jmp    29f <runcmd+0xef>
    if(pipe(p) < 0)
     213:	83 ec 0c             	sub    $0xc,%esp
     216:	8d 45 f0             	lea    -0x10(%ebp),%eax
     219:	50                   	push   %eax
     21a:	e8 44 0d 00 00       	call   f63 <pipe>
     21f:	83 c4 10             	add    $0x10,%esp
     222:	85 c0                	test   %eax,%eax
     224:	0f 88 a2 00 00 00    	js     2cc <runcmd+0x11c>
    if(fork1() == 0){
     22a:	e8 61 ff ff ff       	call   190 <fork1>
     22f:	85 c0                	test   %eax,%eax
     231:	0f 84 a2 00 00 00    	je     2d9 <runcmd+0x129>
    if(fork1() == 0){
     237:	e8 54 ff ff ff       	call   190 <fork1>
     23c:	85 c0                	test   %eax,%eax
     23e:	0f 84 c3 00 00 00    	je     307 <runcmd+0x157>
    close(p[0]);
     244:	83 ec 0c             	sub    $0xc,%esp
     247:	ff 75 f0             	push   -0x10(%ebp)
     24a:	e8 2c 0d 00 00       	call   f7b <close>
    close(p[1]);
     24f:	58                   	pop    %eax
     250:	ff 75 f4             	push   -0xc(%ebp)
     253:	e8 23 0d 00 00       	call   f7b <close>
    wait();
     258:	e8 fe 0c 00 00       	call   f5b <wait>
    wait();
     25d:	e8 f9 0c 00 00       	call   f5b <wait>
    break;
     262:	83 c4 10             	add    $0x10,%esp
     265:	eb 99                	jmp    200 <runcmd+0x50>
    if(fork1() == 0)
     267:	e8 24 ff ff ff       	call   190 <fork1>
     26c:	85 c0                	test   %eax,%eax
     26e:	74 2f                	je     29f <runcmd+0xef>
    wait();
     270:	e8 e6 0c 00 00       	call   f5b <wait>
    runcmd(lcmd->right);
     275:	83 ec 0c             	sub    $0xc,%esp
     278:	ff 73 08             	push   0x8(%ebx)
     27b:	e8 30 ff ff ff       	call   1b0 <runcmd>
    close(rcmd->fd);
     280:	83 ec 0c             	sub    $0xc,%esp
     283:	ff 73 14             	push   0x14(%ebx)
     286:	e8 f0 0c 00 00       	call   f7b <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     28b:	58                   	pop    %eax
     28c:	5a                   	pop    %edx
     28d:	ff 73 10             	push   0x10(%ebx)
     290:	ff 73 08             	push   0x8(%ebx)
     293:	e8 fb 0c 00 00       	call   f93 <open>
     298:	83 c4 10             	add    $0x10,%esp
     29b:	85 c0                	test   %eax,%eax
     29d:	78 18                	js     2b7 <runcmd+0x107>
      runcmd(bcmd->cmd);
     29f:	83 ec 0c             	sub    $0xc,%esp
     2a2:	ff 73 04             	push   0x4(%ebx)
     2a5:	e8 06 ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2aa:	83 ec 0c             	sub    $0xc,%esp
     2ad:	68 f0 13 00 00       	push   $0x13f0
     2b2:	e8 b9 fe ff ff       	call   170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2b7:	51                   	push   %ecx
     2b8:	ff 73 08             	push   0x8(%ebx)
     2bb:	68 07 14 00 00       	push   $0x1407
     2c0:	6a 02                	push   $0x2
     2c2:	e8 f9 0d 00 00       	call   10c0 <printf>
      exit();
     2c7:	e8 87 0c 00 00       	call   f53 <exit>
      panic("pipe");
     2cc:	83 ec 0c             	sub    $0xc,%esp
     2cf:	68 17 14 00 00       	push   $0x1417
     2d4:	e8 97 fe ff ff       	call   170 <panic>
      close(1);
     2d9:	83 ec 0c             	sub    $0xc,%esp
     2dc:	6a 01                	push   $0x1
     2de:	e8 98 0c 00 00       	call   f7b <close>
      dup(p[1]);
     2e3:	58                   	pop    %eax
     2e4:	ff 75 f4             	push   -0xc(%ebp)
     2e7:	e8 df 0c 00 00       	call   fcb <dup>
      close(p[0]);
     2ec:	58                   	pop    %eax
     2ed:	ff 75 f0             	push   -0x10(%ebp)
     2f0:	e8 86 0c 00 00       	call   f7b <close>
      close(p[1]);
     2f5:	58                   	pop    %eax
     2f6:	ff 75 f4             	push   -0xc(%ebp)
     2f9:	e8 7d 0c 00 00       	call   f7b <close>
      runcmd(pcmd->left);
     2fe:	5a                   	pop    %edx
     2ff:	ff 73 04             	push   0x4(%ebx)
     302:	e8 a9 fe ff ff       	call   1b0 <runcmd>
      close(0);
     307:	83 ec 0c             	sub    $0xc,%esp
     30a:	6a 00                	push   $0x0
     30c:	e8 6a 0c 00 00       	call   f7b <close>
      dup(p[0]);
     311:	5a                   	pop    %edx
     312:	ff 75 f0             	push   -0x10(%ebp)
     315:	e8 b1 0c 00 00       	call   fcb <dup>
      close(p[0]);
     31a:	59                   	pop    %ecx
     31b:	ff 75 f0             	push   -0x10(%ebp)
     31e:	e8 58 0c 00 00       	call   f7b <close>
      close(p[1]);
     323:	58                   	pop    %eax
     324:	ff 75 f4             	push   -0xc(%ebp)
     327:	e8 4f 0c 00 00       	call   f7b <close>
      runcmd(pcmd->right);
     32c:	58                   	pop    %eax
     32d:	ff 73 08             	push   0x8(%ebx)
     330:	e8 7b fe ff ff       	call   1b0 <runcmd>
     335:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     340:	55                   	push   %ebp
     341:	89 e5                	mov    %esp,%ebp
     343:	53                   	push   %ebx
     344:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     347:	6a 54                	push   $0x54
     349:	e8 a2 0f 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     34e:	83 c4 0c             	add    $0xc,%esp
     351:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     353:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     355:	6a 00                	push   $0x0
     357:	50                   	push   %eax
     358:	e8 63 0a 00 00       	call   dc0 <memset>
  cmd->type = EXEC;
     35d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     363:	89 d8                	mov    %ebx,%eax
     365:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     368:	c9                   	leave  
     369:	c3                   	ret    
     36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000370 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     370:	55                   	push   %ebp
     371:	89 e5                	mov    %esp,%ebp
     373:	53                   	push   %ebx
     374:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     377:	6a 18                	push   $0x18
     379:	e8 72 0f 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     37e:	83 c4 0c             	add    $0xc,%esp
     381:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     383:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     385:	6a 00                	push   $0x0
     387:	50                   	push   %eax
     388:	e8 33 0a 00 00       	call   dc0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     38d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     390:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     396:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     399:	8b 45 0c             	mov    0xc(%ebp),%eax
     39c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     39f:	8b 45 10             	mov    0x10(%ebp),%eax
     3a2:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     3a5:	8b 45 14             	mov    0x14(%ebp),%eax
     3a8:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     3ab:	8b 45 18             	mov    0x18(%ebp),%eax
     3ae:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3b1:	89 d8                	mov    %ebx,%eax
     3b3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3b6:	c9                   	leave  
     3b7:	c3                   	ret    
     3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3bf:	90                   	nop

000003c0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	53                   	push   %ebx
     3c4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3c7:	6a 0c                	push   $0xc
     3c9:	e8 22 0f 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3ce:	83 c4 0c             	add    $0xc,%esp
     3d1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3d3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3d5:	6a 00                	push   $0x0
     3d7:	50                   	push   %eax
     3d8:	e8 e3 09 00 00       	call   dc0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3dd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3e0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3e6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3e9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3ec:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3ef:	89 d8                	mov    %ebx,%eax
     3f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3f4:	c9                   	leave  
     3f5:	c3                   	ret    
     3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3fd:	8d 76 00             	lea    0x0(%esi),%esi

00000400 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	53                   	push   %ebx
     404:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     407:	6a 0c                	push   $0xc
     409:	e8 e2 0e 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     40e:	83 c4 0c             	add    $0xc,%esp
     411:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     413:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     415:	6a 00                	push   $0x0
     417:	50                   	push   %eax
     418:	e8 a3 09 00 00       	call   dc0 <memset>
  cmd->type = LIST;
  cmd->left = left;
     41d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     420:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     426:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     429:	8b 45 0c             	mov    0xc(%ebp),%eax
     42c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     42f:	89 d8                	mov    %ebx,%eax
     431:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     434:	c9                   	leave  
     435:	c3                   	ret    
     436:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     43d:	8d 76 00             	lea    0x0(%esi),%esi

00000440 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	53                   	push   %ebx
     444:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     447:	6a 08                	push   $0x8
     449:	e8 a2 0e 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     44e:	83 c4 0c             	add    $0xc,%esp
     451:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     453:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     455:	6a 00                	push   $0x0
     457:	50                   	push   %eax
     458:	e8 63 09 00 00       	call   dc0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     45d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     460:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     466:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     469:	89 d8                	mov    %ebx,%eax
     46b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     46e:	c9                   	leave  
     46f:	c3                   	ret    

00000470 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	57                   	push   %edi
     474:	56                   	push   %esi
     475:	53                   	push   %ebx
     476:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     479:	8b 45 08             	mov    0x8(%ebp),%eax
{
     47c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     47f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     482:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     484:	39 df                	cmp    %ebx,%edi
     486:	72 0f                	jb     497 <gettoken+0x27>
     488:	eb 25                	jmp    4af <gettoken+0x3f>
     48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     490:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     493:	39 fb                	cmp    %edi,%ebx
     495:	74 18                	je     4af <gettoken+0x3f>
     497:	0f be 07             	movsbl (%edi),%eax
     49a:	83 ec 08             	sub    $0x8,%esp
     49d:	50                   	push   %eax
     49e:	68 c8 1b 00 00       	push   $0x1bc8
     4a3:	e8 38 09 00 00       	call   de0 <strchr>
     4a8:	83 c4 10             	add    $0x10,%esp
     4ab:	85 c0                	test   %eax,%eax
     4ad:	75 e1                	jne    490 <gettoken+0x20>
  if(q)
     4af:	85 f6                	test   %esi,%esi
     4b1:	74 02                	je     4b5 <gettoken+0x45>
    *q = s;
     4b3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4b5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4b8:	3c 3c                	cmp    $0x3c,%al
     4ba:	0f 8f d0 00 00 00    	jg     590 <gettoken+0x120>
     4c0:	3c 3a                	cmp    $0x3a,%al
     4c2:	0f 8f b4 00 00 00    	jg     57c <gettoken+0x10c>
     4c8:	84 c0                	test   %al,%al
     4ca:	75 44                	jne    510 <gettoken+0xa0>
     4cc:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4ce:	8b 55 14             	mov    0x14(%ebp),%edx
     4d1:	85 d2                	test   %edx,%edx
     4d3:	74 05                	je     4da <gettoken+0x6a>
    *eq = s;
     4d5:	8b 45 14             	mov    0x14(%ebp),%eax
     4d8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4da:	39 df                	cmp    %ebx,%edi
     4dc:	72 09                	jb     4e7 <gettoken+0x77>
     4de:	eb 1f                	jmp    4ff <gettoken+0x8f>
    s++;
     4e0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4e3:	39 fb                	cmp    %edi,%ebx
     4e5:	74 18                	je     4ff <gettoken+0x8f>
     4e7:	0f be 07             	movsbl (%edi),%eax
     4ea:	83 ec 08             	sub    $0x8,%esp
     4ed:	50                   	push   %eax
     4ee:	68 c8 1b 00 00       	push   $0x1bc8
     4f3:	e8 e8 08 00 00       	call   de0 <strchr>
     4f8:	83 c4 10             	add    $0x10,%esp
     4fb:	85 c0                	test   %eax,%eax
     4fd:	75 e1                	jne    4e0 <gettoken+0x70>
  *ps = s;
     4ff:	8b 45 08             	mov    0x8(%ebp),%eax
     502:	89 38                	mov    %edi,(%eax)
  return ret;
}
     504:	8d 65 f4             	lea    -0xc(%ebp),%esp
     507:	89 f0                	mov    %esi,%eax
     509:	5b                   	pop    %ebx
     50a:	5e                   	pop    %esi
     50b:	5f                   	pop    %edi
     50c:	5d                   	pop    %ebp
     50d:	c3                   	ret    
     50e:	66 90                	xchg   %ax,%ax
  switch(*s){
     510:	79 5e                	jns    570 <gettoken+0x100>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     512:	39 fb                	cmp    %edi,%ebx
     514:	77 34                	ja     54a <gettoken+0xda>
  if(eq)
     516:	8b 45 14             	mov    0x14(%ebp),%eax
     519:	be 61 00 00 00       	mov    $0x61,%esi
     51e:	85 c0                	test   %eax,%eax
     520:	75 b3                	jne    4d5 <gettoken+0x65>
     522:	eb db                	jmp    4ff <gettoken+0x8f>
     524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     528:	0f be 07             	movsbl (%edi),%eax
     52b:	83 ec 08             	sub    $0x8,%esp
     52e:	50                   	push   %eax
     52f:	68 c0 1b 00 00       	push   $0x1bc0
     534:	e8 a7 08 00 00       	call   de0 <strchr>
     539:	83 c4 10             	add    $0x10,%esp
     53c:	85 c0                	test   %eax,%eax
     53e:	75 22                	jne    562 <gettoken+0xf2>
      s++;
     540:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     543:	39 fb                	cmp    %edi,%ebx
     545:	74 cf                	je     516 <gettoken+0xa6>
     547:	0f b6 07             	movzbl (%edi),%eax
     54a:	83 ec 08             	sub    $0x8,%esp
     54d:	0f be f0             	movsbl %al,%esi
     550:	56                   	push   %esi
     551:	68 c8 1b 00 00       	push   $0x1bc8
     556:	e8 85 08 00 00       	call   de0 <strchr>
     55b:	83 c4 10             	add    $0x10,%esp
     55e:	85 c0                	test   %eax,%eax
     560:	74 c6                	je     528 <gettoken+0xb8>
    ret = 'a';
     562:	be 61 00 00 00       	mov    $0x61,%esi
     567:	e9 62 ff ff ff       	jmp    4ce <gettoken+0x5e>
     56c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     570:	3c 26                	cmp    $0x26,%al
     572:	74 08                	je     57c <gettoken+0x10c>
     574:	8d 48 d8             	lea    -0x28(%eax),%ecx
     577:	80 f9 01             	cmp    $0x1,%cl
     57a:	77 96                	ja     512 <gettoken+0xa2>
  ret = *s;
     57c:	0f be f0             	movsbl %al,%esi
    s++;
     57f:	83 c7 01             	add    $0x1,%edi
    break;
     582:	e9 47 ff ff ff       	jmp    4ce <gettoken+0x5e>
     587:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     58e:	66 90                	xchg   %ax,%ax
  switch(*s){
     590:	3c 3e                	cmp    $0x3e,%al
     592:	75 1c                	jne    5b0 <gettoken+0x140>
    if(*s == '>'){
     594:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
    s++;
     598:	8d 47 01             	lea    0x1(%edi),%eax
    if(*s == '>'){
     59b:	74 1c                	je     5b9 <gettoken+0x149>
    s++;
     59d:	89 c7                	mov    %eax,%edi
     59f:	be 3e 00 00 00       	mov    $0x3e,%esi
     5a4:	e9 25 ff ff ff       	jmp    4ce <gettoken+0x5e>
     5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     5b0:	3c 7c                	cmp    $0x7c,%al
     5b2:	74 c8                	je     57c <gettoken+0x10c>
     5b4:	e9 59 ff ff ff       	jmp    512 <gettoken+0xa2>
      s++;
     5b9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     5bc:	be 2b 00 00 00       	mov    $0x2b,%esi
     5c1:	e9 08 ff ff ff       	jmp    4ce <gettoken+0x5e>
     5c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5cd:	8d 76 00             	lea    0x0(%esi),%esi

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
     5d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5e1:	39 f3                	cmp    %esi,%ebx
     5e3:	72 12                	jb     5f7 <peek+0x27>
     5e5:	eb 28                	jmp    60f <peek+0x3f>
     5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5ee:	66 90                	xchg   %ax,%ax
    s++;
     5f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5f3:	39 de                	cmp    %ebx,%esi
     5f5:	74 18                	je     60f <peek+0x3f>
     5f7:	0f be 03             	movsbl (%ebx),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 c8 1b 00 00       	push   $0x1bc8
     603:	e8 d8 07 00 00       	call   de0 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <peek+0x20>
  *ps = s;
     60f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     611:	0f be 03             	movsbl (%ebx),%eax
     614:	31 d2                	xor    %edx,%edx
     616:	84 c0                	test   %al,%al
     618:	75 0e                	jne    628 <peek+0x58>
}
     61a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     61d:	89 d0                	mov    %edx,%eax
     61f:	5b                   	pop    %ebx
     620:	5e                   	pop    %esi
     621:	5f                   	pop    %edi
     622:	5d                   	pop    %ebp
     623:	c3                   	ret    
     624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     628:	83 ec 08             	sub    $0x8,%esp
     62b:	50                   	push   %eax
     62c:	ff 75 10             	push   0x10(%ebp)
     62f:	e8 ac 07 00 00       	call   de0 <strchr>
     634:	83 c4 10             	add    $0x10,%esp
     637:	31 d2                	xor    %edx,%edx
     639:	85 c0                	test   %eax,%eax
     63b:	0f 95 c2             	setne  %dl
}
     63e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     641:	5b                   	pop    %ebx
     642:	89 d0                	mov    %edx,%eax
     644:	5e                   	pop    %esi
     645:	5f                   	pop    %edi
     646:	5d                   	pop    %ebp
     647:	c3                   	ret    
     648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     64f:	90                   	nop

00000650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
     656:	83 ec 2c             	sub    $0x2c,%esp
     659:	8b 75 0c             	mov    0xc(%ebp),%esi
     65c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     65f:	90                   	nop
     660:	83 ec 04             	sub    $0x4,%esp
     663:	68 39 14 00 00       	push   $0x1439
     668:	53                   	push   %ebx
     669:	56                   	push   %esi
     66a:	e8 61 ff ff ff       	call   5d0 <peek>
     66f:	83 c4 10             	add    $0x10,%esp
     672:	85 c0                	test   %eax,%eax
     674:	0f 84 f6 00 00 00    	je     770 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     67a:	6a 00                	push   $0x0
     67c:	6a 00                	push   $0x0
     67e:	53                   	push   %ebx
     67f:	56                   	push   %esi
     680:	e8 eb fd ff ff       	call   470 <gettoken>
     685:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     687:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     68a:	50                   	push   %eax
     68b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     68e:	50                   	push   %eax
     68f:	53                   	push   %ebx
     690:	56                   	push   %esi
     691:	e8 da fd ff ff       	call   470 <gettoken>
     696:	83 c4 20             	add    $0x20,%esp
     699:	83 f8 61             	cmp    $0x61,%eax
     69c:	0f 85 d9 00 00 00    	jne    77b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     6a2:	83 ff 3c             	cmp    $0x3c,%edi
     6a5:	74 69                	je     710 <parseredirs+0xc0>
     6a7:	83 ff 3e             	cmp    $0x3e,%edi
     6aa:	74 05                	je     6b1 <parseredirs+0x61>
     6ac:	83 ff 2b             	cmp    $0x2b,%edi
     6af:	75 af                	jne    660 <parseredirs+0x10>
  cmd = malloc(sizeof(*cmd));
     6b1:	83 ec 0c             	sub    $0xc,%esp
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6b4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     6b7:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     6ba:	6a 18                	push   $0x18
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6bc:	89 55 d0             	mov    %edx,-0x30(%ebp)
     6bf:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     6c2:	e8 29 0c 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6c7:	83 c4 0c             	add    $0xc,%esp
     6ca:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6cc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6ce:	6a 00                	push   $0x0
     6d0:	50                   	push   %eax
     6d1:	e8 ea 06 00 00       	call   dc0 <memset>
  cmd->type = REDIR;
     6d6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     6dc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     6df:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6e2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     6e8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     6ee:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     6f5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     6f8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
     6ff:	89 7d 08             	mov    %edi,0x8(%ebp)
     702:	e9 59 ff ff ff       	jmp    660 <parseredirs+0x10>
     707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     70e:	66 90                	xchg   %ax,%ax
  cmd = malloc(sizeof(*cmd));
     710:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     713:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     716:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     719:	6a 18                	push   $0x18
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     71b:	89 55 d0             	mov    %edx,-0x30(%ebp)
     71e:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     721:	e8 ca 0b 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     726:	83 c4 0c             	add    $0xc,%esp
     729:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     72b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     72d:	6a 00                	push   $0x0
     72f:	50                   	push   %eax
     730:	e8 8b 06 00 00       	call   dc0 <memset>
  cmd->cmd = subcmd;
     735:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     738:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     73b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
     73e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     741:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
     747:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     74a:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     74d:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     750:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     753:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     75a:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
     761:	e9 fa fe ff ff       	jmp    660 <parseredirs+0x10>
     766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     76d:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     770:	8b 45 08             	mov    0x8(%ebp),%eax
     773:	8d 65 f4             	lea    -0xc(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5f                   	pop    %edi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret    
      panic("missing file for redirection");
     77b:	83 ec 0c             	sub    $0xc,%esp
     77e:	68 1c 14 00 00       	push   $0x141c
     783:	e8 e8 f9 ff ff       	call   170 <panic>
     788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     78f:	90                   	nop

00000790 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     790:	55                   	push   %ebp
     791:	89 e5                	mov    %esp,%ebp
     793:	57                   	push   %edi
     794:	56                   	push   %esi
     795:	53                   	push   %ebx
     796:	83 ec 30             	sub    $0x30,%esp
     799:	8b 75 08             	mov    0x8(%ebp),%esi
     79c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     79f:	68 3c 14 00 00       	push   $0x143c
     7a4:	57                   	push   %edi
     7a5:	56                   	push   %esi
     7a6:	e8 25 fe ff ff       	call   5d0 <peek>
     7ab:	83 c4 10             	add    $0x10,%esp
     7ae:	85 c0                	test   %eax,%eax
     7b0:	0f 85 aa 00 00 00    	jne    860 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     7b6:	83 ec 0c             	sub    $0xc,%esp
     7b9:	89 c3                	mov    %eax,%ebx
     7bb:	6a 54                	push   $0x54
     7bd:	e8 2e 0b 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7c2:	83 c4 0c             	add    $0xc,%esp
     7c5:	6a 54                	push   $0x54
     7c7:	6a 00                	push   $0x0
     7c9:	50                   	push   %eax
     7ca:	89 45 d0             	mov    %eax,-0x30(%ebp)
     7cd:	e8 ee 05 00 00       	call   dc0 <memset>
  cmd->type = EXEC;
     7d2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7d5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     7d8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     7de:	57                   	push   %edi
     7df:	56                   	push   %esi
     7e0:	50                   	push   %eax
     7e1:	e8 6a fe ff ff       	call   650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     7e6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     7e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7ec:	eb 15                	jmp    803 <parseexec+0x73>
     7ee:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7f0:	83 ec 04             	sub    $0x4,%esp
     7f3:	57                   	push   %edi
     7f4:	56                   	push   %esi
     7f5:	ff 75 d4             	push   -0x2c(%ebp)
     7f8:	e8 53 fe ff ff       	call   650 <parseredirs>
     7fd:	83 c4 10             	add    $0x10,%esp
     800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     803:	83 ec 04             	sub    $0x4,%esp
     806:	68 53 14 00 00       	push   $0x1453
     80b:	57                   	push   %edi
     80c:	56                   	push   %esi
     80d:	e8 be fd ff ff       	call   5d0 <peek>
     812:	83 c4 10             	add    $0x10,%esp
     815:	85 c0                	test   %eax,%eax
     817:	75 5f                	jne    878 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     81c:	50                   	push   %eax
     81d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     820:	50                   	push   %eax
     821:	57                   	push   %edi
     822:	56                   	push   %esi
     823:	e8 48 fc ff ff       	call   470 <gettoken>
     828:	83 c4 10             	add    $0x10,%esp
     82b:	85 c0                	test   %eax,%eax
     82d:	74 49                	je     878 <parseexec+0xe8>
    if(tok != 'a')
     82f:	83 f8 61             	cmp    $0x61,%eax
     832:	75 62                	jne    896 <parseexec+0x106>
    cmd->argv[argc] = q;
     834:	8b 45 e0             	mov    -0x20(%ebp),%eax
     837:	8b 55 d0             	mov    -0x30(%ebp),%edx
     83a:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     83e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     841:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     845:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     848:	83 fb 0a             	cmp    $0xa,%ebx
     84b:	75 a3                	jne    7f0 <parseexec+0x60>
      panic("too many args");
     84d:	83 ec 0c             	sub    $0xc,%esp
     850:	68 45 14 00 00       	push   $0x1445
     855:	e8 16 f9 ff ff       	call   170 <panic>
     85a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     860:	89 7d 0c             	mov    %edi,0xc(%ebp)
     863:	89 75 08             	mov    %esi,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     866:	8d 65 f4             	lea    -0xc(%ebp),%esp
     869:	5b                   	pop    %ebx
     86a:	5e                   	pop    %esi
     86b:	5f                   	pop    %edi
     86c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     86d:	e9 ae 01 00 00       	jmp    a20 <parseblock>
     872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     878:	8b 45 d0             	mov    -0x30(%ebp),%eax
     87b:	c7 44 98 04 00 00 00 	movl   $0x0,0x4(%eax,%ebx,4)
     882:	00 
  cmd->eargv[argc] = 0;
     883:	c7 44 98 2c 00 00 00 	movl   $0x0,0x2c(%eax,%ebx,4)
     88a:	00 
}
     88b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     88e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     891:	5b                   	pop    %ebx
     892:	5e                   	pop    %esi
     893:	5f                   	pop    %edi
     894:	5d                   	pop    %ebp
     895:	c3                   	ret    
      panic("syntax");
     896:	83 ec 0c             	sub    $0xc,%esp
     899:	68 3e 14 00 00       	push   $0x143e
     89e:	e8 cd f8 ff ff       	call   170 <panic>
     8a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000008b0 <parsepipe>:
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	53                   	push   %ebx
     8b6:	83 ec 14             	sub    $0x14,%esp
     8b9:	8b 75 08             	mov    0x8(%ebp),%esi
     8bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     8bf:	57                   	push   %edi
     8c0:	56                   	push   %esi
     8c1:	e8 ca fe ff ff       	call   790 <parseexec>
  if(peek(ps, es, "|")){
     8c6:	83 c4 0c             	add    $0xc,%esp
     8c9:	68 58 14 00 00       	push   $0x1458
  cmd = parseexec(ps, es);
     8ce:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     8d0:	57                   	push   %edi
     8d1:	56                   	push   %esi
     8d2:	e8 f9 fc ff ff       	call   5d0 <peek>
     8d7:	83 c4 10             	add    $0x10,%esp
     8da:	85 c0                	test   %eax,%eax
     8dc:	75 12                	jne    8f0 <parsepipe+0x40>
}
     8de:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8e1:	89 d8                	mov    %ebx,%eax
     8e3:	5b                   	pop    %ebx
     8e4:	5e                   	pop    %esi
     8e5:	5f                   	pop    %edi
     8e6:	5d                   	pop    %ebp
     8e7:	c3                   	ret    
     8e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8ef:	90                   	nop
    gettoken(ps, es, 0, 0);
     8f0:	6a 00                	push   $0x0
     8f2:	6a 00                	push   $0x0
     8f4:	57                   	push   %edi
     8f5:	56                   	push   %esi
     8f6:	e8 75 fb ff ff       	call   470 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8fb:	58                   	pop    %eax
     8fc:	5a                   	pop    %edx
     8fd:	57                   	push   %edi
     8fe:	56                   	push   %esi
     8ff:	e8 ac ff ff ff       	call   8b0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     904:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     90b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     90d:	e8 de 09 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     912:	83 c4 0c             	add    $0xc,%esp
     915:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     917:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     919:	6a 00                	push   $0x0
     91b:	50                   	push   %eax
     91c:	e8 9f 04 00 00       	call   dc0 <memset>
  cmd->left = left;
     921:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     924:	83 c4 10             	add    $0x10,%esp
     927:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     929:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     92f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     931:	89 7e 08             	mov    %edi,0x8(%esi)
}
     934:	8d 65 f4             	lea    -0xc(%ebp),%esp
     937:	5b                   	pop    %ebx
     938:	5e                   	pop    %esi
     939:	5f                   	pop    %edi
     93a:	5d                   	pop    %ebp
     93b:	c3                   	ret    
     93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000940 <parseline>:
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	57                   	push   %edi
     944:	56                   	push   %esi
     945:	53                   	push   %ebx
     946:	83 ec 24             	sub    $0x24,%esp
     949:	8b 75 08             	mov    0x8(%ebp),%esi
     94c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     94f:	57                   	push   %edi
     950:	56                   	push   %esi
     951:	e8 5a ff ff ff       	call   8b0 <parsepipe>
  while(peek(ps, es, "&")){
     956:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     959:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     95b:	eb 3b                	jmp    998 <parseline+0x58>
     95d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     960:	6a 00                	push   $0x0
     962:	6a 00                	push   $0x0
     964:	57                   	push   %edi
     965:	56                   	push   %esi
     966:	e8 05 fb ff ff       	call   470 <gettoken>
  cmd = malloc(sizeof(*cmd));
     96b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     972:	e8 79 09 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     977:	83 c4 0c             	add    $0xc,%esp
     97a:	6a 08                	push   $0x8
     97c:	6a 00                	push   $0x0
     97e:	50                   	push   %eax
     97f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     982:	e8 39 04 00 00       	call   dc0 <memset>
  cmd->type = BACK;
     987:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     98a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     98d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     993:	89 5a 04             	mov    %ebx,0x4(%edx)
     996:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     998:	83 ec 04             	sub    $0x4,%esp
     99b:	68 5a 14 00 00       	push   $0x145a
     9a0:	57                   	push   %edi
     9a1:	56                   	push   %esi
     9a2:	e8 29 fc ff ff       	call   5d0 <peek>
     9a7:	83 c4 10             	add    $0x10,%esp
     9aa:	85 c0                	test   %eax,%eax
     9ac:	75 b2                	jne    960 <parseline+0x20>
  if(peek(ps, es, ";")){
     9ae:	83 ec 04             	sub    $0x4,%esp
     9b1:	68 56 14 00 00       	push   $0x1456
     9b6:	57                   	push   %edi
     9b7:	56                   	push   %esi
     9b8:	e8 13 fc ff ff       	call   5d0 <peek>
     9bd:	83 c4 10             	add    $0x10,%esp
     9c0:	85 c0                	test   %eax,%eax
     9c2:	75 0c                	jne    9d0 <parseline+0x90>
}
     9c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c7:	89 d8                	mov    %ebx,%eax
     9c9:	5b                   	pop    %ebx
     9ca:	5e                   	pop    %esi
     9cb:	5f                   	pop    %edi
     9cc:	5d                   	pop    %ebp
     9cd:	c3                   	ret    
     9ce:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9d0:	6a 00                	push   $0x0
     9d2:	6a 00                	push   $0x0
     9d4:	57                   	push   %edi
     9d5:	56                   	push   %esi
     9d6:	e8 95 fa ff ff       	call   470 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9db:	58                   	pop    %eax
     9dc:	5a                   	pop    %edx
     9dd:	57                   	push   %edi
     9de:	56                   	push   %esi
     9df:	e8 5c ff ff ff       	call   940 <parseline>
  cmd = malloc(sizeof(*cmd));
     9e4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     9eb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     9ed:	e8 fe 08 00 00       	call   12f0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9f2:	83 c4 0c             	add    $0xc,%esp
     9f5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     9f7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     9f9:	6a 00                	push   $0x0
     9fb:	50                   	push   %eax
     9fc:	e8 bf 03 00 00       	call   dc0 <memset>
  cmd->left = left;
     a01:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     a04:	83 c4 10             	add    $0x10,%esp
     a07:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     a09:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     a0f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a11:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a17:	5b                   	pop    %ebx
     a18:	5e                   	pop    %esi
     a19:	5f                   	pop    %edi
     a1a:	5d                   	pop    %ebp
     a1b:	c3                   	ret    
     a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a20 <parseblock>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 10             	sub    $0x10,%esp
     a29:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a2c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a2f:	68 3c 14 00 00       	push   $0x143c
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 95 fb ff ff       	call   5d0 <peek>
     a3b:	83 c4 10             	add    $0x10,%esp
     a3e:	85 c0                	test   %eax,%eax
     a40:	74 4a                	je     a8c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     a42:	6a 00                	push   $0x0
     a44:	6a 00                	push   $0x0
     a46:	56                   	push   %esi
     a47:	53                   	push   %ebx
     a48:	e8 23 fa ff ff       	call   470 <gettoken>
  cmd = parseline(ps, es);
     a4d:	58                   	pop    %eax
     a4e:	5a                   	pop    %edx
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 ea fe ff ff       	call   940 <parseline>
  if(!peek(ps, es, ")"))
     a56:	83 c4 0c             	add    $0xc,%esp
     a59:	68 78 14 00 00       	push   $0x1478
  cmd = parseline(ps, es);
     a5e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a60:	56                   	push   %esi
     a61:	53                   	push   %ebx
     a62:	e8 69 fb ff ff       	call   5d0 <peek>
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	85 c0                	test   %eax,%eax
     a6c:	74 2b                	je     a99 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a6e:	6a 00                	push   $0x0
     a70:	6a 00                	push   $0x0
     a72:	56                   	push   %esi
     a73:	53                   	push   %ebx
     a74:	e8 f7 f9 ff ff       	call   470 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a79:	83 c4 0c             	add    $0xc,%esp
     a7c:	56                   	push   %esi
     a7d:	53                   	push   %ebx
     a7e:	57                   	push   %edi
     a7f:	e8 cc fb ff ff       	call   650 <parseredirs>
}
     a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a87:	5b                   	pop    %ebx
     a88:	5e                   	pop    %esi
     a89:	5f                   	pop    %edi
     a8a:	5d                   	pop    %ebp
     a8b:	c3                   	ret    
    panic("parseblock");
     a8c:	83 ec 0c             	sub    $0xc,%esp
     a8f:	68 5c 14 00 00       	push   $0x145c
     a94:	e8 d7 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     a99:	83 ec 0c             	sub    $0xc,%esp
     a9c:	68 67 14 00 00       	push   $0x1467
     aa1:	e8 ca f6 ff ff       	call   170 <panic>
     aa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     aad:	8d 76 00             	lea    0x0(%esi),%esi

00000ab0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	53                   	push   %ebx
     ab4:	83 ec 04             	sub    $0x4,%esp
     ab7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     aba:	85 db                	test   %ebx,%ebx
     abc:	0f 84 8e 00 00 00    	je     b50 <nulterminate+0xa0>
    return 0;

  switch(cmd->type){
     ac2:	83 3b 05             	cmpl   $0x5,(%ebx)
     ac5:	77 61                	ja     b28 <nulterminate+0x78>
     ac7:	8b 03                	mov    (%ebx),%eax
     ac9:	ff 24 85 b8 14 00 00 	jmp    *0x14b8(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     ad0:	83 ec 0c             	sub    $0xc,%esp
     ad3:	ff 73 04             	push   0x4(%ebx)
     ad6:	e8 d5 ff ff ff       	call   ab0 <nulterminate>
    nulterminate(lcmd->right);
     adb:	58                   	pop    %eax
     adc:	ff 73 08             	push   0x8(%ebx)
     adf:	e8 cc ff ff ff       	call   ab0 <nulterminate>
    break;
     ae4:	83 c4 10             	add    $0x10,%esp
     ae7:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     aec:	c9                   	leave  
     aed:	c3                   	ret    
     aee:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	ff 73 04             	push   0x4(%ebx)
     af6:	e8 b5 ff ff ff       	call   ab0 <nulterminate>
    break;
     afb:	89 d8                	mov    %ebx,%eax
     afd:	83 c4 10             	add    $0x10,%esp
}
     b00:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b03:	c9                   	leave  
     b04:	c3                   	ret    
     b05:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     b08:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b0b:	8d 43 08             	lea    0x8(%ebx),%eax
     b0e:	85 c9                	test   %ecx,%ecx
     b10:	74 16                	je     b28 <nulterminate+0x78>
     b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b18:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b1b:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b1e:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b21:	8b 50 fc             	mov    -0x4(%eax),%edx
     b24:	85 d2                	test   %edx,%edx
     b26:	75 f0                	jne    b18 <nulterminate+0x68>
  switch(cmd->type){
     b28:	89 d8                	mov    %ebx,%eax
}
     b2a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b2d:	c9                   	leave  
     b2e:	c3                   	ret    
     b2f:	90                   	nop
    nulterminate(rcmd->cmd);
     b30:	83 ec 0c             	sub    $0xc,%esp
     b33:	ff 73 04             	push   0x4(%ebx)
     b36:	e8 75 ff ff ff       	call   ab0 <nulterminate>
    *rcmd->efile = 0;
     b3b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     b3e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b41:	c6 00 00             	movb   $0x0,(%eax)
    break;
     b44:	89 d8                	mov    %ebx,%eax
}
     b46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b49:	c9                   	leave  
     b4a:	c3                   	ret    
     b4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b4f:	90                   	nop
    return 0;
     b50:	31 c0                	xor    %eax,%eax
     b52:	eb 95                	jmp    ae9 <nulterminate+0x39>
     b54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b5f:	90                   	nop

00000b60 <parsecmd>:
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	57                   	push   %edi
     b64:	56                   	push   %esi
  cmd = parseline(&s, es);
     b65:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     b68:	53                   	push   %ebx
     b69:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     b6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b6f:	53                   	push   %ebx
     b70:	e8 1b 02 00 00       	call   d90 <strlen>
  cmd = parseline(&s, es);
     b75:	59                   	pop    %ecx
     b76:	5e                   	pop    %esi
  es = s + strlen(s);
     b77:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b79:	53                   	push   %ebx
     b7a:	57                   	push   %edi
     b7b:	e8 c0 fd ff ff       	call   940 <parseline>
  peek(&s, es, "");
     b80:	83 c4 0c             	add    $0xc,%esp
     b83:	68 06 14 00 00       	push   $0x1406
  cmd = parseline(&s, es);
     b88:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b8a:	53                   	push   %ebx
     b8b:	57                   	push   %edi
     b8c:	e8 3f fa ff ff       	call   5d0 <peek>
  if(s != es){
     b91:	8b 45 08             	mov    0x8(%ebp),%eax
     b94:	83 c4 10             	add    $0x10,%esp
     b97:	39 d8                	cmp    %ebx,%eax
     b99:	75 13                	jne    bae <parsecmd+0x4e>
  nulterminate(cmd);
     b9b:	83 ec 0c             	sub    $0xc,%esp
     b9e:	56                   	push   %esi
     b9f:	e8 0c ff ff ff       	call   ab0 <nulterminate>
}
     ba4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ba7:	89 f0                	mov    %esi,%eax
     ba9:	5b                   	pop    %ebx
     baa:	5e                   	pop    %esi
     bab:	5f                   	pop    %edi
     bac:	5d                   	pop    %ebp
     bad:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     bae:	52                   	push   %edx
     baf:	50                   	push   %eax
     bb0:	68 7a 14 00 00       	push   $0x147a
     bb5:	6a 02                	push   $0x2
     bb7:	e8 04 05 00 00       	call   10c0 <printf>
    panic("syntax");
     bbc:	c7 04 24 3e 14 00 00 	movl   $0x143e,(%esp)
     bc3:	e8 a8 f5 ff ff       	call   170 <panic>
     bc8:	66 90                	xchg   %ax,%ax
     bca:	66 90                	xchg   %ax,%ax
     bcc:	66 90                	xchg   %ax,%ax
     bce:	66 90                	xchg   %ax,%ax

00000bd0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
     bd0:	55                   	push   %ebp
     bd1:	89 e5                	mov    %esp,%ebp
     bd3:	56                   	push   %esi
     bd4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
     bd5:	31 db                	xor    %ebx,%ebx
     bd7:	eb 0f                	jmp    be8 <thread_create+0x18>
     bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     be0:	83 c3 01             	add    $0x1,%ebx
     be3:	83 fb 40             	cmp    $0x40,%ebx
     be6:	74 60                	je     c48 <thread_create+0x78>
    if (inUse[i] == 0){
     be8:	8b 04 9d 60 1c 00 00 	mov    0x1c60(,%ebx,4),%eax
     bef:	85 c0                	test   %eax,%eax
     bf1:	75 ed                	jne    be0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
     bf3:	a1 d0 1b 00 00       	mov    0x1bd0,%eax
     bf8:	83 ec 0c             	sub    $0xc,%esp
     bfb:	01 c0                	add    %eax,%eax
     bfd:	50                   	push   %eax
     bfe:	e8 ed 06 00 00       	call   12f0 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
     c03:	8b 35 d0 1b 00 00    	mov    0x1bd0,%esi
     c09:	83 c4 10             	add    $0x10,%esp
     c0c:	99                   	cltd   
      malloc_addrs[i] = stack;
     c0d:	89 04 9d 60 1d 00 00 	mov    %eax,0x1d60(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
     c14:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
     c16:	f7 fe                	idiv   %esi
        stack += PGSIZE;
     c18:	8d 04 31             	lea    (%ecx,%esi,1),%eax
     c1b:	29 d6                	sub    %edx,%esi
     c1d:	01 f1                	add    %esi,%ecx
     c1f:	85 d2                	test   %edx,%edx
     c21:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
     c24:	51                   	push   %ecx
     c25:	ff 75 10             	push   0x10(%ebp)
     c28:	ff 75 0c             	push   0xc(%ebp)
     c2b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
     c2e:	89 0c 9d 60 1e 00 00 	mov    %ecx,0x1e60(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
     c35:	e8 b9 03 00 00       	call   ff3 <clone>
     c3a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
     c3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c40:	5b                   	pop    %ebx
     c41:	5e                   	pop    %esi
     c42:	5d                   	pop    %ebp
     c43:	c3                   	ret    
     c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c48:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
     c4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     c50:	5b                   	pop    %ebx
     c51:	5e                   	pop    %esi
     c52:	5d                   	pop    %ebp
     c53:	c3                   	ret    
     c54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c5f:	90                   	nop

00000c60 <thread_join>:

int 
thread_join()
{
     c60:	55                   	push   %ebp
     c61:	89 e5                	mov    %esp,%ebp
     c63:	56                   	push   %esi
     c64:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
     c65:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
     c68:	31 db                	xor    %ebx,%ebx
{
     c6a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
     c6d:	50                   	push   %eax
     c6e:	e8 88 03 00 00       	call   ffb <join>
     c73:	83 c4 10             	add    $0x10,%esp
     c76:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
     c78:	eb 0e                	jmp    c88 <thread_join+0x28>
     c7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c80:	83 c3 01             	add    $0x1,%ebx
     c83:	83 fb 40             	cmp    $0x40,%ebx
     c86:	74 27                	je     caf <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
     c88:	83 3c 9d 60 1c 00 00 	cmpl   $0x1,0x1c60(,%ebx,4)
     c8f:	01 
     c90:	75 ee                	jne    c80 <thread_join+0x20>
      free(malloc_addrs[i]);
     c92:	83 ec 0c             	sub    $0xc,%esp
     c95:	ff 34 9d 60 1d 00 00 	push   0x1d60(,%ebx,4)
     c9c:	e8 bf 05 00 00       	call   1260 <free>
      inUse[i] = 0;
      break;
     ca1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
     ca4:	c7 04 9d 60 1c 00 00 	movl   $0x0,0x1c60(,%ebx,4)
     cab:	00 00 00 00 
    }
  }
  return id;
}
     caf:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cb2:	89 f0                	mov    %esi,%eax
     cb4:	5b                   	pop    %ebx
     cb5:	5e                   	pop    %esi
     cb6:	5d                   	pop    %ebp
     cb7:	c3                   	ret    
     cb8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cbf:	90                   	nop

00000cc0 <lock_init>:

void lock_init(lock_t *lock){
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
     cc3:	8b 45 08             	mov    0x8(%ebp),%eax
     cc6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
     ccc:	5d                   	pop    %ebp
     ccd:	c3                   	ret    
     cce:	66 90                	xchg   %ax,%ax

00000cd0 <lock_acquire>:

void lock_acquire(lock_t *lock){
     cd0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
     cd1:	b9 01 00 00 00       	mov    $0x1,%ecx
     cd6:	89 e5                	mov    %esp,%ebp
     cd8:	8b 55 08             	mov    0x8(%ebp),%edx
     cdb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cdf:	90                   	nop
     ce0:	89 c8                	mov    %ecx,%eax
     ce2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
     ce5:	85 c0                	test   %eax,%eax
     ce7:	75 f7                	jne    ce0 <lock_acquire+0x10>
}
     ce9:	5d                   	pop    %ebp
     cea:	c3                   	ret    
     ceb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cef:	90                   	nop

00000cf0 <lock_release>:

void lock_release(lock_t *lock){
     cf0:	55                   	push   %ebp
     cf1:	31 c0                	xor    %eax,%eax
     cf3:	89 e5                	mov    %esp,%ebp
     cf5:	8b 55 08             	mov    0x8(%ebp),%edx
     cf8:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
     cfb:	5d                   	pop    %ebp
     cfc:	c3                   	ret    
     cfd:	8d 76 00             	lea    0x0(%esi),%esi

00000d00 <strcpy>:
char*
strcpy(char *s, const char *t)
{
     d00:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     d01:	31 c0                	xor    %eax,%eax
{
     d03:	89 e5                	mov    %esp,%ebp
     d05:	53                   	push   %ebx
     d06:	8b 4d 08             	mov    0x8(%ebp),%ecx
     d09:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     d10:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     d14:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     d17:	83 c0 01             	add    $0x1,%eax
     d1a:	84 d2                	test   %dl,%dl
     d1c:	75 f2                	jne    d10 <strcpy+0x10>
    ;
  return os;
}
     d1e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d21:	89 c8                	mov    %ecx,%eax
     d23:	c9                   	leave  
     d24:	c3                   	ret    
     d25:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	53                   	push   %ebx
     d34:	8b 55 08             	mov    0x8(%ebp),%edx
     d37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     d3a:	0f b6 02             	movzbl (%edx),%eax
     d3d:	84 c0                	test   %al,%al
     d3f:	75 17                	jne    d58 <strcmp+0x28>
     d41:	eb 3a                	jmp    d7d <strcmp+0x4d>
     d43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d47:	90                   	nop
     d48:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     d4c:	83 c2 01             	add    $0x1,%edx
     d4f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     d52:	84 c0                	test   %al,%al
     d54:	74 1a                	je     d70 <strcmp+0x40>
    p++, q++;
     d56:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
     d58:	0f b6 19             	movzbl (%ecx),%ebx
     d5b:	38 c3                	cmp    %al,%bl
     d5d:	74 e9                	je     d48 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
     d5f:	29 d8                	sub    %ebx,%eax
}
     d61:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d64:	c9                   	leave  
     d65:	c3                   	ret    
     d66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d6d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
     d70:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     d74:	31 c0                	xor    %eax,%eax
     d76:	29 d8                	sub    %ebx,%eax
}
     d78:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d7b:	c9                   	leave  
     d7c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
     d7d:	0f b6 19             	movzbl (%ecx),%ebx
     d80:	31 c0                	xor    %eax,%eax
     d82:	eb db                	jmp    d5f <strcmp+0x2f>
     d84:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d8f:	90                   	nop

00000d90 <strlen>:

uint
strlen(const char *s)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     d96:	80 3a 00             	cmpb   $0x0,(%edx)
     d99:	74 15                	je     db0 <strlen+0x20>
     d9b:	31 c0                	xor    %eax,%eax
     d9d:	8d 76 00             	lea    0x0(%esi),%esi
     da0:	83 c0 01             	add    $0x1,%eax
     da3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     da7:	89 c1                	mov    %eax,%ecx
     da9:	75 f5                	jne    da0 <strlen+0x10>
    ;
  return n;
}
     dab:	89 c8                	mov    %ecx,%eax
     dad:	5d                   	pop    %ebp
     dae:	c3                   	ret    
     daf:	90                   	nop
  for(n = 0; s[n]; n++)
     db0:	31 c9                	xor    %ecx,%ecx
}
     db2:	5d                   	pop    %ebp
     db3:	89 c8                	mov    %ecx,%eax
     db5:	c3                   	ret    
     db6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dbd:	8d 76 00             	lea    0x0(%esi),%esi

00000dc0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	57                   	push   %edi
     dc4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
     dc7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     dca:	8b 45 0c             	mov    0xc(%ebp),%eax
     dcd:	89 d7                	mov    %edx,%edi
     dcf:	fc                   	cld    
     dd0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     dd2:	8b 7d fc             	mov    -0x4(%ebp),%edi
     dd5:	89 d0                	mov    %edx,%eax
     dd7:	c9                   	leave  
     dd8:	c3                   	ret    
     dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000de0 <strchr>:

char*
strchr(const char *s, char c)
{
     de0:	55                   	push   %ebp
     de1:	89 e5                	mov    %esp,%ebp
     de3:	8b 45 08             	mov    0x8(%ebp),%eax
     de6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     dea:	0f b6 10             	movzbl (%eax),%edx
     ded:	84 d2                	test   %dl,%dl
     def:	75 12                	jne    e03 <strchr+0x23>
     df1:	eb 1d                	jmp    e10 <strchr+0x30>
     df3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     df7:	90                   	nop
     df8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     dfc:	83 c0 01             	add    $0x1,%eax
     dff:	84 d2                	test   %dl,%dl
     e01:	74 0d                	je     e10 <strchr+0x30>
    if(*s == c)
     e03:	38 d1                	cmp    %dl,%cl
     e05:	75 f1                	jne    df8 <strchr+0x18>
      return (char*)s;
  return 0;
}
     e07:	5d                   	pop    %ebp
     e08:	c3                   	ret    
     e09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     e10:	31 c0                	xor    %eax,%eax
}
     e12:	5d                   	pop    %ebp
     e13:	c3                   	ret    
     e14:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e1f:	90                   	nop

00000e20 <gets>:

char*
gets(char *buf, int max)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	57                   	push   %edi
     e24:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     e25:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
     e28:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     e29:	31 db                	xor    %ebx,%ebx
{
     e2b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     e2e:	eb 27                	jmp    e57 <gets+0x37>
    cc = read(0, &c, 1);
     e30:	83 ec 04             	sub    $0x4,%esp
     e33:	6a 01                	push   $0x1
     e35:	57                   	push   %edi
     e36:	6a 00                	push   $0x0
     e38:	e8 2e 01 00 00       	call   f6b <read>
    if(cc < 1)
     e3d:	83 c4 10             	add    $0x10,%esp
     e40:	85 c0                	test   %eax,%eax
     e42:	7e 1d                	jle    e61 <gets+0x41>
      break;
    buf[i++] = c;
     e44:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     e48:	8b 55 08             	mov    0x8(%ebp),%edx
     e4b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     e4f:	3c 0a                	cmp    $0xa,%al
     e51:	74 1d                	je     e70 <gets+0x50>
     e53:	3c 0d                	cmp    $0xd,%al
     e55:	74 19                	je     e70 <gets+0x50>
  for(i=0; i+1 < max; ){
     e57:	89 de                	mov    %ebx,%esi
     e59:	83 c3 01             	add    $0x1,%ebx
     e5c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     e5f:	7c cf                	jl     e30 <gets+0x10>
      break;
  }
  buf[i] = '\0';
     e61:	8b 45 08             	mov    0x8(%ebp),%eax
     e64:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e68:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e6b:	5b                   	pop    %ebx
     e6c:	5e                   	pop    %esi
     e6d:	5f                   	pop    %edi
     e6e:	5d                   	pop    %ebp
     e6f:	c3                   	ret    
  buf[i] = '\0';
     e70:	8b 45 08             	mov    0x8(%ebp),%eax
     e73:	89 de                	mov    %ebx,%esi
     e75:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
     e79:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e7c:	5b                   	pop    %ebx
     e7d:	5e                   	pop    %esi
     e7e:	5f                   	pop    %edi
     e7f:	5d                   	pop    %ebp
     e80:	c3                   	ret    
     e81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e88:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e8f:	90                   	nop

00000e90 <stat>:

int
stat(const char *n, struct stat *st)
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	56                   	push   %esi
     e94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e95:	83 ec 08             	sub    $0x8,%esp
     e98:	6a 00                	push   $0x0
     e9a:	ff 75 08             	push   0x8(%ebp)
     e9d:	e8 f1 00 00 00       	call   f93 <open>
  if(fd < 0)
     ea2:	83 c4 10             	add    $0x10,%esp
     ea5:	85 c0                	test   %eax,%eax
     ea7:	78 27                	js     ed0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     ea9:	83 ec 08             	sub    $0x8,%esp
     eac:	ff 75 0c             	push   0xc(%ebp)
     eaf:	89 c3                	mov    %eax,%ebx
     eb1:	50                   	push   %eax
     eb2:	e8 f4 00 00 00       	call   fab <fstat>
  close(fd);
     eb7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     eba:	89 c6                	mov    %eax,%esi
  close(fd);
     ebc:	e8 ba 00 00 00       	call   f7b <close>
  return r;
     ec1:	83 c4 10             	add    $0x10,%esp
}
     ec4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ec7:	89 f0                	mov    %esi,%eax
     ec9:	5b                   	pop    %ebx
     eca:	5e                   	pop    %esi
     ecb:	5d                   	pop    %ebp
     ecc:	c3                   	ret    
     ecd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     ed0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     ed5:	eb ed                	jmp    ec4 <stat+0x34>
     ed7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ede:	66 90                	xchg   %ax,%ax

00000ee0 <atoi>:

int
atoi(const char *s)
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	53                   	push   %ebx
     ee4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     ee7:	0f be 02             	movsbl (%edx),%eax
     eea:	8d 48 d0             	lea    -0x30(%eax),%ecx
     eed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     ef0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     ef5:	77 1e                	ja     f15 <atoi+0x35>
     ef7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     efe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     f00:	83 c2 01             	add    $0x1,%edx
     f03:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     f06:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     f0a:	0f be 02             	movsbl (%edx),%eax
     f0d:	8d 58 d0             	lea    -0x30(%eax),%ebx
     f10:	80 fb 09             	cmp    $0x9,%bl
     f13:	76 eb                	jbe    f00 <atoi+0x20>
  return n;
}
     f15:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     f18:	89 c8                	mov    %ecx,%eax
     f1a:	c9                   	leave  
     f1b:	c3                   	ret    
     f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000f20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     f20:	55                   	push   %ebp
     f21:	89 e5                	mov    %esp,%ebp
     f23:	57                   	push   %edi
     f24:	8b 45 10             	mov    0x10(%ebp),%eax
     f27:	8b 55 08             	mov    0x8(%ebp),%edx
     f2a:	56                   	push   %esi
     f2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     f2e:	85 c0                	test   %eax,%eax
     f30:	7e 13                	jle    f45 <memmove+0x25>
     f32:	01 d0                	add    %edx,%eax
  dst = vdst;
     f34:	89 d7                	mov    %edx,%edi
     f36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f3d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
     f40:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     f41:	39 f8                	cmp    %edi,%eax
     f43:	75 fb                	jne    f40 <memmove+0x20>
  return vdst;
}
     f45:	5e                   	pop    %esi
     f46:	89 d0                	mov    %edx,%eax
     f48:	5f                   	pop    %edi
     f49:	5d                   	pop    %ebp
     f4a:	c3                   	ret    

00000f4b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     f4b:	b8 01 00 00 00       	mov    $0x1,%eax
     f50:	cd 40                	int    $0x40
     f52:	c3                   	ret    

00000f53 <exit>:
SYSCALL(exit)
     f53:	b8 02 00 00 00       	mov    $0x2,%eax
     f58:	cd 40                	int    $0x40
     f5a:	c3                   	ret    

00000f5b <wait>:
SYSCALL(wait)
     f5b:	b8 03 00 00 00       	mov    $0x3,%eax
     f60:	cd 40                	int    $0x40
     f62:	c3                   	ret    

00000f63 <pipe>:
SYSCALL(pipe)
     f63:	b8 04 00 00 00       	mov    $0x4,%eax
     f68:	cd 40                	int    $0x40
     f6a:	c3                   	ret    

00000f6b <read>:
SYSCALL(read)
     f6b:	b8 05 00 00 00       	mov    $0x5,%eax
     f70:	cd 40                	int    $0x40
     f72:	c3                   	ret    

00000f73 <write>:
SYSCALL(write)
     f73:	b8 10 00 00 00       	mov    $0x10,%eax
     f78:	cd 40                	int    $0x40
     f7a:	c3                   	ret    

00000f7b <close>:
SYSCALL(close)
     f7b:	b8 15 00 00 00       	mov    $0x15,%eax
     f80:	cd 40                	int    $0x40
     f82:	c3                   	ret    

00000f83 <kill>:
SYSCALL(kill)
     f83:	b8 06 00 00 00       	mov    $0x6,%eax
     f88:	cd 40                	int    $0x40
     f8a:	c3                   	ret    

00000f8b <exec>:
SYSCALL(exec)
     f8b:	b8 07 00 00 00       	mov    $0x7,%eax
     f90:	cd 40                	int    $0x40
     f92:	c3                   	ret    

00000f93 <open>:
SYSCALL(open)
     f93:	b8 0f 00 00 00       	mov    $0xf,%eax
     f98:	cd 40                	int    $0x40
     f9a:	c3                   	ret    

00000f9b <mknod>:
SYSCALL(mknod)
     f9b:	b8 11 00 00 00       	mov    $0x11,%eax
     fa0:	cd 40                	int    $0x40
     fa2:	c3                   	ret    

00000fa3 <unlink>:
SYSCALL(unlink)
     fa3:	b8 12 00 00 00       	mov    $0x12,%eax
     fa8:	cd 40                	int    $0x40
     faa:	c3                   	ret    

00000fab <fstat>:
SYSCALL(fstat)
     fab:	b8 08 00 00 00       	mov    $0x8,%eax
     fb0:	cd 40                	int    $0x40
     fb2:	c3                   	ret    

00000fb3 <link>:
SYSCALL(link)
     fb3:	b8 13 00 00 00       	mov    $0x13,%eax
     fb8:	cd 40                	int    $0x40
     fba:	c3                   	ret    

00000fbb <mkdir>:
SYSCALL(mkdir)
     fbb:	b8 14 00 00 00       	mov    $0x14,%eax
     fc0:	cd 40                	int    $0x40
     fc2:	c3                   	ret    

00000fc3 <chdir>:
SYSCALL(chdir)
     fc3:	b8 09 00 00 00       	mov    $0x9,%eax
     fc8:	cd 40                	int    $0x40
     fca:	c3                   	ret    

00000fcb <dup>:
SYSCALL(dup)
     fcb:	b8 0a 00 00 00       	mov    $0xa,%eax
     fd0:	cd 40                	int    $0x40
     fd2:	c3                   	ret    

00000fd3 <getpid>:
SYSCALL(getpid)
     fd3:	b8 0b 00 00 00       	mov    $0xb,%eax
     fd8:	cd 40                	int    $0x40
     fda:	c3                   	ret    

00000fdb <sbrk>:
SYSCALL(sbrk)
     fdb:	b8 0c 00 00 00       	mov    $0xc,%eax
     fe0:	cd 40                	int    $0x40
     fe2:	c3                   	ret    

00000fe3 <sleep>:
SYSCALL(sleep)
     fe3:	b8 0d 00 00 00       	mov    $0xd,%eax
     fe8:	cd 40                	int    $0x40
     fea:	c3                   	ret    

00000feb <uptime>:
SYSCALL(uptime)
     feb:	b8 0e 00 00 00       	mov    $0xe,%eax
     ff0:	cd 40                	int    $0x40
     ff2:	c3                   	ret    

00000ff3 <clone>:
SYSCALL(clone)
     ff3:	b8 16 00 00 00       	mov    $0x16,%eax
     ff8:	cd 40                	int    $0x40
     ffa:	c3                   	ret    

00000ffb <join>:
SYSCALL(join)
     ffb:	b8 17 00 00 00       	mov    $0x17,%eax
    1000:	cd 40                	int    $0x40
    1002:	c3                   	ret    
    1003:	66 90                	xchg   %ax,%ax
    1005:	66 90                	xchg   %ax,%ax
    1007:	66 90                	xchg   %ax,%ax
    1009:	66 90                	xchg   %ax,%ax
    100b:	66 90                	xchg   %ax,%ax
    100d:	66 90                	xchg   %ax,%ax
    100f:	90                   	nop

00001010 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	57                   	push   %edi
    1014:	56                   	push   %esi
    1015:	53                   	push   %ebx
    1016:	83 ec 3c             	sub    $0x3c,%esp
    1019:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    101c:	89 d1                	mov    %edx,%ecx
{
    101e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1021:	85 d2                	test   %edx,%edx
    1023:	0f 89 7f 00 00 00    	jns    10a8 <printint+0x98>
    1029:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    102d:	74 79                	je     10a8 <printint+0x98>
    neg = 1;
    102f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1036:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1038:	31 db                	xor    %ebx,%ebx
    103a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    103d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1040:	89 c8                	mov    %ecx,%eax
    1042:	31 d2                	xor    %edx,%edx
    1044:	89 cf                	mov    %ecx,%edi
    1046:	f7 75 c4             	divl   -0x3c(%ebp)
    1049:	0f b6 92 30 15 00 00 	movzbl 0x1530(%edx),%edx
    1050:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1053:	89 d8                	mov    %ebx,%eax
    1055:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1058:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    105b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    105e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1061:	76 dd                	jbe    1040 <printint+0x30>
  if(neg)
    1063:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1066:	85 c9                	test   %ecx,%ecx
    1068:	74 0c                	je     1076 <printint+0x66>
    buf[i++] = '-';
    106a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    106f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1071:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1076:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1079:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    107d:	eb 07                	jmp    1086 <printint+0x76>
    107f:	90                   	nop
    putc(fd, buf[i]);
    1080:	0f b6 13             	movzbl (%ebx),%edx
    1083:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1086:	83 ec 04             	sub    $0x4,%esp
    1089:	88 55 d7             	mov    %dl,-0x29(%ebp)
    108c:	6a 01                	push   $0x1
    108e:	56                   	push   %esi
    108f:	57                   	push   %edi
    1090:	e8 de fe ff ff       	call   f73 <write>
  while(--i >= 0)
    1095:	83 c4 10             	add    $0x10,%esp
    1098:	39 de                	cmp    %ebx,%esi
    109a:	75 e4                	jne    1080 <printint+0x70>
}
    109c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    109f:	5b                   	pop    %ebx
    10a0:	5e                   	pop    %esi
    10a1:	5f                   	pop    %edi
    10a2:	5d                   	pop    %ebp
    10a3:	c3                   	ret    
    10a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    10a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    10af:	eb 87                	jmp    1038 <printint+0x28>
    10b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10bf:	90                   	nop

000010c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	57                   	push   %edi
    10c4:	56                   	push   %esi
    10c5:	53                   	push   %ebx
    10c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    10c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    10cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    10cf:	0f b6 13             	movzbl (%ebx),%edx
    10d2:	84 d2                	test   %dl,%dl
    10d4:	74 6a                	je     1140 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
    10d6:	8d 45 10             	lea    0x10(%ebp),%eax
    10d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    10dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    10df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
    10e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    10e4:	eb 36                	jmp    111c <printf+0x5c>
    10e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ed:	8d 76 00             	lea    0x0(%esi),%esi
    10f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    10f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
    10f8:	83 f8 25             	cmp    $0x25,%eax
    10fb:	74 15                	je     1112 <printf+0x52>
  write(fd, &c, 1);
    10fd:	83 ec 04             	sub    $0x4,%esp
    1100:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1103:	6a 01                	push   $0x1
    1105:	57                   	push   %edi
    1106:	56                   	push   %esi
    1107:	e8 67 fe ff ff       	call   f73 <write>
    110c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
    110f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1112:	0f b6 13             	movzbl (%ebx),%edx
    1115:	83 c3 01             	add    $0x1,%ebx
    1118:	84 d2                	test   %dl,%dl
    111a:	74 24                	je     1140 <printf+0x80>
    c = fmt[i] & 0xff;
    111c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    111f:	85 c9                	test   %ecx,%ecx
    1121:	74 cd                	je     10f0 <printf+0x30>
      }
    } else if(state == '%'){
    1123:	83 f9 25             	cmp    $0x25,%ecx
    1126:	75 ea                	jne    1112 <printf+0x52>
      if(c == 'd'){
    1128:	83 f8 25             	cmp    $0x25,%eax
    112b:	0f 84 07 01 00 00    	je     1238 <printf+0x178>
    1131:	83 e8 63             	sub    $0x63,%eax
    1134:	83 f8 15             	cmp    $0x15,%eax
    1137:	77 17                	ja     1150 <printf+0x90>
    1139:	ff 24 85 d8 14 00 00 	jmp    *0x14d8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    1140:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1143:	5b                   	pop    %ebx
    1144:	5e                   	pop    %esi
    1145:	5f                   	pop    %edi
    1146:	5d                   	pop    %ebp
    1147:	c3                   	ret    
    1148:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    114f:	90                   	nop
  write(fd, &c, 1);
    1150:	83 ec 04             	sub    $0x4,%esp
    1153:	88 55 d4             	mov    %dl,-0x2c(%ebp)
    1156:	6a 01                	push   $0x1
    1158:	57                   	push   %edi
    1159:	56                   	push   %esi
    115a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    115e:	e8 10 fe ff ff       	call   f73 <write>
        putc(fd, c);
    1163:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
    1167:	83 c4 0c             	add    $0xc,%esp
    116a:	88 55 e7             	mov    %dl,-0x19(%ebp)
    116d:	6a 01                	push   $0x1
    116f:	57                   	push   %edi
    1170:	56                   	push   %esi
    1171:	e8 fd fd ff ff       	call   f73 <write>
        putc(fd, c);
    1176:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1179:	31 c9                	xor    %ecx,%ecx
    117b:	eb 95                	jmp    1112 <printf+0x52>
    117d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1180:	83 ec 0c             	sub    $0xc,%esp
    1183:	b9 10 00 00 00       	mov    $0x10,%ecx
    1188:	6a 00                	push   $0x0
    118a:	8b 45 d0             	mov    -0x30(%ebp),%eax
    118d:	8b 10                	mov    (%eax),%edx
    118f:	89 f0                	mov    %esi,%eax
    1191:	e8 7a fe ff ff       	call   1010 <printint>
        ap++;
    1196:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    119a:	83 c4 10             	add    $0x10,%esp
      state = 0;
    119d:	31 c9                	xor    %ecx,%ecx
    119f:	e9 6e ff ff ff       	jmp    1112 <printf+0x52>
    11a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    11a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
    11ab:	8b 10                	mov    (%eax),%edx
        ap++;
    11ad:	83 c0 04             	add    $0x4,%eax
    11b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    11b3:	85 d2                	test   %edx,%edx
    11b5:	0f 84 8d 00 00 00    	je     1248 <printf+0x188>
        while(*s != 0){
    11bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
    11be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
    11c0:	84 c0                	test   %al,%al
    11c2:	0f 84 4a ff ff ff    	je     1112 <printf+0x52>
    11c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    11cb:	89 d3                	mov    %edx,%ebx
    11cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    11d0:	83 ec 04             	sub    $0x4,%esp
          s++;
    11d3:	83 c3 01             	add    $0x1,%ebx
    11d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    11d9:	6a 01                	push   $0x1
    11db:	57                   	push   %edi
    11dc:	56                   	push   %esi
    11dd:	e8 91 fd ff ff       	call   f73 <write>
        while(*s != 0){
    11e2:	0f b6 03             	movzbl (%ebx),%eax
    11e5:	83 c4 10             	add    $0x10,%esp
    11e8:	84 c0                	test   %al,%al
    11ea:	75 e4                	jne    11d0 <printf+0x110>
      state = 0;
    11ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    11ef:	31 c9                	xor    %ecx,%ecx
    11f1:	e9 1c ff ff ff       	jmp    1112 <printf+0x52>
    11f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    1200:	83 ec 0c             	sub    $0xc,%esp
    1203:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1208:	6a 01                	push   $0x1
    120a:	e9 7b ff ff ff       	jmp    118a <printf+0xca>
    120f:	90                   	nop
        putc(fd, *ap);
    1210:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
    1213:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1216:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    1218:	6a 01                	push   $0x1
    121a:	57                   	push   %edi
    121b:	56                   	push   %esi
        putc(fd, *ap);
    121c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    121f:	e8 4f fd ff ff       	call   f73 <write>
        ap++;
    1224:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
    1228:	83 c4 10             	add    $0x10,%esp
      state = 0;
    122b:	31 c9                	xor    %ecx,%ecx
    122d:	e9 e0 fe ff ff       	jmp    1112 <printf+0x52>
    1232:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
    1238:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    123b:	83 ec 04             	sub    $0x4,%esp
    123e:	e9 2a ff ff ff       	jmp    116d <printf+0xad>
    1243:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1247:	90                   	nop
          s = "(null)";
    1248:	ba d0 14 00 00       	mov    $0x14d0,%edx
        while(*s != 0){
    124d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
    1250:	b8 28 00 00 00       	mov    $0x28,%eax
    1255:	89 d3                	mov    %edx,%ebx
    1257:	e9 74 ff ff ff       	jmp    11d0 <printf+0x110>
    125c:	66 90                	xchg   %ax,%ax
    125e:	66 90                	xchg   %ax,%ax

00001260 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1260:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1261:	a1 60 1f 00 00       	mov    0x1f60,%eax
{
    1266:	89 e5                	mov    %esp,%ebp
    1268:	57                   	push   %edi
    1269:	56                   	push   %esi
    126a:	53                   	push   %ebx
    126b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    126e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1278:	89 c2                	mov    %eax,%edx
    127a:	8b 00                	mov    (%eax),%eax
    127c:	39 ca                	cmp    %ecx,%edx
    127e:	73 30                	jae    12b0 <free+0x50>
    1280:	39 c1                	cmp    %eax,%ecx
    1282:	72 04                	jb     1288 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1284:	39 c2                	cmp    %eax,%edx
    1286:	72 f0                	jb     1278 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1288:	8b 73 fc             	mov    -0x4(%ebx),%esi
    128b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    128e:	39 f8                	cmp    %edi,%eax
    1290:	74 30                	je     12c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    1292:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1295:	8b 42 04             	mov    0x4(%edx),%eax
    1298:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    129b:	39 f1                	cmp    %esi,%ecx
    129d:	74 3a                	je     12d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    129f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    12a1:	5b                   	pop    %ebx
  freep = p;
    12a2:	89 15 60 1f 00 00    	mov    %edx,0x1f60
}
    12a8:	5e                   	pop    %esi
    12a9:	5f                   	pop    %edi
    12aa:	5d                   	pop    %ebp
    12ab:	c3                   	ret    
    12ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    12b0:	39 c2                	cmp    %eax,%edx
    12b2:	72 c4                	jb     1278 <free+0x18>
    12b4:	39 c1                	cmp    %eax,%ecx
    12b6:	73 c0                	jae    1278 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
    12b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    12bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    12be:	39 f8                	cmp    %edi,%eax
    12c0:	75 d0                	jne    1292 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
    12c2:	03 70 04             	add    0x4(%eax),%esi
    12c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    12c8:	8b 02                	mov    (%edx),%eax
    12ca:	8b 00                	mov    (%eax),%eax
    12cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    12cf:	8b 42 04             	mov    0x4(%edx),%eax
    12d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    12d5:	39 f1                	cmp    %esi,%ecx
    12d7:	75 c6                	jne    129f <free+0x3f>
    p->s.size += bp->s.size;
    12d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    12dc:	89 15 60 1f 00 00    	mov    %edx,0x1f60
    p->s.size += bp->s.size;
    12e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    12e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    12e8:	89 0a                	mov    %ecx,(%edx)
}
    12ea:	5b                   	pop    %ebx
    12eb:	5e                   	pop    %esi
    12ec:	5f                   	pop    %edi
    12ed:	5d                   	pop    %ebp
    12ee:	c3                   	ret    
    12ef:	90                   	nop

000012f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    12f0:	55                   	push   %ebp
    12f1:	89 e5                	mov    %esp,%ebp
    12f3:	57                   	push   %edi
    12f4:	56                   	push   %esi
    12f5:	53                   	push   %ebx
    12f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    12f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    12fc:	8b 3d 60 1f 00 00    	mov    0x1f60,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1302:	8d 70 07             	lea    0x7(%eax),%esi
    1305:	c1 ee 03             	shr    $0x3,%esi
    1308:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    130b:	85 ff                	test   %edi,%edi
    130d:	0f 84 9d 00 00 00    	je     13b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1313:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    1315:	8b 4a 04             	mov    0x4(%edx),%ecx
    1318:	39 f1                	cmp    %esi,%ecx
    131a:	73 6a                	jae    1386 <malloc+0x96>
    131c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1321:	39 de                	cmp    %ebx,%esi
    1323:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    1326:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    132d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1330:	eb 17                	jmp    1349 <malloc+0x59>
    1332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1338:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    133a:	8b 48 04             	mov    0x4(%eax),%ecx
    133d:	39 f1                	cmp    %esi,%ecx
    133f:	73 4f                	jae    1390 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1341:	8b 3d 60 1f 00 00    	mov    0x1f60,%edi
    1347:	89 c2                	mov    %eax,%edx
    1349:	39 d7                	cmp    %edx,%edi
    134b:	75 eb                	jne    1338 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    134d:	83 ec 0c             	sub    $0xc,%esp
    1350:	ff 75 e4             	push   -0x1c(%ebp)
    1353:	e8 83 fc ff ff       	call   fdb <sbrk>
  if(p == (char*)-1)
    1358:	83 c4 10             	add    $0x10,%esp
    135b:	83 f8 ff             	cmp    $0xffffffff,%eax
    135e:	74 1c                	je     137c <malloc+0x8c>
  hp->s.size = nu;
    1360:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1363:	83 ec 0c             	sub    $0xc,%esp
    1366:	83 c0 08             	add    $0x8,%eax
    1369:	50                   	push   %eax
    136a:	e8 f1 fe ff ff       	call   1260 <free>
  return freep;
    136f:	8b 15 60 1f 00 00    	mov    0x1f60,%edx
      if((p = morecore(nunits)) == 0)
    1375:	83 c4 10             	add    $0x10,%esp
    1378:	85 d2                	test   %edx,%edx
    137a:	75 bc                	jne    1338 <malloc+0x48>
        return 0;
  }
}
    137c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    137f:	31 c0                	xor    %eax,%eax
}
    1381:	5b                   	pop    %ebx
    1382:	5e                   	pop    %esi
    1383:	5f                   	pop    %edi
    1384:	5d                   	pop    %ebp
    1385:	c3                   	ret    
    if(p->s.size >= nunits){
    1386:	89 d0                	mov    %edx,%eax
    1388:	89 fa                	mov    %edi,%edx
    138a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1390:	39 ce                	cmp    %ecx,%esi
    1392:	74 4c                	je     13e0 <malloc+0xf0>
        p->s.size -= nunits;
    1394:	29 f1                	sub    %esi,%ecx
    1396:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1399:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    139c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    139f:	89 15 60 1f 00 00    	mov    %edx,0x1f60
}
    13a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    13a8:	83 c0 08             	add    $0x8,%eax
}
    13ab:	5b                   	pop    %ebx
    13ac:	5e                   	pop    %esi
    13ad:	5f                   	pop    %edi
    13ae:	5d                   	pop    %ebp
    13af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
    13b0:	c7 05 60 1f 00 00 64 	movl   $0x1f64,0x1f60
    13b7:	1f 00 00 
    base.s.size = 0;
    13ba:	bf 64 1f 00 00       	mov    $0x1f64,%edi
    base.s.ptr = freep = prevp = &base;
    13bf:	c7 05 64 1f 00 00 64 	movl   $0x1f64,0x1f64
    13c6:	1f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    13cb:	c7 05 68 1f 00 00 00 	movl   $0x0,0x1f68
    13d2:	00 00 00 
    if(p->s.size >= nunits){
    13d5:	e9 42 ff ff ff       	jmp    131c <malloc+0x2c>
    13da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    13e0:	8b 08                	mov    (%eax),%ecx
    13e2:	89 0a                	mov    %ecx,(%edx)
    13e4:	eb b9                	jmp    139f <malloc+0xaf>
