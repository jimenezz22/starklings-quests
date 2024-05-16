fn create_array() -> Array<felt252> {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(1);
    a.append(2);
    a.pop_front().unwrap();
    a
}

#[test]
fn test_arrays3() {
    let mut a = create_array();
    // Use get instead of at
    match a.get(2) {
        Option::Some(value) => {
            *value
                .unbox();
            println!("Element at index 2: {}", value)
        },
        Option::None => {
            println!("Index 2 is out of bounds")
        }
    }
}
