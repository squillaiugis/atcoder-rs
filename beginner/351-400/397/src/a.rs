use proconio::input;

const HIGH_FEVER: f64 = 38.0;
const FEVER: f64 = 37.5;

fn solve(x: f64) -> usize {
    if x >= HIGH_FEVER {
        1
    } else if x < HIGH_FEVER && x >= FEVER {
        2
    } else {
        3
    }
}

fn main() {
    input! {
        x: f64,
    }

    println!("{}", solve(x));
}
