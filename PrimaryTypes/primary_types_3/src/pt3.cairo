
fn main() {
    //destructuring a tuple
    let cat = ('Furry McFurson', 3); // don't change this line
    let (name,age): (felt252, felt252) = cat;// your pattern here = cat;
    println!("name is {}", name);
    println!("age is {}", age);
}