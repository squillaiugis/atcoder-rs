use proconio::input;

fn solve(n: usize) -> String {
    n.to_string()
}

fn main() {
    input! {
        n: usize,
    }

    println!("{}", solve(n));
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_sample1() {
        assert_eq!(solve(1), "1");
    }
}