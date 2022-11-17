
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
  12:	e8 ec 06 00 00       	call   703 <getpid>
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
  23:	a3 c4 0f 00 00       	mov    %eax,0xfc4
    global = (int*)malloc(size * sizeof(int));
  28:	e8 f3 09 00 00       	call   a20 <malloc>
    for(int i = 0; i < size; i++){
  2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30:	83 c4 10             	add    $0x10,%esp
    global = (int*)malloc(size * sizeof(int));
  33:	a3 c0 0f 00 00       	mov    %eax,0xfc0
    for(int i = 0; i < size; i++){
  38:	85 d2                	test   %edx,%edx
  3a:	7e 1b                	jle    57 <main+0x57>
  3c:	31 c9                	xor    %ecx,%ecx
  3e:	eb 05                	jmp    45 <main+0x45>
        global[i] = size - i - 1;
    }

   int thread_pid = thread_create(merge_sort, global, &size);
  40:	a1 c0 0f 00 00       	mov    0xfc0,%eax
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
  5e:	ff 35 c0 0f 00 00    	push   0xfc0
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
  84:	a1 c0 0f 00 00       	mov    0xfc0,%eax
  89:	83 38 00             	cmpl   $0x0,(%eax)
  8c:	0f 85 9d 00 00 00    	jne    12f <main+0x12f>
   assert(global[10] == 10); 
  92:	83 78 28 0a          	cmpl   $0xa,0x28(%eax)
  96:	0f 84 80 00 00 00    	je     11c <main+0x11c>
  9c:	6a 35                	push   $0x35
  9e:	68 18 0b 00 00       	push   $0xb18
  a3:	68 22 0b 00 00       	push   $0xb22
  a8:	6a 01                	push   $0x1
  aa:	e8 41 07 00 00       	call   7f0 <printf>
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	68 80 0b 00 00       	push   $0xb80
  b7:	eb 1b                	jmp    d4 <main+0xd4>
   assert(join_pid == thread_pid);
  b9:	6a 33                	push   $0x33
  bb:	68 18 0b 00 00       	push   $0xb18
  c0:	68 22 0b 00 00       	push   $0xb22
  c5:	6a 01                	push   $0x1
  c7:	e8 24 07 00 00       	call   7f0 <printf>
  cc:	83 c4 0c             	add    $0xc,%esp
  cf:	68 5a 0b 00 00       	push   $0xb5a
  d4:	68 39 0b 00 00       	push   $0xb39
  d9:	6a 01                	push   $0x1
  db:	e8 10 07 00 00       	call   7f0 <printf>
  e0:	5a                   	pop    %edx
  e1:	59                   	pop    %ecx
  e2:	68 4d 0b 00 00       	push   $0xb4d
  e7:	6a 01                	push   $0x1
  e9:	e8 02 07 00 00       	call   7f0 <printf>
  ee:	5b                   	pop    %ebx
  ef:	ff 35 c4 0f 00 00    	push   0xfc4
  f5:	e8 b9 05 00 00       	call   6b3 <kill>
  fa:	e8 84 05 00 00       	call   683 <exit>
   assert(thread_pid > 0);
  ff:	6a 30                	push   $0x30
 101:	68 18 0b 00 00       	push   $0xb18
 106:	68 22 0b 00 00       	push   $0xb22
 10b:	6a 01                	push   $0x1
 10d:	e8 de 06 00 00       	call   7f0 <printf>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	68 2a 0b 00 00       	push   $0xb2a
 11a:	eb b8                	jmp    d4 <main+0xd4>

   printf(1, "TEST PASSED\n");
 11c:	50                   	push   %eax
 11d:	50                   	push   %eax
 11e:	68 91 0b 00 00       	push   $0xb91
 123:	6a 01                	push   $0x1
 125:	e8 c6 06 00 00       	call   7f0 <printf>
   exit();
 12a:	e8 54 05 00 00       	call   683 <exit>
   assert(global[0] == 0);
 12f:	6a 34                	push   $0x34
 131:	68 18 0b 00 00       	push   $0xb18
 136:	68 22 0b 00 00       	push   $0xb22
 13b:	6a 01                	push   $0x1
 13d:	e8 ae 06 00 00       	call   7f0 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 71 0b 00 00       	push   $0xb71
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
 2af:	e8 6c 07 00 00       	call   a20 <malloc>

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
 2ca:	e8 c1 06 00 00       	call   990 <free>

//    assert(nested_thread_pid_l == nested_join_pid_1 || nested_thread_pid_l == nested_join_pid_2);
//    assert(nested_thread_pid_r == nested_join_pid_1 || nested_thread_pid_r == nested_join_pid_2);
   exit();
 2cf:	e8 af 03 00 00       	call   683 <exit>
       exit();
 2d4:	e8 aa 03 00 00       	call   683 <exit>
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
 2e3:	53                   	push   %ebx
 2e4:	83 ec 10             	sub    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 2e7:	a1 a0 0f 00 00       	mov    0xfa0,%eax
 2ec:	01 c0                	add    %eax,%eax
 2ee:	50                   	push   %eax
 2ef:	e8 2c 07 00 00       	call   a20 <malloc>
  void* original = stack;
  //Check page alignmenet
  if((uint)stack % PGSIZE != 0){
 2f4:	8b 0d a0 0f 00 00    	mov    0xfa0,%ecx
 2fa:	31 d2                	xor    %edx,%edx
 2fc:	83 c4 10             	add    $0x10,%esp
  void *stack = malloc(PGSIZE * 2);
 2ff:	89 c3                	mov    %eax,%ebx
  if((uint)stack % PGSIZE != 0){
 301:	f7 f1                	div    %ecx
    stack += PGSIZE - ((uint)stack % PGSIZE);
 303:	89 c8                	mov    %ecx,%eax
 305:	01 d9                	add    %ebx,%ecx
 307:	29 d0                	sub    %edx,%eax
 309:	01 d8                	add    %ebx,%eax
 30b:	85 d2                	test   %edx,%edx
 30d:	0f 45 c8             	cmovne %eax,%ecx
  }
  else{
    stack += PGSIZE;
  }
  //Loop through our pseudo process-table.
  for(int i = 0; i < 64; i++){
 310:	31 d2                	xor    %edx,%edx
 312:	eb 0c                	jmp    320 <thread_create+0x40>
 314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 318:	83 c2 01             	add    $0x1,%edx
 31b:	83 fa 40             	cmp    $0x40,%edx
 31e:	74 2f                	je     34f <thread_create+0x6f>
    if(!stack_addrs[i] && !inUse[i]){ //TODO try and change this.
 320:	8b 04 95 e0 11 00 00 	mov    0x11e0(,%edx,4),%eax
 327:	85 c0                	test   %eax,%eax
 329:	75 ed                	jne    318 <thread_create+0x38>
 32b:	8b 04 95 e0 0f 00 00 	mov    0xfe0(,%edx,4),%eax
 332:	85 c0                	test   %eax,%eax
 334:	75 e2                	jne    318 <thread_create+0x38>
      inUse[i] = 1;
 336:	c7 04 95 e0 0f 00 00 	movl   $0x1,0xfe0(,%edx,4)
 33d:	01 00 00 00 
      malloc_addrs[i] = original;
 341:	89 1c 95 e0 10 00 00 	mov    %ebx,0x10e0(,%edx,4)
      stack_addrs[i] = stack;
 348:	89 0c 95 e0 11 00 00 	mov    %ecx,0x11e0(,%edx,4)
      break;
    }
  }
  int threadId = clone(start_routine, arg1, arg2, stack);
 34f:	51                   	push   %ecx
 350:	ff 75 10             	push   0x10(%ebp)
 353:	ff 75 0c             	push   0xc(%ebp)
 356:	ff 75 08             	push   0x8(%ebp)
 359:	e8 c5 03 00 00       	call   723 <clone>
      return clone(start_routine,arg1,arg2,stack);
      //break;
    }
  } 
  */
}
 35e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 361:	c9                   	leave  
 362:	c3                   	ret    
 363:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000370 <thread_join>:

