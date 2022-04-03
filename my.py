#stack (tumpukan)
stack = []

def isEmpty(s):                #cek apakah stack penuh
  if len(s) == 0:
   print("Stack Empty")
    return True
 return False

def push(s):                                   #menambah item
  p = input("Push: ")
  s.append(p)
  print(f"{p} pushed")

def pop(s):                                    #menghapus item
  if isEmpty(s) == False:
    print(s.pop(), "popped from stack")

def peek(s):                                    #cek item teratas
 if isEmpty(s) == False:
   print(s[-1])


while True:
  perintah = input("(Push/Pop/Peek), selain itu kode berhenti: ").lower()
  
  if perintah == 'push':
    push(stack)
  elif perintah == 'pop':
    pop(stack)
  elif perintah == 'peek':
    peek(stack)
  else:
      break

print("Item yang ada pada stack:", stack)


#queue (antrian)
queue = []

def isEmpty(q):
  if len(q) == 0:
    print("Queue Empty")
    return True
  return False

def enqueue(q):
  p = input("Add: ")
  q.append(p)
  print(f"{p} added")

def dequeue(q):
  if isEmpty(q) == False : 
    print(q.pop(0), "removed")

def front(q):
  if isEmpty(q) == False :
    print('front item:', q[0])

def rear(q):
   if isEmpty(q) == False :
      print("rear item:", q[-1])

while true:
  perintah = input("(Dequeue/Enqueue/Front/Rear), ketik selain itu untuk berhenti: ").lower ( )
  
       if perintah == 'enqueue':
           enqueue(queue)
       elif perintah == 'dequeue':
           dequeue(queue)
       elif perintah == 'front':
           front(queue)
       elif perintah == 'rear':
           rear(queue)
       else:
           break

print("Queue items:", queue)