use core::dict::Felt252DictTrait;

fn multiply_element_by_10(ref dict: Felt252Dict<u32>, n: felt252) {
    let mut index = 0;
    loop {
        // Attempt to get the current value at `index`
        let value = dict.get(index);
        let new_value = value * 10;
        dict.insert(index, new_value);

        // Increment index
        index += 1;

        // Check if we have reached the end of the loop
        if index == n {
            break;
        }
    }
}


// Don't change anything in the test

fn test_3() {
    let mut dict: Felt252Dict<u32> = Default::default();
    dict.insert(0, 1);
    dict.insert(1, 2);
    dict.insert(2, 3);

    multiply_element_by_10(ref dict, 3);

    assert(dict.get(0) == 10, 'First element is not 10');
    assert(dict.get(1) == 20, 'Second element is not 20');
    assert(dict.get(2) == 30, 'Third element is not 30');
}

fn test_4() {
    let mut dict: Felt252Dict<u32> = Default::default();
    dict.insert(0, 1);
    dict.insert(1, 2);
    dict.insert(2, 5);
    dict.insert(3, 10);

    multiply_element_by_10(ref dict, 4);

    assert(dict.get(2) == 50, 'First element is not 50');
    assert(dict.get(3) == 100, 'First element is not 100');

}

fn main() {
    test_3();
    test_4();
}