int 
thread_join()
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
  void* stackAddr;
  int threadId = join(&stackAddr);

  // TODO: implement join ie free the stack
  for(int i = 0; i < 64; i++){
 374:	31 db                	xor    %ebx,%ebx
  int threadId = join(&stackAddr);
 376:	8d 45 f4             	lea    -0xc(%ebp),%eax
{
 379:	83 ec 30             	sub    $0x30,%esp
  int threadId = join(&stackAddr);
 37c:	50                   	push   %eax
 37d:	e8 a9 03 00 00       	call   72b <join>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 382:	8b 55 f4             	mov    -0xc(%ebp),%edx
 385:	83 c4 10             	add    $0x10,%esp
 388:	eb 0e                	jmp    398 <thread_join+0x28>
 38a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(int i = 0; i < 64; i++){
 390:	83 c3 01             	add    $0x1,%ebx
 393:	83 fb 40             	cmp    $0x40,%ebx
 396:	74 4c                	je     3e4 <thread_join+0x74>
    if (inUse[i] == 1 && stack_addrs[i] == stackAddr){ // if joined freer the stack 
 398:	83 3c 9d e0 0f 00 00 	cmpl   $0x1,0xfe0(,%ebx,4)
 39f:	01 
 3a0:	75 ee                	jne    390 <thread_join+0x20>
 3a2:	39 14 9d e0 11 00 00 	cmp    %edx,0x11e0(,%ebx,4)
 3a9:	75 e5                	jne    390 <thread_join+0x20>
      free(malloc_addrs[i]);
 3ab:	83 ec 0c             	sub    $0xc,%esp
 3ae:	ff 34 9d e0 10 00 00 	push   0x10e0(,%ebx,4)
 3b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 3b8:	e8 d3 05 00 00       	call   990 <free>
      malloc_addrs[i] = 0;
      stack_addrs[i] = 0;
      inUse[i] = 0;
      break;
 3bd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 3c0:	83 c4 10             	add    $0x10,%esp
      malloc_addrs[i] = 0;
 3c3:	c7 04 9d e0 10 00 00 	movl   $0x0,0x10e0(,%ebx,4)
 3ca:	00 00 00 00 
      stack_addrs[i] = 0;
 3ce:	c7 04 9d e0 11 00 00 	movl   $0x0,0x11e0(,%ebx,4)
 3d5:	00 00 00 00 
      inUse[i] = 0;
 3d9:	c7 04 9d e0 0f 00 00 	movl   $0x0,0xfe0(,%ebx,4)
 3e0:	00 00 00 00 
    }
  }
  return threadId; 
}
 3e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e7:	c9                   	leave  
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <lock_init>:

void lock_init(lock_t *lock){
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
  lock->flag = 0;
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3fc:	5d                   	pop    %ebp
 3fd:	c3                   	ret    
 3fe:	66 90                	xchg   %ax,%ax

00000400 <lock_acquire>:

void lock_acquire(lock_t *lock){
 400:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 401:	b9 01 00 00 00       	mov    $0x1,%ecx
 406:	89 e5                	mov    %esp,%ebp
 408:	8b 55 08             	mov    0x8(%ebp),%edx
 40b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 40f:	90                   	nop
 410:	89 c8                	mov    %ecx,%eax
 412:	f0 87 02             	lock xchg %eax,(%edx)
  while(xchg(&lock->flag, 1) != 0);
 415:	85 c0                	test   %eax,%eax
 417:	75 f7                	jne    410 <lock_acquire+0x10>
}
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <lock_release>:

void lock_release(lock_t *lock){
 420:	55                   	push   %ebp
 421:	31 c0                	xor    %eax,%eax
 423:	89 e5                	mov    %esp,%ebp
 425:	8b 55 08             	mov    0x8(%ebp),%edx
 428:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lock->flag, 0);
}
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <strcpy>:
char*
strcpy(char *s, const char *t)
{
 430:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 431:	31 c0                	xor    %eax,%eax
{
 433:	89 e5                	mov    %esp,%ebp
 435:	53                   	push   %ebx
 436:	8b 4d 08             	mov    0x8(%ebp),%ecx
 439:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 43c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 440:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 444:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 447:	83 c0 01             	add    $0x1,%eax
 44a:	84 d2                	test   %dl,%dl
 44c:	75 f2                	jne    440 <strcpy+0x10>
    ;
  return os;
}
 44e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 451:	89 c8                	mov    %ecx,%eax
 453:	c9                   	leave  
 454:	c3                   	ret    
 455:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	53                   	push   %ebx
 464:	8b 55 08             	mov    0x8(%ebp),%edx
 467:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 46a:	0f b6 02             	movzbl (%edx),%eax
 46d:	84 c0                	test   %al,%al
 46f:	75 17                	jne    488 <strcmp+0x28>
 471:	eb 3a                	jmp    4ad <strcmp+0x4d>
 473:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 477:	90                   	nop
 478:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 47c:	83 c2 01             	add    $0x1,%edx
 47f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 482:	84 c0                	test   %al,%al
 484:	74 1a                	je     4a0 <strcmp+0x40>
    p++, q++;
 486:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 488:	0f b6 19             	movzbl (%ecx),%ebx
 48b:	38 c3                	cmp    %al,%bl
 48d:	74 e9                	je     478 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 48f:	29 d8                	sub    %ebx,%eax
}
 491:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 494:	c9                   	leave  
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 4a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 4a4:	31 c0                	xor    %eax,%eax
 4a6:	29 d8                	sub    %ebx,%eax
}
 4a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4ab:	c9                   	leave  
 4ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 4ad:	0f b6 19             	movzbl (%ecx),%ebx
 4b0:	31 c0                	xor    %eax,%eax
 4b2:	eb db                	jmp    48f <strcmp+0x2f>
 4b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <strlen>:

