//=================================

function numberToString(a: number[]) {
    var stringArray = a.map(v => v.toString());
    return stringArray;
}

//=================================
interface Array<T> {
    reverse(): T[];
    sort(compareFn?: (a: T, b: T) => number): T[];
    // ...
}

//==================================
interface NamedItem {
    name: string;
}

class List<T extends NamedItem> {
    next: List<T> = null;
    constructor(public item: T) {
    }
    insertAfter(item: T) {
        var temp = this.next;
        this.next = new List(item);
        this.next.next = temp;
    }
    log() {
        console.log(this.item.name);
    }
    // ...
}

//==================================
namespace Mn {
    var s = "hello";
    export function f() {
        return s;
    }
}
Mn.f();
Mn.s; // Error, s is not exported

//==================================
interface Mi {
    f(): string;
}
var m: Mi;

//==================================


//==================================



//==================================



