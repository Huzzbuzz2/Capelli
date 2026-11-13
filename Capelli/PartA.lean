import Mathlib.FieldTheory.KummerExtension

/-! # Part A: the reducible direction

If `4 ∣ n` and `a = -4 * b ^ 4`, then `X ^ n - C a` is not irreducible.
-/

open Polynomial

namespace Capelli

variable {K : Type*} [Field K]

/-- Step 1: the factorisation of `X ^ (4m) + 4 b ^ 4`. -/
theorem X_pow_four_mul_add_factor (m : ℕ) (b : K) :
    X ^ (4 * m) + C (4 * b ^ 4) =
      (X ^ (2 * m) + C (2 * b) * X ^ m + C (2 * b ^ 2)) *
      (X ^ (2 * m) - C (2 * b) * X ^ m + C (2 * b ^ 2)) := by
  sorry

/-- Step 2: the first factor has degree `2m`. -/
theorem natDegree_factor_add {m : ℕ} (hm : 0 < m) (b : K) :
    (X ^ (2 * m) + C (2 * b) * X ^ m + C (2 * b ^ 2)).natDegree = 2 * m := by
  sorry

/-- Step 2: the second factor has degree `2m`. -/
theorem natDegree_factor_sub {m : ℕ} (hm : 0 < m) (b : K) :
    (X ^ (2 * m) - C (2 * b) * X ^ m + C (2 * b ^ 2)).natDegree = 2 * m := by
  sorry

/-- Step 3: the reducible direction. -/
theorem not_irreducible_X_pow_sub_C_neg_four {n : ℕ} (hn : 4 ∣ n) (hn0 : n ≠ 0) (b : K) :
    ¬ Irreducible (X ^ n - C (-4 * b ^ 4)) := by
  sorry

end Capelli