uint
strlen(const char *s)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 4c6:	80 3a 00             	cmpb   $0x0,(%edx)
 4c9:	74 15                	je     4e0 <strlen+0x20>
 4cb:	31 c0                	xor    %eax,%eax
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
 4d0:	83 c0 01             	add    $0x1,%eax
 4d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 4d7:	89 c1                	mov    %eax,%ecx
 4d9:	75 f5                	jne    4d0 <strlen+0x10>
    ;
  return n;
}
 4db:	89 c8                	mov    %ecx,%eax
 4dd:	5d                   	pop    %ebp
 4de:	c3                   	ret    
 4df:	90                   	nop
  for(n = 0; s[n]; n++)
 4e0:	31 c9                	xor    %ecx,%ecx
}
 4e2:	5d                   	pop    %ebp
 4e3:	89 c8                	mov    %ecx,%eax
 4e5:	c3                   	ret    
 4e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ed:	8d 76 00             	lea    0x0(%esi),%esi

000004f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 4f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4fd:	89 d7                	mov    %edx,%edi
 4ff:	fc                   	cld    
 500:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 502:	8b 7d fc             	mov    -0x4(%ebp),%edi
 505:	89 d0                	mov    %edx,%eax
 507:	c9                   	leave  
 508:	c3                   	ret    
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000510 <strchr>:

