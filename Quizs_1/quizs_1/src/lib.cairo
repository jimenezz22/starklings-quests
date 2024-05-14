// Put your function here!
fn calculate_price_of_apples(apples:u32) -> u32{
    let mut price = 0;
    if apples <= 40 {
        price = apples * 3;
    } else {
        price = apples * 2;
    }
    price
}

// Do not change the tests!
fn verify_test() {
    let price1 = calculate_price_of_apples(35);
    let price2 = calculate_price_of_apples(40);
    let price3 = calculate_price_of_apples(41);
    let price4 = calculate_price_of_apples(65);

    assert(105 == price1, 'Incorrect price');
    assert(120 == price2, 'Incorrect price');
    assert(82 == price3, 'Incorrect price');
    assert(130 == price4, 'Incorrect price');
}
fn main() {
    verify_test();
    println!("All tests passed!");
}