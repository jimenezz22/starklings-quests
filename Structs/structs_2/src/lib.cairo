#[derive(Copy, Drop)]
struct Order {
    name: felt252,
    year: felt252,
    made_by_phone: bool,
    made_by_mobile: bool,
    made_by_email: bool,
    item_number: felt252,
    count: felt252,
}

fn create_order_template() -> Order {
    Order {
        name: 'Bob',
        year: 2019,
        made_by_phone: false,
        made_by_mobile: false,
        made_by_email: true,
        item_number: 123,
        count: 0
    }
}
#[test]
fn test_your_order() {
    let order_template = create_order_template();
    // TODO: Destructure your order into multiple variables to make the assertions pass!
    
    // Destructure directly into individual variables (shortcut)
    let Order { name, year, made_by_phone, made_by_mobile, made_by_email, item_number, count } = order_template;

    // Assertions using destructured variables
    assert(name == 'Bob', 'Wrong name');
    assert(year == 2019, 'Wrong year');
    assert(made_by_phone == false, 'Wrong phone');
    assert(made_by_mobile == false, 'Wrong mobile');
    assert(made_by_email == true, 'Wrong email');
    assert(item_number == 123, 'Wrong item number');
    assert(count == 0, 'Wrong count');
}