char*
strchr(const char *s, char c)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	8b 45 08             	mov    0x8(%ebp),%eax
 516:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 51a:	0f b6 10             	movzbl (%eax),%edx
 51d:	84 d2                	test   %dl,%dl
 51f:	75 12                	jne    533 <strchr+0x23>
 521:	eb 1d                	jmp    540 <strchr+0x30>
 523:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 527:	90                   	nop
 528:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 52c:	83 c0 01             	add    $0x1,%eax
 52f:	84 d2                	test   %dl,%dl
 531:	74 0d                	je     540 <strchr+0x30>
    if(*s == c)
 533:	38 d1                	cmp    %dl,%cl
 535:	75 f1                	jne    528 <strchr+0x18>
      return (char*)s;
  return 0;
}
 537:	5d                   	pop    %ebp
 538:	c3                   	ret    
 539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 540:	31 c0                	xor    %eax,%eax
}
 542:	5d                   	pop    %ebp
 543:	c3                   	ret    
 544:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <gets>:

char*
gets(char *buf, int max)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 555:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 558:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 559:	31 db                	xor    %ebx,%ebx
{
 55b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 55e:	eb 27                	jmp    587 <gets+0x37>
    cc = read(0, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	6a 01                	push   $0x1
 565:	57                   	push   %edi
 566:	6a 00                	push   $0x0
 568:	e8 2e 01 00 00       	call   69b <read>
    if(cc < 1)
 56d:	83 c4 10             	add    $0x10,%esp
 570:	85 c0                	test   %eax,%eax
 572:	7e 1d                	jle    591 <gets+0x41>
      break;
    buf[i++] = c;
 574:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 578:	8b 55 08             	mov    0x8(%ebp),%edx
 57b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 57f:	3c 0a                	cmp    $0xa,%al
 581:	74 1d                	je     5a0 <gets+0x50>
 583:	3c 0d                	cmp    $0xd,%al
 585:	74 19                	je     5a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 587:	89 de                	mov    %ebx,%esi
 589:	83 c3 01             	add    $0x1,%ebx
 58c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 58f:	7c cf                	jl     560 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 591:	8b 45 08             	mov    0x8(%ebp),%eax
 594:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 598:	8d 65 f4             	lea    -0xc(%ebp),%esp
 59b:	5b                   	pop    %ebx
 59c:	5e                   	pop    %esi
 59d:	5f                   	pop    %edi
 59e:	5d                   	pop    %ebp
 59f:	c3                   	ret    
  buf[i] = '\0';
 5a0:	8b 45 08             	mov    0x8(%ebp),%eax
 5a3:	89 de                	mov    %ebx,%esi
 5a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 5a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ac:	5b                   	pop    %ebx
 5ad:	5e                   	pop    %esi
 5ae:	5f                   	pop    %edi
 5af:	5d                   	pop    %ebp
 5b0:	c3                   	ret    
 5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	56                   	push   %esi
 5c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 5c5:	83 ec 08             	sub    $0x8,%esp
 5c8:	6a 00                	push   $0x0
 5ca:	ff 75 08             	push   0x8(%ebp)
 5cd:	e8 f1 00 00 00       	call   6c3 <open>
  if(fd < 0)
 5d2:	83 c4 10             	add    $0x10,%esp
 5d5:	85 c0                	test   %eax,%eax
 5d7:	78 27                	js     600 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 5d9:	83 ec 08             	sub    $0x8,%esp
 5dc:	ff 75 0c             	push   0xc(%ebp)
 5df:	89 c3                	mov    %eax,%ebx
 5e1:	50                   	push   %eax
 5e2:	e8 f4 00 00 00       	call   6db <fstat>
  close(fd);
 5e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 5ea:	89 c6                	mov    %eax,%esi
  close(fd);
 5ec:	e8 ba 00 00 00       	call   6ab <close>
  return r;
 5f1:	83 c4 10             	add    $0x10,%esp
}
 5f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5f7:	89 f0                	mov    %esi,%eax
 5f9:	5b                   	pop    %ebx
 5fa:	5e                   	pop    %esi
 5fb:	5d                   	pop    %ebp
 5fc:	c3                   	ret    
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 600:	be ff ff ff ff       	mov    $0xffffffff,%esi
 605:	eb ed                	jmp    5f4 <stat+0x34>
 607:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60e:	66 90                	xchg   %ax,%ax

00000610 <atoi>:

int
atoi(const char *s)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	53                   	push   %ebx
 614:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 617:	0f be 02             	movsbl (%edx),%eax
 61a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 61d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 620:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 625:	77 1e                	ja     645 <atoi+0x35>
 627:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 630:	83 c2 01             	add    $0x1,%edx
 633:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 636:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 63a:	0f be 02             	movsbl (%edx),%eax
 63d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 640:	80 fb 09             	cmp    $0x9,%bl
 643:	76 eb                	jbe    630 <atoi+0x20>
  return n;
}
 645:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 648:	89 c8                	mov    %ecx,%eax
 64a:	c9                   	leave  
 64b:	c3                   	ret    
 64c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000650 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	8b 45 10             	mov    0x10(%ebp),%eax
 657:	8b 55 08             	mov    0x8(%ebp),%edx
 65a:	56                   	push   %esi
 65b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 65e:	85 c0                	test   %eax,%eax
 660:	7e 13                	jle    675 <memmove+0x25>
 662:	01 d0                	add    %edx,%eax
  dst = vdst;
 664:	89 d7                	mov    %edx,%edi
 666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 670:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 671:	39 f8                	cmp    %edi,%eax
 673:	75 fb                	jne    670 <memmove+0x20>
  return vdst;
}
 675:	5e                   	pop    %esi
 676:	89 d0                	mov    %edx,%eax
 678:	5f                   	pop    %edi
 679:	5d                   	pop    %ebp
 67a:	c3                   	ret    

