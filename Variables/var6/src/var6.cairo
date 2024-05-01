const NUMBER: u32 = 3;
const SMALL_NUMBER: u8 = 3_u8; //don't change the value of this constant
fn main() {
    println!("NUMBER is {}", NUMBER);
    println!("SMALL_NUMBER is {}", SMALL_NUMBER);
}

//In Cairo, the suffix _u8 is used to explicitly specify the type of the integer literal as an unsigned 8-bit integer. 
//It doesn't affect the value itself, it just ensures that the value is interpreted as an unsigned 8-bit integer.
//So, in the line const SMALL_NUMBER: u8 = 3_u8;, the value of the constant SMALL_NUMBER is indeed 3, 
//and the suffix _u8 is just a way to specify that it should be treated as an unsigned 8-bit integer.