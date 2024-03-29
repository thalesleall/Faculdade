//Linked-List

function LinkedList(){
    let head = null;
    let length = 0;
    const node = (value) => {
        return{
            value,
            
            next: null
        }
    }
    const add = (value) => {
        if(!head){
            head = node(value)
            length++
            return head;
        }
        let node = head;
        while(node.next){
            node = node.next
        }
        node.next = node(value)
        length++
        return node.next
        console.log(node)
    }

    return{
        length: () => length,
        add: (value) => add(value),
        print: () => console.log(head)
    }
}

const list = LinkedList()
console.log(list.length()) 
list.add(1)
list.add(2)
console.log(list.length()) 
list.print()