0000067b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 67b:	b8 01 00 00 00       	mov    $0x1,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <exit>:
SYSCALL(exit)
 683:	b8 02 00 00 00       	mov    $0x2,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <wait>:
SYSCALL(wait)
 68b:	b8 03 00 00 00       	mov    $0x3,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <pipe>:
SYSCALL(pipe)
 693:	b8 04 00 00 00       	mov    $0x4,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <read>:
SYSCALL(read)
 69b:	b8 05 00 00 00       	mov    $0x5,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <write>:
SYSCALL(write)
 6a3:	b8 10 00 00 00       	mov    $0x10,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <close>:
SYSCALL(close)
 6ab:	b8 15 00 00 00       	mov    $0x15,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <kill>:
SYSCALL(kill)
 6b3:	b8 06 00 00 00       	mov    $0x6,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <exec>:
SYSCALL(exec)
 6bb:	b8 07 00 00 00       	mov    $0x7,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <open>:
SYSCALL(open)
 6c3:	b8 0f 00 00 00       	mov    $0xf,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    

000006cb <mknod>:
SYSCALL(mknod)
 6cb:	b8 11 00 00 00       	mov    $0x11,%eax
 6d0:	cd 40                	int    $0x40
 6d2:	c3                   	ret    

000006d3 <unlink>:
SYSCALL(unlink)
 6d3:	b8 12 00 00 00       	mov    $0x12,%eax
 6d8:	cd 40                	int    $0x40
 6da:	c3                   	ret    

000006db <fstat>:
SYSCALL(fstat)
 6db:	b8 08 00 00 00       	mov    $0x8,%eax
 6e0:	cd 40                	int    $0x40
 6e2:	c3                   	ret    

000006e3 <link>:
SYSCALL(link)
 6e3:	b8 13 00 00 00       	mov    $0x13,%eax
 6e8:	cd 40                	int    $0x40
 6ea:	c3                   	ret    

000006eb <mkdir>:
SYSCALL(mkdir)
 6eb:	b8 14 00 00 00       	mov    $0x14,%eax
 6f0:	cd 40                	int    $0x40
 6f2:	c3                   	ret    

000006f3 <chdir>:
SYSCALL(chdir)
 6f3:	b8 09 00 00 00       	mov    $0x9,%eax
 6f8:	cd 40                	int    $0x40
 6fa:	c3                   	ret    

000006fb <dup>:
SYSCALL(dup)
 6fb:	b8 0a 00 00 00       	mov    $0xa,%eax
 700:	cd 40                	int    $0x40
 702:	c3                   	ret    

00000703 <getpid>:
SYSCALL(getpid)
 703:	b8 0b 00 00 00       	mov    $0xb,%eax
 708:	cd 40                	int    $0x40
 70a:	c3                   	ret    

0000070b <sbrk>:
SYSCALL(sbrk)
 70b:	b8 0c 00 00 00       	mov    $0xc,%eax
 710:	cd 40                	int    $0x40
 712:	c3                   	ret    

00000713 <sleep>:
SYSCALL(sleep)
 713:	b8 0d 00 00 00       	mov    $0xd,%eax
 718:	cd 40                	int    $0x40
 71a:	c3                   	ret    

0000071b <uptime>:
SYSCALL(uptime)
 71b:	b8 0e 00 00 00       	mov    $0xe,%eax
 720:	cd 40                	int    $0x40
 722:	c3                   	ret    

00000723 <clone>:
SYSCALL(clone)
 723:	b8 16 00 00 00       	mov    $0x16,%eax
 728:	cd 40                	int    $0x40
 72a:	c3                   	ret    

0000072b <join>:
SYSCALL(join)
 72b:	b8 17 00 00 00       	mov    $0x17,%eax
 730:	cd 40                	int    $0x40
 732:	c3                   	ret    
 733:	66 90                	xchg   %ax,%ax
 735:	66 90                	xchg   %ax,%ax
 737:	66 90                	xchg   %ax,%ax
 739:	66 90                	xchg   %ax,%ax
 73b:	66 90                	xchg   %ax,%ax
 73d:	66 90                	xchg   %ax,%ax
 73f:	90                   	nop

