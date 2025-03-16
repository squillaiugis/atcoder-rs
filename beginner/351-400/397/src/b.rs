use proconio::{input, marker::Chars};

fn solve(mut s: Vec<char>) -> usize {
    let mut insertions = 0;
    let mut index = 0;

    while index < s.len() {
        let expected = if index % 2 == 0 { 'i' } else { 'o' };

        if s[index] == expected {
            index += 1;
        } else {
            s.insert(index, expected);
            insertions += 1;
            index += 1;
        }
    }

    if s.len() % 2 == 1 {
        insertions += 1;
    }

    insertions
}

fn main() {
    input! {
        s: Chars,
    }

    println!("{}", solve(s));
}
