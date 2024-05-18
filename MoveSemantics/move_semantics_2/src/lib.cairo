//Make me compile without changing line 7 or moving line 4!
fn main() {
    let mut arr0 = ArrayTrait::new();

    fill_arr(ref arr0); //Passing a reference to the array instead of the array itself

    // Do not change the following line!
    print(arr0.span());
}

//Passing a reference to the array instead of the array itself
fn fill_arr(ref arr: Array<felt252>) {
    arr.append(22);
    arr.append(44);
    arr.append(66);
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

//The error "Variable was previously moved" is due to the fact that in Rust (and in this case, Cairo), variables are moved
// (instead of copied) when passed to functions.