
_test_17:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void merge_sort(void *array, void *size);

int main(int argc, char *argv[])
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
  12:	e8 cc 06 00 00       	call   6e3 <getpid>
   4. Merge function
   */


    int size = 11;
    global = (int*)malloc(size * sizeof(int));
  17:	83 ec 0c             	sub    $0xc,%esp
    int size = 11;
  1a:	c7 45 f4 0b 00 00 00 	movl   $0xb,-0xc(%ebp)
    global = (int*)malloc(size * sizeof(int));
  21:	6a 2c                	push   $0x2c
   ppid = getpid();
  23:	a3 a4 0f 00 00       	mov    %eax,0xfa4
    global = (int*)malloc(size * sizeof(int));
  28:	e8 d3 09 00 00       	call   a00 <malloc>
    for(int i = 0; i < size; i++){
  2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30:	83 c4 10             	add    $0x10,%esp
    global = (int*)malloc(size * sizeof(int));
  33:	a3 a0 0f 00 00       	mov    %eax,0xfa0
    for(int i = 0; i < size; i++){
  38:	85 d2                	test   %edx,%edx
  3a:	7e 1b                	jle    57 <main+0x57>
  3c:	31 c9                	xor    %ecx,%ecx
  3e:	eb 05                	jmp    45 <main+0x45>
        global[i] = size - i - 1;
    }

   int thread_pid = thread_create(merge_sort, global, &size);
  40:	a1 a0 0f 00 00       	mov    0xfa0,%eax
        global[i] = size - i - 1;
  45:	29 ca                	sub    %ecx,%edx
  47:	83 ea 01             	sub    $0x1,%edx
  4a:	89 14 88             	mov    %edx,(%eax,%ecx,4)
    for(int i = 0; i < size; i++){
  4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  50:	83 c1 01             	add    $0x1,%ecx
  53:	39 ca                	cmp    %ecx,%edx
  55:	7f e9                	jg     40 <main+0x40>
   int thread_pid = thread_create(merge_sort, global, &size);
  57:	83 ec 04             	sub    $0x4,%esp
  5a:	8d 45 f4             	lea    -0xc(%ebp),%eax
  5d:	50                   	push   %eax
  5e:	ff 35 a0 0f 00 00    	push   0xfa0
  64:	68 50 02 00 00       	push   $0x250
  69:	e8 72 02 00 00       	call   2e0 <thread_create>
   assert(thread_pid > 0);
  6e:	83 c4 10             	add    $0x10,%esp
   int thread_pid = thread_create(merge_sort, global, &size);
  71:	89 c3                	mov    %eax,%ebx
   assert(thread_pid > 0);
  73:	85 c0                	test   %eax,%eax
  75:	0f 8e 84 00 00 00    	jle    ff <main+0xff>

   int join_pid = thread_join();
  7b:	e8 f0 02 00 00       	call   370 <thread_join>
   assert(join_pid == thread_pid);
  80:	39 c3                	cmp    %eax,%ebx
  82:	75 35                	jne    b9 <main+0xb9>
   assert(global[0] == 0);
  84:	a1 a0 0f 00 00       	mov    0xfa0,%eax
  89:	83 38 00             	cmpl   $0x0,(%eax)
  8c:	0f 85 9d 00 00 00    	jne    12f <main+0x12f>
   assert(global[10] == 10); 
  92:	83 78 28 0a          	cmpl   $0xa,0x28(%eax)
  96:	0f 84 80 00 00 00    	je     11c <main+0x11c>
  9c:	6a 35                	push   $0x35
  9e:	68 f8 0a 00 00       	push   $0xaf8
  a3:	68 02 0b 00 00       	push   $0xb02
  a8:	6a 01                	push   $0x1
  aa:	e8 21 07 00 00       	call   7d0 <printf>
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	68 60 0b 00 00       	push   $0xb60
  b7:	eb 1b                	jmp    d4 <main+0xd4>
   assert(join_pid == thread_pid);
  b9:	6a 33                	push   $0x33
  bb:	68 f8 0a 00 00       	push   $0xaf8
  c0:	68 02 0b 00 00       	push   $0xb02
  c5:	6a 01                	push   $0x1
  c7:	e8 04 07 00 00       	call   7d0 <printf>
  cc:	83 c4 0c             	add    $0xc,%esp
  cf:	68 3a 0b 00 00       	push   $0xb3a
  d4:	68 19 0b 00 00       	push   $0xb19
  d9:	6a 01                	push   $0x1
  db:	e8 f0 06 00 00       	call   7d0 <printf>
  e0:	5a                   	pop    %edx
  e1:	59                   	pop    %ecx
  e2:	68 2d 0b 00 00       	push   $0xb2d
  e7:	6a 01                	push   $0x1
  e9:	e8 e2 06 00 00       	call   7d0 <printf>
  ee:	5b                   	pop    %ebx
  ef:	ff 35 a4 0f 00 00    	push   0xfa4
  f5:	e8 99 05 00 00       	call   693 <kill>
  fa:	e8 64 05 00 00       	call   663 <exit>
   assert(thread_pid > 0);
  ff:	6a 30                	push   $0x30
 101:	68 f8 0a 00 00       	push   $0xaf8
 106:	68 02 0b 00 00       	push   $0xb02
 10b:	6a 01                	push   $0x1
 10d:	e8 be 06 00 00       	call   7d0 <printf>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	68 0a 0b 00 00       	push   $0xb0a
 11a:	eb b8                	jmp    d4 <main+0xd4>

   printf(1, "TEST PASSED\n");
 11c:	50                   	push   %eax
 11d:	50                   	push   %eax
 11e:	68 71 0b 00 00       	push   $0xb71
 123:	6a 01                	push   $0x1
 125:	e8 a6 06 00 00       	call   7d0 <printf>
   exit();
 12a:	e8 34 05 00 00       	call   663 <exit>
   assert(global[0] == 0);
 12f:	6a 34                	push   $0x34
 131:	68 f8 0a 00 00       	push   $0xaf8
 136:	68 02 0b 00 00       	push   $0xb02
 13b:	6a 01                	push   $0x1
 13d:	e8 8e 06 00 00       	call   7d0 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 51 0b 00 00       	push   $0xb51
 14a:	eb 88                	jmp    d4 <main+0xd4>
 14c:	66 90                	xchg   %ax,%ax
 14e:	66 90                	xchg   %ax,%ax

00000150 <merge>:
}

void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 150:	55                   	push   %ebp
    int i = 0;
    int j = 0;
    int k = 0;
 151:	31 d2                	xor    %edx,%edx
    int i = 0;
 153:	31 c9                	xor    %ecx,%ecx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 155:	89 e5                	mov    %esp,%ebp
 157:	57                   	push   %edi
 158:	56                   	push   %esi
 159:	53                   	push   %ebx
    int j = 0;
 15a:	31 db                	xor    %ebx,%ebx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	8b 7d 10             	mov    0x10(%ebp),%edi
    while(i < size_left && j < size_right){
 162:	85 ff                	test   %edi,%edi
 164:	7e 41                	jle    1a7 <merge+0x57>
 166:	8b 45 14             	mov    0x14(%ebp),%eax
 169:	85 c0                	test   %eax,%eax
 16b:	7f 18                	jg     185 <merge+0x35>
 16d:	eb 38                	jmp    1a7 <merge+0x57>
 16f:	90                   	nop
        if(array[i] < array_right[j]){
            temp_array[k] = array[i];
 170:	8b 75 18             	mov    0x18(%ebp),%esi
            i++;
 173:	83 c1 01             	add    $0x1,%ecx
            temp_array[k] = array[i];
 176:	89 04 96             	mov    %eax,(%esi,%edx,4)
        }
        else{
            temp_array[k] = array_right[j];
            j++;
        }
        k++;
 179:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 17c:	39 f9                	cmp    %edi,%ecx
 17e:	7d 27                	jge    1a7 <merge+0x57>
 180:	3b 5d 14             	cmp    0x14(%ebp),%ebx
 183:	7d 22                	jge    1a7 <merge+0x57>
        if(array[i] < array_right[j]){
 185:	8b 45 08             	mov    0x8(%ebp),%eax
 188:	8b 75 0c             	mov    0xc(%ebp),%esi
 18b:	8b 04 88             	mov    (%eax,%ecx,4),%eax
 18e:	8b 34 9e             	mov    (%esi,%ebx,4),%esi
 191:	39 f0                	cmp    %esi,%eax
 193:	7c db                	jl     170 <merge+0x20>
            j++;
 195:	89 f0                	mov    %esi,%eax
            temp_array[k] = array[i];
 197:	8b 75 18             	mov    0x18(%ebp),%esi
            j++;
 19a:	83 c3 01             	add    $0x1,%ebx
            temp_array[k] = array[i];
 19d:	89 04 96             	mov    %eax,(%esi,%edx,4)
        k++;
 1a0:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 1a3:	39 f9                	cmp    %edi,%ecx
 1a5:	7c d9                	jl     180 <merge+0x30>
    }
    while(i < size_left){
 1a7:	39 cf                	cmp    %ecx,%edi
 1a9:	7e 3e                	jle    1e9 <merge+0x99>
 1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 1ae:	8b 75 18             	mov    0x18(%ebp),%esi
 1b1:	89 55 e8             	mov    %edx,-0x18(%ebp)
 1b4:	8d 04 88             	lea    (%eax,%ecx,4),%eax
 1b7:	8d 34 96             	lea    (%esi,%edx,4),%esi
 1ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 1c0:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 1c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 1c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1c9:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 1cc:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 1cf:	90                   	nop
        temp_array[k] = array[i];
 1d0:	8b 10                	mov    (%eax),%edx
    while(i < size_left){
 1d2:	83 c0 04             	add    $0x4,%eax
 1d5:	83 c6 04             	add    $0x4,%esi
        temp_array[k] = array[i];
 1d8:	89 56 fc             	mov    %edx,-0x4(%esi)
    while(i < size_left){
 1db:	39 c8                	cmp    %ecx,%eax
 1dd:	75 f1                	jne    1d0 <merge+0x80>
        i++;
        k++;
 1df:	8b 55 e8             	mov    -0x18(%ebp),%edx
 1e2:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 1e5:	01 fa                	add    %edi,%edx
 1e7:	29 ca                	sub    %ecx,%edx
    }
    while(j < size_right){
 1e9:	39 5d 14             	cmp    %ebx,0x14(%ebp)
 1ec:	7e 29                	jle    217 <merge+0xc7>
 1ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f1:	8b 4d 14             	mov    0x14(%ebp),%ecx
 1f4:	8d 04 98             	lea    (%eax,%ebx,4),%eax
 1f7:	8b 5d 18             	mov    0x18(%ebp),%ebx
 1fa:	8d 14 93             	lea    (%ebx,%edx,4),%edx
 1fd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 200:	8d 0c 8b             	lea    (%ebx,%ecx,4),%ecx
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
        temp_array[k] = array_right[j];
 208:	8b 18                	mov    (%eax),%ebx
    while(j < size_right){
 20a:	83 c0 04             	add    $0x4,%eax
 20d:	83 c2 04             	add    $0x4,%edx
        temp_array[k] = array_right[j];
 210:	89 5a fc             	mov    %ebx,-0x4(%edx)
    while(j < size_right){
 213:	39 c1                	cmp    %eax,%ecx
 215:	75 f1                	jne    208 <merge+0xb8>
        j++;
        k++;
    }
    for(int i = 0; i < size_left + size_right; i++){
 217:	03 7d 14             	add    0x14(%ebp),%edi
 21a:	85 ff                	test   %edi,%edi
 21c:	7e 21                	jle    23f <merge+0xef>
 21e:	8b 45 18             	mov    0x18(%ebp),%eax
 221:	8b 55 08             	mov    0x8(%ebp),%edx
 224:	8d 1c b8             	lea    (%eax,%edi,4),%ebx
 227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22e:	66 90                	xchg   %ax,%ax
        array[i] = temp_array[i];
 230:	8b 08                	mov    (%eax),%ecx
    for(int i = 0; i < size_left + size_right; i++){
 232:	83 c0 04             	add    $0x4,%eax
 235:	83 c2 04             	add    $0x4,%edx
        array[i] = temp_array[i];
 238:	89 4a fc             	mov    %ecx,-0x4(%edx)
    for(int i = 0; i < size_left + size_right; i++){
 23b:	39 d8                	cmp    %ebx,%eax
 23d:	75 f1                	jne    230 <merge+0xe0>
    }
   
}
 23f:	83 c4 0c             	add    $0xc,%esp
 242:	5b                   	pop    %ebx
 243:	5e                   	pop    %esi
 244:	5f                   	pop    %edi
 245:	5d                   	pop    %ebp
 246:	c3                   	ret    
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <merge_sort>:

void merge_sort(void *arg1, void *arg2) {
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
 255:	53                   	push   %ebx
 256:	83 ec 1c             	sub    $0x1c,%esp
   int *array = (int*)arg1;
   int size = *(int*)arg2;
 259:	8b 45 0c             	mov    0xc(%ebp),%eax
void merge_sort(void *arg1, void *arg2) {
 25c:	8b 75 08             	mov    0x8(%ebp),%esi
   int size = *(int*)arg2;
 25f:	8b 18                	mov    (%eax),%ebx

   if (size==1){
 261:	83 fb 01             	cmp    $0x1,%ebx
 264:	74 6e                	je     2d4 <merge_sort+0x84>
       exit();
   }

   
   int size_left = size/2;
 266:	89 d8                	mov    %ebx,%eax
 268:	b9 02 00 00 00       	mov    $0x2,%ecx
 26d:	99                   	cltd   
 26e:	f7 f9                	idiv   %ecx
   int size_right = size-size/2;
 270:	89 da                	mov    %ebx,%edx
 

//    int nested_join_pid_1 = thread_join();
//    int nested_join_pid_2 = thread_join();

   int* temp_array = malloc(size*sizeof(int));
 272:	c1 e3 02             	shl    $0x2,%ebx
   int size_right = size-size/2;
 275:	29 c2                	sub    %eax,%edx
   int* array_right = (int*)(array + size_left);
 277:	8d 3c 86             	lea    (%esi,%eax,4),%edi
   int size_left = size/2;
 27a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   thread_create(merge_sort, array, &size_left);
 27d:	50                   	push   %eax
 27e:	8d 45 e0             	lea    -0x20(%ebp),%eax
 281:	50                   	push   %eax
 282:	56                   	push   %esi
 283:	68 50 02 00 00       	push   $0x250
   int size_right = size-size/2;
 288:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   thread_create(merge_sort, array, &size_left);
 28b:	e8 50 00 00 00       	call   2e0 <thread_create>
   thread_create(merge_sort, array_right, &size_right);
 290:	83 c4 0c             	add    $0xc,%esp
 293:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 296:	50                   	push   %eax
 297:	57                   	push   %edi
 298:	68 50 02 00 00       	push   $0x250
 29d:	e8 3e 00 00 00       	call   2e0 <thread_create>
   thread_join();
 2a2:	e8 c9 00 00 00       	call   370 <thread_join>
   thread_join();
 2a7:	e8 c4 00 00 00       	call   370 <thread_join>
   int* temp_array = malloc(size*sizeof(int));
 2ac:	89 1c 24             	mov    %ebx,(%esp)
 2af:	e8 4c 07 00 00       	call   a00 <malloc>

   merge(array,array_right,size_left,size_right,temp_array);
 2b4:	89 04 24             	mov    %eax,(%esp)
   int* temp_array = malloc(size*sizeof(int));
 2b7:	89 c3                	mov    %eax,%ebx
   merge(array,array_right,size_left,size_right,temp_array);
 2b9:	ff 75 e4             	push   -0x1c(%ebp)
 2bc:	ff 75 e0             	push   -0x20(%ebp)
 2bf:	57                   	push   %edi
 2c0:	56                   	push   %esi
 2c1:	e8 8a fe ff ff       	call   150 <merge>

   free(temp_array);
 2c6:	83 c4 14             	add    $0x14,%esp
 2c9:	53                   	push   %ebx
 2ca:	e8 a1 06 00 00       	call   970 <free>

//    assert(nested_thread_pid_l == nested_join_pid_1 || nested_thread_pid_l == nested_join_pid_2);
//    assert(nested_thread_pid_r == nested_join_pid_1 || nested_thread_pid_r == nested_join_pid_2);
   exit();
 2cf:	e8 8f 03 00 00       	call   663 <exit>
       exit();
 2d4:	e8 8a 03 00 00       	call   663 <exit>
 2d9:	66 90                	xchg   %ax,%ax
 2db:	66 90                	xchg   %ax,%ax
 2dd:	66 90                	xchg   %ax,%ax
 2df:	90                   	nop

000002e0 <thread_create>:
void *stack_addrs[64]; 
void *malloc_addrs[64];
int inUse[64]; // 1 if joined 0 if not (ie thread is created)
int 
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	56                   	push   %esi
 2e4:	53                   	push   %ebx
  for(int i = 0; i < 64; i++){
 2e5:	31 db                	xor    %ebx,%ebx
 2e7:	eb 0f                	jmp    2f8 <thread_create+0x18>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	83 c3 01             	add    $0x1,%ebx
 2f3:	83 fb 40             	cmp    $0x40,%ebx
 2f6:	74 60                	je     358 <thread_create+0x78>
    if (inUse[i] == 0){
 2f8:	8b 04 9d c0 0f 00 00 	mov    0xfc0(,%ebx,4),%eax
 2ff:	85 c0                	test   %eax,%eax
 301:	75 ed                	jne    2f0 <thread_create+0x10>
      void *stack = malloc(PGSIZE * 2);
 303:	a1 94 0f 00 00       	mov    0xf94,%eax
 308:	83 ec 0c             	sub    $0xc,%esp
 30b:	01 c0                	add    %eax,%eax
 30d:	50                   	push   %eax
 30e:	e8 ed 06 00 00       	call   a00 <malloc>
      malloc_addrs[i] = stack;
      // if page aligned
      if ((int)stack % PGSIZE == 0){
 313:	8b 35 94 0f 00 00    	mov    0xf94,%esi
 319:	83 c4 10             	add    $0x10,%esp
 31c:	99                   	cltd   
      malloc_addrs[i] = stack;
 31d:	89 04 9d c0 10 00 00 	mov    %eax,0x10c0(,%ebx,4)
      void *stack = malloc(PGSIZE * 2);
 324:	89 c1                	mov    %eax,%ecx
      if ((int)stack % PGSIZE == 0){
 326:	f7 fe                	idiv   %esi
        stack += PGSIZE;
 328:	8d 04 31             	lea    (%ecx,%esi,1),%eax
 32b:	29 d6                	sub    %edx,%esi
 32d:	01 f1                	add    %esi,%ecx
 32f:	85 d2                	test   %edx,%edx
 331:	0f 44 c8             	cmove  %eax,%ecx
      } else{// else not page aligned
        // page align the stack!
        stack+= PGSIZE - ((int)stack % PGSIZE);
      }
      stack_addrs[i] = stack;
      return clone(start_routine,arg1,arg2,stack);
 334:	51                   	push   %ecx
 335:	ff 75 10             	push   0x10(%ebp)
 338:	ff 75 0c             	push   0xc(%ebp)
 33b:	ff 75 08             	push   0x8(%ebp)
      stack_addrs[i] = stack;
 33e:	89 0c 9d c0 11 00 00 	mov    %ecx,0x11c0(,%ebx,4)
      return clone(start_routine,arg1,arg2,stack);
 345:	e8 b9 03 00 00       	call   703 <clone>
 34a:	83 c4 10             	add    $0x10,%esp
    }
  } 
  return -1;
}
 34d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 350:	5b                   	pop    %ebx
 351:	5e                   	pop    %esi
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 358:	8d 65 f8             	lea    -0x8(%ebp),%esp
  return -1;
 35b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
 360:	5b                   	pop    %ebx
 361:	5e                   	pop    %esi
 362:	5d                   	pop    %ebp
 363:	c3                   	ret    
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <thread_join>:

int 
thread_join()
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	56                   	push   %esi
 374:	53                   	push   %ebx
  void* stackAddr;
  int id = join(&stackAddr);
 375:	8d 45 f4             	lea    -0xc(%ebp),%eax
  for(int i = 0; i < 64; i++){
 378:	31 db                	xor    %ebx,%ebx
{
 37a:	83 ec 1c             	sub    $0x1c,%esp
  int id = join(&stackAddr);
 37d:	50                   	push   %eax
 37e:	e8 88 03 00 00       	call   70b <join>
 383:	83 c4 10             	add    $0x10,%esp
 386:	89 c6                	mov    %eax,%esi
  for(int i = 0; i < 64; i++){
 388:	eb 0e                	jmp    398 <thread_join+0x28>
 38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 390:	83 c3 01             	add    $0x1,%ebx
 393:	83 fb 40             	cmp    $0x40,%ebx
 396:	74 27                	je     3bf <thread_join+0x4f>
    if (inUse[i] == 1){ // if joined free the stack 
 398:	83 3c 9d c0 0f 00 00 	cmpl   $0x1,0xfc0(,%ebx,4)
 39f:	01 
 3a0:	75 ee                	jne    390 <thread_join+0x20>
      free(malloc_addrs[i]);
 3a2:	83 ec 0c             	sub    $0xc,%esp
 3a5:	ff 34 9d c0 10 00 00 	push   0x10c0(,%ebx,4)
 3ac:	e8 bf 05 00 00       	call   970 <free>
      inUse[i] = 0;
      break;
 3b1:	83 c4 10             	add    $0x10,%esp
      inUse[i] = 0;
 3b4:	c7 04 9d c0 0f 00 00 	movl   $0x0,0xfc0(,%ebx,4)
 3bb:	00 00 00 00 
    }
  }
  return id;
}
 3bf:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3c2:	89 f0                	mov    %esi,%eax
 3c4:	5b                   	pop    %ebx
 3c5:	5e                   	pop    %esi
 3c6:	5d                   	pop    %ebp
 3c7:	c3                   	ret    
 3c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <lock_init>:

void lock_init(lock_t *lock){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
 3d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3dc:	5d                   	pop    %ebp
 3dd:	c3                   	ret    
 3de:	66 90                	xchg   %ax,%ax

000003e0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 3e0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 3e6:	89 e5                	mov    %esp,%ebp
 3e8:	8b 55 08             	mov    0x8(%ebp),%edx
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop
 3f0:	89 c8                	mov    %ecx,%eax
 3f2:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 3f5:	85 c0                	test   %eax,%eax
 3f7:	75 f7                	jne    3f0 <lock_acquire+0x10>
}
 3f9:	5d                   	pop    %ebp
 3fa:	c3                   	ret    
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <lock_release>:

void lock_release(lock_t *lock){
 400:	55                   	push   %ebp
 401:	31 c0                	xor    %eax,%eax
 403:	89 e5                	mov    %esp,%ebp
 405:	8b 55 08             	mov    0x8(%ebp),%edx
 408:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi

00000410 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 410:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 411:	31 c0                	xor    %eax,%eax
{
 413:	89 e5                	mov    %esp,%ebp
 415:	53                   	push   %ebx
 416:	8b 4d 08             	mov    0x8(%ebp),%ecx
 419:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 420:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 424:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 427:	83 c0 01             	add    $0x1,%eax
 42a:	84 d2                	test   %dl,%dl
 42c:	75 f2                	jne    420 <strcpy+0x10>
    ;
  return os;
}
 42e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 431:	89 c8                	mov    %ecx,%eax
 433:	c9                   	leave  
 434:	c3                   	ret    
 435:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000440 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	53                   	push   %ebx
 444:	8b 55 08             	mov    0x8(%ebp),%edx
 447:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 44a:	0f b6 02             	movzbl (%edx),%eax
 44d:	84 c0                	test   %al,%al
 44f:	75 17                	jne    468 <strcmp+0x28>
 451:	eb 3a                	jmp    48d <strcmp+0x4d>
 453:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 457:	90                   	nop
 458:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 45c:	83 c2 01             	add    $0x1,%edx
 45f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 462:	84 c0                	test   %al,%al
 464:	74 1a                	je     480 <strcmp+0x40>
    p++, q++;
 466:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 468:	0f b6 19             	movzbl (%ecx),%ebx
 46b:	38 c3                	cmp    %al,%bl
 46d:	74 e9                	je     458 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 46f:	29 d8                	sub    %ebx,%eax
}
 471:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 474:	c9                   	leave  
 475:	c3                   	ret    
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 480:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 484:	31 c0                	xor    %eax,%eax
 486:	29 d8                	sub    %ebx,%eax
}
 488:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 48b:	c9                   	leave  
 48c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 48d:	0f b6 19             	movzbl (%ecx),%ebx
 490:	31 c0                	xor    %eax,%eax
 492:	eb db                	jmp    46f <strcmp+0x2f>
 494:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <strlen>:

uint
strlen(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 4a6:	80 3a 00             	cmpb   $0x0,(%edx)
 4a9:	74 15                	je     4c0 <strlen+0x20>
 4ab:	31 c0                	xor    %eax,%eax
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
 4b0:	83 c0 01             	add    $0x1,%eax
 4b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 4b7:	89 c1                	mov    %eax,%ecx
 4b9:	75 f5                	jne    4b0 <strlen+0x10>
    ;
  return n;
}
 4bb:	89 c8                	mov    %ecx,%eax
 4bd:	5d                   	pop    %ebp
 4be:	c3                   	ret    
 4bf:	90                   	nop
  for(n = 0; s[n]; n++)
 4c0:	31 c9                	xor    %ecx,%ecx
}
 4c2:	5d                   	pop    %ebp
 4c3:	89 c8                	mov    %ecx,%eax
 4c5:	c3                   	ret    
 4c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi

000004d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 4d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4da:	8b 45 0c             	mov    0xc(%ebp),%eax
 4dd:	89 d7                	mov    %edx,%edi
 4df:	fc                   	cld    
 4e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4e5:	89 d0                	mov    %edx,%eax
 4e7:	c9                   	leave  
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004f0 <strchr>:

char*
strchr(const char *s, char c)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
 4f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4fa:	0f b6 10             	movzbl (%eax),%edx
 4fd:	84 d2                	test   %dl,%dl
 4ff:	75 12                	jne    513 <strchr+0x23>
 501:	eb 1d                	jmp    520 <strchr+0x30>
 503:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 507:	90                   	nop
 508:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 50c:	83 c0 01             	add    $0x1,%eax
 50f:	84 d2                	test   %dl,%dl
 511:	74 0d                	je     520 <strchr+0x30>
    if(*s == c)
 513:	38 d1                	cmp    %dl,%cl
 515:	75 f1                	jne    508 <strchr+0x18>
      return (char*)s;
  return 0;
}
 517:	5d                   	pop    %ebp
 518:	c3                   	ret    
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 520:	31 c0                	xor    %eax,%eax
}
 522:	5d                   	pop    %ebp
 523:	c3                   	ret    
 524:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <gets>:

char*
gets(char *buf, int max)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 535:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 538:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 539:	31 db                	xor    %ebx,%ebx
{
 53b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 53e:	eb 27                	jmp    567 <gets+0x37>
    cc = read(0, &c, 1);
 540:	83 ec 04             	sub    $0x4,%esp
 543:	6a 01                	push   $0x1
 545:	57                   	push   %edi
 546:	6a 00                	push   $0x0
 548:	e8 2e 01 00 00       	call   67b <read>
    if(cc < 1)
 54d:	83 c4 10             	add    $0x10,%esp
 550:	85 c0                	test   %eax,%eax
 552:	7e 1d                	jle    571 <gets+0x41>
      break;
    buf[i++] = c;
 554:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 558:	8b 55 08             	mov    0x8(%ebp),%edx
 55b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 55f:	3c 0a                	cmp    $0xa,%al
 561:	74 1d                	je     580 <gets+0x50>
 563:	3c 0d                	cmp    $0xd,%al
 565:	74 19                	je     580 <gets+0x50>
  for(i=0; i+1 < max; ){
 567:	89 de                	mov    %ebx,%esi
 569:	83 c3 01             	add    $0x1,%ebx
 56c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 56f:	7c cf                	jl     540 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 571:	8b 45 08             	mov    0x8(%ebp),%eax
 574:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 578:	8d 65 f4             	lea    -0xc(%ebp),%esp
 57b:	5b                   	pop    %ebx
 57c:	5e                   	pop    %esi
 57d:	5f                   	pop    %edi
 57e:	5d                   	pop    %ebp
 57f:	c3                   	ret    
  buf[i] = '\0';
 580:	8b 45 08             	mov    0x8(%ebp),%eax
 583:	89 de                	mov    %ebx,%esi
 585:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 589:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58c:	5b                   	pop    %ebx
 58d:	5e                   	pop    %esi
 58e:	5f                   	pop    %edi
 58f:	5d                   	pop    %ebp
 590:	c3                   	ret    
 591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 598:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop

000005a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	56                   	push   %esi
 5a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5a5:	83 ec 08             	sub    $0x8,%esp
 5a8:	6a 00                	push   $0x0
 5aa:	ff 75 08             	push   0x8(%ebp)
 5ad:	e8 f1 00 00 00       	call   6a3 <open>
  if(fd < 0)
 5b2:	83 c4 10             	add    $0x10,%esp
 5b5:	85 c0                	test   %eax,%eax
 5b7:	78 27                	js     5e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 5b9:	83 ec 08             	sub    $0x8,%esp
 5bc:	ff 75 0c             	push   0xc(%ebp)
 5bf:	89 c3                	mov    %eax,%ebx
 5c1:	50                   	push   %eax
 5c2:	e8 f4 00 00 00       	call   6bb <fstat>
  close(fd);
 5c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 5ca:	89 c6                	mov    %eax,%esi
  close(fd);
 5cc:	e8 ba 00 00 00       	call   68b <close>
  return r;
 5d1:	83 c4 10             	add    $0x10,%esp
}
 5d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5d7:	89 f0                	mov    %esi,%eax
 5d9:	5b                   	pop    %ebx
 5da:	5e                   	pop    %esi
 5db:	5d                   	pop    %ebp
 5dc:	c3                   	ret    
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5e5:	eb ed                	jmp    5d4 <stat+0x34>
 5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <atoi>:

int
atoi(const char *s)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	53                   	push   %ebx
 5f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5f7:	0f be 02             	movsbl (%edx),%eax
 5fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 600:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 605:	77 1e                	ja     625 <atoi+0x35>
 607:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 610:	83 c2 01             	add    $0x1,%edx
 613:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 616:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 61a:	0f be 02             	movsbl (%edx),%eax
 61d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 620:	80 fb 09             	cmp    $0x9,%bl
 623:	76 eb                	jbe    610 <atoi+0x20>
  return n;
}
 625:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 628:	89 c8                	mov    %ecx,%eax
 62a:	c9                   	leave  
 62b:	c3                   	ret    
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	8b 45 10             	mov    0x10(%ebp),%eax
 637:	8b 55 08             	mov    0x8(%ebp),%edx
 63a:	56                   	push   %esi
 63b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 63e:	85 c0                	test   %eax,%eax
 640:	7e 13                	jle    655 <memmove+0x25>
 642:	01 d0                	add    %edx,%eax
  dst = vdst;
 644:	89 d7                	mov    %edx,%edi
 646:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 650:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 651:	39 f8                	cmp    %edi,%eax
 653:	75 fb                	jne    650 <memmove+0x20>
  return vdst;
}
 655:	5e                   	pop    %esi
 656:	89 d0                	mov    %edx,%eax
 658:	5f                   	pop    %edi
 659:	5d                   	pop    %ebp
 65a:	c3                   	ret    

0000065b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 65b:	b8 01 00 00 00       	mov    $0x1,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <exit>:
SYSCALL(exit)
 663:	b8 02 00 00 00       	mov    $0x2,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <wait>:
SYSCALL(wait)
 66b:	b8 03 00 00 00       	mov    $0x3,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <pipe>:
SYSCALL(pipe)
 673:	b8 04 00 00 00       	mov    $0x4,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <read>:
SYSCALL(read)
 67b:	b8 05 00 00 00       	mov    $0x5,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <write>:
SYSCALL(write)
 683:	b8 10 00 00 00       	mov    $0x10,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <close>:
SYSCALL(close)
 68b:	b8 15 00 00 00       	mov    $0x15,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <kill>:
SYSCALL(kill)
 693:	b8 06 00 00 00       	mov    $0x6,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <exec>:
SYSCALL(exec)
 69b:	b8 07 00 00 00       	mov    $0x7,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <open>:
SYSCALL(open)
 6a3:	b8 0f 00 00 00       	mov    $0xf,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <mknod>:
SYSCALL(mknod)
 6ab:	b8 11 00 00 00       	mov    $0x11,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <unlink>:
SYSCALL(unlink)
 6b3:	b8 12 00 00 00       	mov    $0x12,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <fstat>:
SYSCALL(fstat)
 6bb:	b8 08 00 00 00       	mov    $0x8,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <link>:
SYSCALL(link)
 6c3:	b8 13 00 00 00       	mov    $0x13,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <mkdir>:
SYSCALL(mkdir)
 6cb:	b8 14 00 00 00       	mov    $0x14,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <chdir>:
SYSCALL(chdir)
 6d3:	b8 09 00 00 00       	mov    $0x9,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <dup>:
SYSCALL(dup)
 6db:	b8 0a 00 00 00       	mov    $0xa,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <getpid>:
SYSCALL(getpid)
 6e3:	b8 0b 00 00 00       	mov    $0xb,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <sbrk>:
SYSCALL(sbrk)
 6eb:	b8 0c 00 00 00       	mov    $0xc,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <sleep>:
SYSCALL(sleep)
 6f3:	b8 0d 00 00 00       	mov    $0xd,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <uptime>:
SYSCALL(uptime)
 6fb:	b8 0e 00 00 00       	mov    $0xe,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <clone>:
SYSCALL(clone)
 703:	b8 16 00 00 00       	mov    $0x16,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <join>:
SYSCALL(join)
 70b:	b8 17 00 00 00       	mov    $0x17,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    
 713:	66 90                	xchg   %ax,%ax
 715:	66 90                	xchg   %ax,%ax
 717:	66 90                	xchg   %ax,%ax
 719:	66 90                	xchg   %ax,%ax
 71b:	66 90                	xchg   %ax,%ax
 71d:	66 90                	xchg   %ax,%ax
 71f:	90                   	nop

00000720 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 3c             	sub    $0x3c,%esp
 729:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 72c:	89 d1                	mov    %edx,%ecx
{
 72e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 731:	85 d2                	test   %edx,%edx
 733:	0f 89 7f 00 00 00    	jns    7b8 <printint+0x98>
 739:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 73d:	74 79                	je     7b8 <printint+0x98>
    neg = 1;
 73f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 746:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 748:	31 db                	xor    %ebx,%ebx
 74a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 750:	89 c8                	mov    %ecx,%eax
 752:	31 d2                	xor    %edx,%edx
 754:	89 cf                	mov    %ecx,%edi
 756:	f7 75 c4             	divl   -0x3c(%ebp)
 759:	0f b6 92 e0 0b 00 00 	movzbl 0xbe0(%edx),%edx
 760:	89 45 c0             	mov    %eax,-0x40(%ebp)
 763:	89 d8                	mov    %ebx,%eax
 765:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 768:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 76b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 76e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 771:	76 dd                	jbe    750 <printint+0x30>
  if(neg)
 773:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 776:	85 c9                	test   %ecx,%ecx
 778:	74 0c                	je     786 <printint+0x66>
    buf[i++] = '-';
 77a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 77f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 781:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 786:	8b 7d b8             	mov    -0x48(%ebp),%edi
 789:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 78d:	eb 07                	jmp    796 <printint+0x76>
 78f:	90                   	nop
    putc(fd, buf[i]);
 790:	0f b6 13             	movzbl (%ebx),%edx
 793:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 796:	83 ec 04             	sub    $0x4,%esp
 799:	88 55 d7             	mov    %dl,-0x29(%ebp)
 79c:	6a 01                	push   $0x1
 79e:	56                   	push   %esi
 79f:	57                   	push   %edi
 7a0:	e8 de fe ff ff       	call   683 <write>
  while(--i >= 0)
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	39 de                	cmp    %ebx,%esi
 7aa:	75 e4                	jne    790 <printint+0x70>
}
 7ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7af:	5b                   	pop    %ebx
 7b0:	5e                   	pop    %esi
 7b1:	5f                   	pop    %edi
 7b2:	5d                   	pop    %ebp
 7b3:	c3                   	ret    
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7bf:	eb 87                	jmp    748 <printint+0x28>
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cf:	90                   	nop

000007d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	57                   	push   %edi
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7df:	0f b6 13             	movzbl (%ebx),%edx
 7e2:	84 d2                	test   %dl,%dl
 7e4:	74 6a                	je     850 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7e6:	8d 45 10             	lea    0x10(%ebp),%eax
 7e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7f4:	eb 36                	jmp    82c <printf+0x5c>
 7f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
 800:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 803:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 808:	83 f8 25             	cmp    $0x25,%eax
 80b:	74 15                	je     822 <printf+0x52>
  write(fd, &c, 1);
 80d:	83 ec 04             	sub    $0x4,%esp
 810:	88 55 e7             	mov    %dl,-0x19(%ebp)
 813:	6a 01                	push   $0x1
 815:	57                   	push   %edi
 816:	56                   	push   %esi
 817:	e8 67 fe ff ff       	call   683 <write>
 81c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 81f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 822:	0f b6 13             	movzbl (%ebx),%edx
 825:	83 c3 01             	add    $0x1,%ebx
 828:	84 d2                	test   %dl,%dl
 82a:	74 24                	je     850 <printf+0x80>
    c = fmt[i] & 0xff;
 82c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 82f:	85 c9                	test   %ecx,%ecx
 831:	74 cd                	je     800 <printf+0x30>
      }
    } else if(state == '%'){
 833:	83 f9 25             	cmp    $0x25,%ecx
 836:	75 ea                	jne    822 <printf+0x52>
      if(c == 'd'){
 838:	83 f8 25             	cmp    $0x25,%eax
 83b:	0f 84 07 01 00 00    	je     948 <printf+0x178>
 841:	83 e8 63             	sub    $0x63,%eax
 844:	83 f8 15             	cmp    $0x15,%eax
 847:	77 17                	ja     860 <printf+0x90>
 849:	ff 24 85 88 0b 00 00 	jmp    *0xb88(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 850:	8d 65 f4             	lea    -0xc(%ebp),%esp
 853:	5b                   	pop    %ebx
 854:	5e                   	pop    %esi
 855:	5f                   	pop    %edi
 856:	5d                   	pop    %ebp
 857:	c3                   	ret    
 858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85f:	90                   	nop
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 866:	6a 01                	push   $0x1
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 86e:	e8 10 fe ff ff       	call   683 <write>
        putc(fd, c);
 873:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 877:	83 c4 0c             	add    $0xc,%esp
 87a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 87d:	6a 01                	push   $0x1
 87f:	57                   	push   %edi
 880:	56                   	push   %esi
 881:	e8 fd fd ff ff       	call   683 <write>
        putc(fd, c);
 886:	83 c4 10             	add    $0x10,%esp
      state = 0;
 889:	31 c9                	xor    %ecx,%ecx
 88b:	eb 95                	jmp    822 <printf+0x52>
 88d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	b9 10 00 00 00       	mov    $0x10,%ecx
 898:	6a 00                	push   $0x0
 89a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 89d:	8b 10                	mov    (%eax),%edx
 89f:	89 f0                	mov    %esi,%eax
 8a1:	e8 7a fe ff ff       	call   720 <printint>
        ap++;
 8a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ad:	31 c9                	xor    %ecx,%ecx
 8af:	e9 6e ff ff ff       	jmp    822 <printf+0x52>
 8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8bb:	8b 10                	mov    (%eax),%edx
        ap++;
 8bd:	83 c0 04             	add    $0x4,%eax
 8c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8c3:	85 d2                	test   %edx,%edx
 8c5:	0f 84 8d 00 00 00    	je     958 <printf+0x188>
        while(*s != 0){
 8cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8d0:	84 c0                	test   %al,%al
 8d2:	0f 84 4a ff ff ff    	je     822 <printf+0x52>
 8d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8db:	89 d3                	mov    %edx,%ebx
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8e3:	83 c3 01             	add    $0x1,%ebx
 8e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8e9:	6a 01                	push   $0x1
 8eb:	57                   	push   %edi
 8ec:	56                   	push   %esi
 8ed:	e8 91 fd ff ff       	call   683 <write>
        while(*s != 0){
 8f2:	0f b6 03             	movzbl (%ebx),%eax
 8f5:	83 c4 10             	add    $0x10,%esp
 8f8:	84 c0                	test   %al,%al
 8fa:	75 e4                	jne    8e0 <printf+0x110>
      state = 0;
 8fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ff:	31 c9                	xor    %ecx,%ecx
 901:	e9 1c ff ff ff       	jmp    822 <printf+0x52>
 906:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 0a 00 00 00       	mov    $0xa,%ecx
 918:	6a 01                	push   $0x1
 91a:	e9 7b ff ff ff       	jmp    89a <printf+0xca>
 91f:	90                   	nop
        putc(fd, *ap);
 920:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 923:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 926:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 928:	6a 01                	push   $0x1
 92a:	57                   	push   %edi
 92b:	56                   	push   %esi
        putc(fd, *ap);
 92c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 92f:	e8 4f fd ff ff       	call   683 <write>
        ap++;
 934:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 938:	83 c4 10             	add    $0x10,%esp
      state = 0;
 93b:	31 c9                	xor    %ecx,%ecx
 93d:	e9 e0 fe ff ff       	jmp    822 <printf+0x52>
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 948:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 94b:	83 ec 04             	sub    $0x4,%esp
 94e:	e9 2a ff ff ff       	jmp    87d <printf+0xad>
 953:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 957:	90                   	nop
          s = "(null)";
 958:	ba 7e 0b 00 00       	mov    $0xb7e,%edx
        while(*s != 0){
 95d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 960:	b8 28 00 00 00       	mov    $0x28,%eax
 965:	89 d3                	mov    %edx,%ebx
 967:	e9 74 ff ff ff       	jmp    8e0 <printf+0x110>
 96c:	66 90                	xchg   %ax,%ax
 96e:	66 90                	xchg   %ax,%ax

00000970 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 970:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	a1 c0 12 00 00       	mov    0x12c0,%eax
{
 976:	89 e5                	mov    %esp,%ebp
 978:	57                   	push   %edi
 979:	56                   	push   %esi
 97a:	53                   	push   %ebx
 97b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 97e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 988:	89 c2                	mov    %eax,%edx
 98a:	8b 00                	mov    (%eax),%eax
 98c:	39 ca                	cmp    %ecx,%edx
 98e:	73 30                	jae    9c0 <free+0x50>
 990:	39 c1                	cmp    %eax,%ecx
 992:	72 04                	jb     998 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 994:	39 c2                	cmp    %eax,%edx
 996:	72 f0                	jb     988 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 998:	8b 73 fc             	mov    -0x4(%ebx),%esi
 99b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 99e:	39 f8                	cmp    %edi,%eax
 9a0:	74 30                	je     9d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9a5:	8b 42 04             	mov    0x4(%edx),%eax
 9a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9ab:	39 f1                	cmp    %esi,%ecx
 9ad:	74 3a                	je     9e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9b1:	5b                   	pop    %ebx
  freep = p;
 9b2:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 9b8:	5e                   	pop    %esi
 9b9:	5f                   	pop    %edi
 9ba:	5d                   	pop    %ebp
 9bb:	c3                   	ret    
 9bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9c0:	39 c2                	cmp    %eax,%edx
 9c2:	72 c4                	jb     988 <free+0x18>
 9c4:	39 c1                	cmp    %eax,%ecx
 9c6:	73 c0                	jae    988 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ce:	39 f8                	cmp    %edi,%eax
 9d0:	75 d0                	jne    9a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9d2:	03 70 04             	add    0x4(%eax),%esi
 9d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9d8:	8b 02                	mov    (%edx),%eax
 9da:	8b 00                	mov    (%eax),%eax
 9dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9df:	8b 42 04             	mov    0x4(%edx),%eax
 9e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9e5:	39 f1                	cmp    %esi,%ecx
 9e7:	75 c6                	jne    9af <free+0x3f>
    p->s.size += bp->s.size;
 9e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ec:	89 15 c0 12 00 00    	mov    %edx,0x12c0
    p->s.size += bp->s.size;
 9f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9f8:	89 0a                	mov    %ecx,(%edx)
}
 9fa:	5b                   	pop    %ebx
 9fb:	5e                   	pop    %esi
 9fc:	5f                   	pop    %edi
 9fd:	5d                   	pop    %ebp
 9fe:	c3                   	ret    
 9ff:	90                   	nop

00000a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a00:	55                   	push   %ebp
 a01:	89 e5                	mov    %esp,%ebp
 a03:	57                   	push   %edi
 a04:	56                   	push   %esi
 a05:	53                   	push   %ebx
 a06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a0c:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a12:	8d 70 07             	lea    0x7(%eax),%esi
 a15:	c1 ee 03             	shr    $0x3,%esi
 a18:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a1b:	85 ff                	test   %edi,%edi
 a1d:	0f 84 9d 00 00 00    	je     ac0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a23:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a25:	8b 4a 04             	mov    0x4(%edx),%ecx
 a28:	39 f1                	cmp    %esi,%ecx
 a2a:	73 6a                	jae    a96 <malloc+0x96>
 a2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a31:	39 de                	cmp    %ebx,%esi
 a33:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a36:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a40:	eb 17                	jmp    a59 <malloc+0x59>
 a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a4a:	8b 48 04             	mov    0x4(%eax),%ecx
 a4d:	39 f1                	cmp    %esi,%ecx
 a4f:	73 4f                	jae    aa0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a51:	8b 3d c0 12 00 00    	mov    0x12c0,%edi
 a57:	89 c2                	mov    %eax,%edx
 a59:	39 d7                	cmp    %edx,%edi
 a5b:	75 eb                	jne    a48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a5d:	83 ec 0c             	sub    $0xc,%esp
 a60:	ff 75 e4             	push   -0x1c(%ebp)
 a63:	e8 83 fc ff ff       	call   6eb <sbrk>
  if(p == (char*)-1)
 a68:	83 c4 10             	add    $0x10,%esp
 a6b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a6e:	74 1c                	je     a8c <malloc+0x8c>
  hp->s.size = nu;
 a70:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a73:	83 ec 0c             	sub    $0xc,%esp
 a76:	83 c0 08             	add    $0x8,%eax
 a79:	50                   	push   %eax
 a7a:	e8 f1 fe ff ff       	call   970 <free>
  return freep;
 a7f:	8b 15 c0 12 00 00    	mov    0x12c0,%edx
      if((p = morecore(nunits)) == 0)
 a85:	83 c4 10             	add    $0x10,%esp
 a88:	85 d2                	test   %edx,%edx
 a8a:	75 bc                	jne    a48 <malloc+0x48>
        return 0;
  }
}
 a8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a8f:	31 c0                	xor    %eax,%eax
}
 a91:	5b                   	pop    %ebx
 a92:	5e                   	pop    %esi
 a93:	5f                   	pop    %edi
 a94:	5d                   	pop    %ebp
 a95:	c3                   	ret    
    if(p->s.size >= nunits){
 a96:	89 d0                	mov    %edx,%eax
 a98:	89 fa                	mov    %edi,%edx
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 aa0:	39 ce                	cmp    %ecx,%esi
 aa2:	74 4c                	je     af0 <malloc+0xf0>
        p->s.size -= nunits;
 aa4:	29 f1                	sub    %esi,%ecx
 aa6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 aa9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aaf:	89 15 c0 12 00 00    	mov    %edx,0x12c0
}
 ab5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ab8:	83 c0 08             	add    $0x8,%eax
}
 abb:	5b                   	pop    %ebx
 abc:	5e                   	pop    %esi
 abd:	5f                   	pop    %edi
 abe:	5d                   	pop    %ebp
 abf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ac0:	c7 05 c0 12 00 00 c4 	movl   $0x12c4,0x12c0
 ac7:	12 00 00 
    base.s.size = 0;
 aca:	bf c4 12 00 00       	mov    $0x12c4,%edi
    base.s.ptr = freep = prevp = &base;
 acf:	c7 05 c4 12 00 00 c4 	movl   $0x12c4,0x12c4
 ad6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ad9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 adb:	c7 05 c8 12 00 00 00 	movl   $0x0,0x12c8
 ae2:	00 00 00 
    if(p->s.size >= nunits){
 ae5:	e9 42 ff ff ff       	jmp    a2c <malloc+0x2c>
 aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 af0:	8b 08                	mov    (%eax),%ecx
 af2:	89 0a                	mov    %ecx,(%edx)
 af4:	eb b9                	jmp    aaf <malloc+0xaf>