00000740 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 3c             	sub    $0x3c,%esp
 749:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 74c:	89 d1                	mov    %edx,%ecx
{
 74e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 751:	85 d2                	test   %edx,%edx
 753:	0f 89 7f 00 00 00    	jns    7d8 <printint+0x98>
 759:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 75d:	74 79                	je     7d8 <printint+0x98>
    neg = 1;
 75f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 766:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 768:	31 db                	xor    %ebx,%ebx
 76a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 770:	89 c8                	mov    %ecx,%eax
 772:	31 d2                	xor    %edx,%edx
 774:	89 cf                	mov    %ecx,%edi
 776:	f7 75 c4             	divl   -0x3c(%ebp)
 779:	0f b6 92 00 0c 00 00 	movzbl 0xc00(%edx),%edx
 780:	89 45 c0             	mov    %eax,-0x40(%ebp)
 783:	89 d8                	mov    %ebx,%eax
 785:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 788:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 78b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 78e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 791:	76 dd                	jbe    770 <printint+0x30>
  if(neg)
 793:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 796:	85 c9                	test   %ecx,%ecx
 798:	74 0c                	je     7a6 <printint+0x66>
    buf[i++] = '-';
 79a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 79f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7ad:	eb 07                	jmp    7b6 <printint+0x76>
 7af:	90                   	nop
    putc(fd, buf[i]);
 7b0:	0f b6 13             	movzbl (%ebx),%edx
 7b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7b6:	83 ec 04             	sub    $0x4,%esp
 7b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7bc:	6a 01                	push   $0x1
 7be:	56                   	push   %esi
 7bf:	57                   	push   %edi
 7c0:	e8 de fe ff ff       	call   6a3 <write>
  while(--i >= 0)
 7c5:	83 c4 10             	add    $0x10,%esp
 7c8:	39 de                	cmp    %ebx,%esi
 7ca:	75 e4                	jne    7b0 <printint+0x70>
}
 7cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7cf:	5b                   	pop    %ebx
 7d0:	5e                   	pop    %esi
 7d1:	5f                   	pop    %edi
 7d2:	5d                   	pop    %ebp
 7d3:	c3                   	ret    
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7df:	eb 87                	jmp    768 <printint+0x28>
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop

