//Make me compile without adding new lines-- just changing existing lines!

fn main() {
    let arr0 = ArrayTrait::new();

    let mut arr1 = fill_arr(arr0);

    print(arr1.span());

    arr1.append(88);

    print(arr1.span());
}

fn fill_arr(mut arr: Array<felt252>) -> Array<felt252> {
    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}

fn print(span: Span<felt252>) { 
    let mut i = 0;
    print!("ARRAY: {{ len: {}, values: [ ", span.len());
    loop {
        if span.len() == i {
            break;
        }
        let value = *(span.at(i));
        if span.len() - 1 != i {
            print!("{}, ", value);
        } else {
            print!("{}", value);
        }
        i += 1;
    };
    println!(" ] }}");
}

//In the current code, you are trying to modify an Array within the fill_arr function, but you have not marked the arr 
//reference as mutable. Therefore, to allow modifications, we must declare arr as mutable in the fill_arr function signature.
//Solution:
//To solve this problem, we simply need to add mut in the fill_arr function signature so that arr is mutable and we 
//can make the modifications.