fn main() {
    let arr_constructor = [3; 5];
    let arr = [3, 5];

    println!("Array: {:?}", arr_constructor);
    println!("Array: {:?}", arr);

    // =========================
    let t = ([1; 2], [3; 4]);
    let (a, _b) = t;
    println!("{}", a[0] + t.1[0]);
}