000007f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7ff:	0f b6 13             	movzbl (%ebx),%edx
 802:	84 d2                	test   %dl,%dl
 804:	74 6a                	je     870 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 806:	8d 45 10             	lea    0x10(%ebp),%eax
 809:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 80c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 80f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 811:	89 45 d0             	mov    %eax,-0x30(%ebp)
 814:	eb 36                	jmp    84c <printf+0x5c>
 816:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81d:	8d 76 00             	lea    0x0(%esi),%esi
 820:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 823:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 828:	83 f8 25             	cmp    $0x25,%eax
 82b:	74 15                	je     842 <printf+0x52>
  write(fd, &c, 1);
 82d:	83 ec 04             	sub    $0x4,%esp
 830:	88 55 e7             	mov    %dl,-0x19(%ebp)
 833:	6a 01                	push   $0x1
 835:	57                   	push   %edi
 836:	56                   	push   %esi
 837:	e8 67 fe ff ff       	call   6a3 <write>
 83c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 83f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 842:	0f b6 13             	movzbl (%ebx),%edx
 845:	83 c3 01             	add    $0x1,%ebx
 848:	84 d2                	test   %dl,%dl
 84a:	74 24                	je     870 <printf+0x80>
    c = fmt[i] & 0xff;
 84c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 84f:	85 c9                	test   %ecx,%ecx
 851:	74 cd                	je     820 <printf+0x30>
      }
    } else if(state == '%'){
 853:	83 f9 25             	cmp    $0x25,%ecx
 856:	75 ea                	jne    842 <printf+0x52>
      if(c == 'd'){
 858:	83 f8 25             	cmp    $0x25,%eax
 85b:	0f 84 07 01 00 00    	je     968 <printf+0x178>
 861:	83 e8 63             	sub    $0x63,%eax
 864:	83 f8 15             	cmp    $0x15,%eax
 867:	77 17                	ja     880 <printf+0x90>
 869:	ff 24 85 a8 0b 00 00 	jmp    *0xba8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 870:	8d 65 f4             	lea    -0xc(%ebp),%esp
 873:	5b                   	pop    %ebx
 874:	5e                   	pop    %esi
 875:	5f                   	pop    %edi
 876:	5d                   	pop    %ebp
 877:	c3                   	ret    
 878:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87f:	90                   	nop
  write(fd, &c, 1);
 880:	83 ec 04             	sub    $0x4,%esp
 883:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 886:	6a 01                	push   $0x1
 888:	57                   	push   %edi
 889:	56                   	push   %esi
 88a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 88e:	e8 10 fe ff ff       	call   6a3 <write>
        putc(fd, c);
 893:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 897:	83 c4 0c             	add    $0xc,%esp
 89a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 89d:	6a 01                	push   $0x1
 89f:	57                   	push   %edi
 8a0:	56                   	push   %esi
 8a1:	e8 fd fd ff ff       	call   6a3 <write>
        putc(fd, c);
 8a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8a9:	31 c9                	xor    %ecx,%ecx
 8ab:	eb 95                	jmp    842 <printf+0x52>
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8b0:	83 ec 0c             	sub    $0xc,%esp
 8b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8b8:	6a 00                	push   $0x0
 8ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8bd:	8b 10                	mov    (%eax),%edx
 8bf:	89 f0                	mov    %esi,%eax
 8c1:	e8 7a fe ff ff       	call   740 <printint>
        ap++;
 8c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8cd:	31 c9                	xor    %ecx,%ecx
 8cf:	e9 6e ff ff ff       	jmp    842 <printf+0x52>
 8d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8db:	8b 10                	mov    (%eax),%edx
        ap++;
 8dd:	83 c0 04             	add    $0x4,%eax
 8e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8e3:	85 d2                	test   %edx,%edx
 8e5:	0f 84 8d 00 00 00    	je     978 <printf+0x188>
        while(*s != 0){
 8eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8f0:	84 c0                	test   %al,%al
 8f2:	0f 84 4a ff ff ff    	je     842 <printf+0x52>
 8f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8fb:	89 d3                	mov    %edx,%ebx
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
          s++;
 903:	83 c3 01             	add    $0x1,%ebx
 906:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 909:	6a 01                	push   $0x1
 90b:	57                   	push   %edi
 90c:	56                   	push   %esi
 90d:	e8 91 fd ff ff       	call   6a3 <write>
        while(*s != 0){
 912:	0f b6 03             	movzbl (%ebx),%eax
 915:	83 c4 10             	add    $0x10,%esp
 918:	84 c0                	test   %al,%al
 91a:	75 e4                	jne    900 <printf+0x110>
      state = 0;
 91c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 91f:	31 c9                	xor    %ecx,%ecx
 921:	e9 1c ff ff ff       	jmp    842 <printf+0x52>
 926:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 92d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 930:	83 ec 0c             	sub    $0xc,%esp
 933:	b9 0a 00 00 00       	mov    $0xa,%ecx
 938:	6a 01                	push   $0x1
 93a:	e9 7b ff ff ff       	jmp    8ba <printf+0xca>
 93f:	90                   	nop
        putc(fd, *ap);
 940:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 943:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 946:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 948:	6a 01                	push   $0x1
 94a:	57                   	push   %edi
 94b:	56                   	push   %esi
        putc(fd, *ap);
 94c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 94f:	e8 4f fd ff ff       	call   6a3 <write>
        ap++;
 954:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 958:	83 c4 10             	add    $0x10,%esp
      state = 0;
 95b:	31 c9                	xor    %ecx,%ecx
 95d:	e9 e0 fe ff ff       	jmp    842 <printf+0x52>
 962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 968:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 96b:	83 ec 04             	sub    $0x4,%esp
 96e:	e9 2a ff ff ff       	jmp    89d <printf+0xad>
 973:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 977:	90                   	nop
          s = "(null)";
 978:	ba 9e 0b 00 00       	mov    $0xb9e,%edx
        while(*s != 0){
 97d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 980:	b8 28 00 00 00       	mov    $0x28,%eax
 985:	89 d3                	mov    %edx,%ebx
 987:	e9 74 ff ff ff       	jmp    900 <printf+0x110>
 98c:	66 90                	xchg   %ax,%ax
 98e:	66 90                	xchg   %ax,%ax

00000990 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 990:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 991:	a1 e0 12 00 00       	mov    0x12e0,%eax
{
 996:	89 e5                	mov    %esp,%ebp
 998:	57                   	push   %edi
 999:	56                   	push   %esi
 99a:	53                   	push   %ebx
 99b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 99e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9a8:	89 c2                	mov    %eax,%edx
 9aa:	8b 00                	mov    (%eax),%eax
 9ac:	39 ca                	cmp    %ecx,%edx
 9ae:	73 30                	jae    9e0 <free+0x50>
 9b0:	39 c1                	cmp    %eax,%ecx
 9b2:	72 04                	jb     9b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b4:	39 c2                	cmp    %eax,%edx
 9b6:	72 f0                	jb     9a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9be:	39 f8                	cmp    %edi,%eax
 9c0:	74 30                	je     9f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9c5:	8b 42 04             	mov    0x4(%edx),%eax
 9c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9cb:	39 f1                	cmp    %esi,%ecx
 9cd:	74 3a                	je     a09 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9d1:	5b                   	pop    %ebx
  freep = p;
 9d2:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 9d8:	5e                   	pop    %esi
 9d9:	5f                   	pop    %edi
 9da:	5d                   	pop    %ebp
 9db:	c3                   	ret    
 9dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9e0:	39 c2                	cmp    %eax,%edx
 9e2:	72 c4                	jb     9a8 <free+0x18>
 9e4:	39 c1                	cmp    %eax,%ecx
 9e6:	73 c0                	jae    9a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ee:	39 f8                	cmp    %edi,%eax
 9f0:	75 d0                	jne    9c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9f2:	03 70 04             	add    0x4(%eax),%esi
 9f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9f8:	8b 02                	mov    (%edx),%eax
 9fa:	8b 00                	mov    (%eax),%eax
 9fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9ff:	8b 42 04             	mov    0x4(%edx),%eax
 a02:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a05:	39 f1                	cmp    %esi,%ecx
 a07:	75 c6                	jne    9cf <free+0x3f>
    p->s.size += bp->s.size;
 a09:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a0c:	89 15 e0 12 00 00    	mov    %edx,0x12e0
    p->s.size += bp->s.size;
 a12:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a15:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a18:	89 0a                	mov    %ecx,(%edx)
}
 a1a:	5b                   	pop    %ebx
 a1b:	5e                   	pop    %esi
 a1c:	5f                   	pop    %edi
 a1d:	5d                   	pop    %ebp
 a1e:	c3                   	ret    
 a1f:	90                   	nop

00000a20 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	57                   	push   %edi
 a24:	56                   	push   %esi
 a25:	53                   	push   %ebx
 a26:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a29:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a2c:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a32:	8d 70 07             	lea    0x7(%eax),%esi
 a35:	c1 ee 03             	shr    $0x3,%esi
 a38:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a3b:	85 ff                	test   %edi,%edi
 a3d:	0f 84 9d 00 00 00    	je     ae0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a43:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a45:	8b 4a 04             	mov    0x4(%edx),%ecx
 a48:	39 f1                	cmp    %esi,%ecx
 a4a:	73 6a                	jae    ab6 <malloc+0x96>
 a4c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a51:	39 de                	cmp    %ebx,%esi
 a53:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a56:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a5d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a60:	eb 17                	jmp    a79 <malloc+0x59>
 a62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a68:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a6a:	8b 48 04             	mov    0x4(%eax),%ecx
 a6d:	39 f1                	cmp    %esi,%ecx
 a6f:	73 4f                	jae    ac0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a71:	8b 3d e0 12 00 00    	mov    0x12e0,%edi
 a77:	89 c2                	mov    %eax,%edx
 a79:	39 d7                	cmp    %edx,%edi
 a7b:	75 eb                	jne    a68 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a7d:	83 ec 0c             	sub    $0xc,%esp
 a80:	ff 75 e4             	push   -0x1c(%ebp)
 a83:	e8 83 fc ff ff       	call   70b <sbrk>
  if(p == (char*)-1)
 a88:	83 c4 10             	add    $0x10,%esp
 a8b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a8e:	74 1c                	je     aac <malloc+0x8c>
  hp->s.size = nu;
 a90:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a93:	83 ec 0c             	sub    $0xc,%esp
 a96:	83 c0 08             	add    $0x8,%eax
 a99:	50                   	push   %eax
 a9a:	e8 f1 fe ff ff       	call   990 <free>
  return freep;
 a9f:	8b 15 e0 12 00 00    	mov    0x12e0,%edx
      if((p = morecore(nunits)) == 0)
 aa5:	83 c4 10             	add    $0x10,%esp
 aa8:	85 d2                	test   %edx,%edx
 aaa:	75 bc                	jne    a68 <malloc+0x48>
        return 0;
  }
}
 aac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aaf:	31 c0                	xor    %eax,%eax
}
 ab1:	5b                   	pop    %ebx
 ab2:	5e                   	pop    %esi
 ab3:	5f                   	pop    %edi
 ab4:	5d                   	pop    %ebp
 ab5:	c3                   	ret    
    if(p->s.size >= nunits){
 ab6:	89 d0                	mov    %edx,%eax
 ab8:	89 fa                	mov    %edi,%edx
 aba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ac0:	39 ce                	cmp    %ecx,%esi
 ac2:	74 4c                	je     b10 <malloc+0xf0>
        p->s.size -= nunits;
 ac4:	29 f1                	sub    %esi,%ecx
 ac6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ac9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 acc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 acf:	89 15 e0 12 00 00    	mov    %edx,0x12e0
}
 ad5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ad8:	83 c0 08             	add    $0x8,%eax
}
 adb:	5b                   	pop    %ebx
 adc:	5e                   	pop    %esi
 add:	5f                   	pop    %edi
 ade:	5d                   	pop    %ebp
 adf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ae0:	c7 05 e0 12 00 00 e4 	movl   $0x12e4,0x12e0
 ae7:	12 00 00 
    base.s.size = 0;
 aea:	bf e4 12 00 00       	mov    $0x12e4,%edi
    base.s.ptr = freep = prevp = &base;
 aef:	c7 05 e4 12 00 00 e4 	movl   $0x12e4,0x12e4
 af6:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 af9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 afb:	c7 05 e8 12 00 00 00 	movl   $0x0,0x12e8
 b02:	00 00 00 
    if(p->s.size >= nunits){
 b05:	e9 42 ff ff ff       	jmp    a4c <malloc+0x2c>
 b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b10:	8b 08                	mov    (%eax),%ecx
 b12:	89 0a                	mov    %ecx,(%edx)
 b14:	eb b9                	jmp    acf <malloc+0xaf>
