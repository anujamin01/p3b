#include "types.h"
#include "stat.h"
#include "fcntl.h"
#include "user.h"
#include "x86.h"

int PGSIZE = 4096; // global page size constant 4kb
//TODO - ADD CHASTITY BELT.

// array of stack addresses and where they've been malloced
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
  void *stack = malloc(PGSIZE * 2);
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
    stack += PGSIZE - ((uint)stack % PGSIZE);
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
      inUse[i] = 1;
      malloc_addrs[i] = original;
      stack_addrs[i] = stack;
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
  return threadId;

  /*
  for(int i = 0; i < 64; i++){
    if (inUse[i] == 0){
      void *stack = malloc(PGSIZE * 2);
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
        stack += PGSIZE;
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}

int 
thread_join()
{
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
      free(malloc_addrs[i]);
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
    }
  }
  return threadId; 
}

void lock_init(lock_t *lock){
  lock->flag = 0;
}

void lock_acquire(lock_t *lock){
  while(xchg(&lock->flag, 1) != 0);
}

void lock_release(lock_t *lock){
  xchg(&lock->flag, 0);
}
char*
strcpy(char *s, const char *t)
{
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    ;
  return os;
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    p++, q++;
  return (uchar)*p - (uchar)*q;
}

uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    ;
  return n;
}

void*
memset(void *dst, int c, uint n)
{
  stosb(dst, c, n);
  return dst;
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    if(*s == c)
      return (char*)s;
  return 0;
}

char*
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
  return buf;
}

int
stat(const char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
  close(fd);
  return r;
}

int
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    n = n*10 + *s++ - '0';
  return n;
}

void*
memmove(void *vdst, const void *vsrc, int n)
{
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    *dst++ = *src++;
  return vdst;
}
