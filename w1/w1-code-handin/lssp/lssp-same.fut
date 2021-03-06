-- Parallel Longest Satisfying Segment
--
-- ==
-- compiled nobench input {
--    [1, -2, -2, 0, 0, 0, 0, 0, 3, 4, -6, 1]
-- }
-- output {
--    5
-- }
-- compiled nobench input {
--    [1, 1, 1, 1, 1, 1, 1, 0, 1, 1, -6, 1, 1, 3, 1]
-- }
-- output {
--    7
-- }
-- compiled nobench input {
--    [3, 4, 4, 4, 3]
-- }
-- output {
--    3
-- }
-- compiled input @ data.in auto output

import "lssp"
import "lssp-seq"

type int = i32

let main (xs: []int) : int =
  let pred1 _   = true
  let pred2 x y = (x == y)
--  in  lssp_seq pred1 pred2 xs
  in  lssp pred1 pred2 xs
