//
// https://github.com/apple/swift-evolution/blob/master/proposals/0168-multi-line-string-literals.md
//

import Foundation

let producer = "Escape Plan"

let lyric = """
夜空中最亮的星 ✶✶✶✶✶✶✶
 夜空中最亮的星 ✶✶✶✶✶✶✶
  夜空中最亮的星 ✶✶✶✶✶✶✶
   夜空中最亮的星 ✶✶✶✶✶✶✶
  夜空中最亮的星 ✶✶✶✶✶✶✶
 夜空中最亮的星 ✶✶✶✶✶✶✶
夜空中最亮的星 ✶✶✶✶✶✶✶ \(producer)
"""

print(lyric)
