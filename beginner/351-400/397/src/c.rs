use proconio::input;
use std::collections::HashMap;

fn solve(a: Vec<usize>) -> usize {
    let n = a.len();

    let mut right_count = HashMap::new();
    for &num in &a {
        *right_count.entry(num).or_insert(0) += 1;
    }
    let mut right_types = right_count.len();

    let mut left_count = HashMap::new();
    let mut left_types = 0;

    let mut max_sum = 0;

    for i in 0..n - 1 {
        let num = a[i];
        let count = left_count.entry(num).or_insert(0);
        *count += 1;
        if *count == 1 {
            left_types += 1;
        }

        let right_entry = right_count.get_mut(&num).unwrap();
        *right_entry -= 1;
        if *right_entry == 0 {
            right_types -= 1;
        }

        let sum = left_types + right_types;
        max_sum = max_sum.max(sum);
    }

    max_sum
}

fn main() {
    input! {
        n:usize,
        a: [usize;n],
    }

    println!("{}", solve(a));
}
