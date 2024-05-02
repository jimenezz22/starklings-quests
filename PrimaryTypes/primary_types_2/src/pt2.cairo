fn main() {
    // A short string is a string whose length is at most 31 characters, and therefore can fit into a single field element.
    // Short strings are actually felts, they are not a real string.
    // Note the _single_ quotes that are used with short strings.

    let mut my_first_initial = 'C';

    if is_alphabetic(ref my_first_initial) { //ref is like to pass a pointer reference of the variable my_first_initial
        println!(" Alphabetical !");
    } else if is_numeric(ref my_first_initial) {
        println!(" Numerical !");
    } else {
        println!(" Neither alphabetic nor numeric!");
    }

    let  mut your_character = '2';
    // Finish this line like the example! What's your favorite short string?
    // Try a letter, try a number, try a special character, try a short string!
    if is_alphabetic(ref your_character) {
        println!(" Alphabetical !");
    } else if is_numeric(ref your_character) {
        println!(" Numerical!");
    } else {
        println!(" Neither alphabetic nor numeric!");
    }
}

// The following functions are used to check if a character is alphabetic or numeric.
fn is_alphabetic(ref char: felt252) -> bool {
    if char >= 'a' {
        if char <= 'z' {
            return true;
        }
    }
    if char >= 'A' {
        if char <= 'Z' {
            return true;
        }
    }
    false
}

fn is_numeric(ref char: felt252) -> bool {
    if char >= '0' {
        if char <= '9' {
            return true;
        }
    }
    false
}

// Note: the following code is not part of the challenge, it's just here to make the code above work.
// Direct felt252 comparisons have been removed from the core library, so we need to implement them ourselves.
// There will probably be a string / short string type in the future

// Define an implementation block for the PartialOrd trait for the felt252 type
impl Felt252PartialOrd of PartialOrd<felt252> {
    // Define the less than or equal to (<=) comparison operation
    fn le(lhs: felt252, rhs: felt252) -> bool {
        // Convert lhs and rhs from felt252 to u256, then compare them using <=
        Into::<felt252, u256>::into(lhs) <= Into::<felt252, u256>::into(rhs)
    }

    // Define the greater than or equal to (>=) comparison operation
    fn ge(lhs: felt252, rhs: felt252) -> bool {
        // Convert lhs and rhs from felt252 to u256, then compare them using >=
        Into::<felt252, u256>::into(lhs) >= Into::<felt252, u256>::into(rhs)
    }

    // Define the less than (<) comparison operation
    fn lt(lhs: felt252, rhs: felt252) -> bool {
        // Convert lhs and rhs from felt252 to u256, then compare them using <
        Into::<felt252, u256>::into(lhs) < Into::<felt252, u256>::into(rhs)
    }

    // Define the greater than (>) comparison operation
    fn gt(lhs: felt252, rhs: felt252) -> bool {
        // Convert lhs and rhs from felt252 to u256, then compare them using >
        Into::<felt252, u256>::into(lhs) > Into::<felt252, u256>::into(rhs)
    }
}