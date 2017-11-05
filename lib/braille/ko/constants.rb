#encoding: UTF-8
module Braille

  BASE_UNICODE = 44032

  DEFAULT_CHO = 11
  DEFAULT_JONG = 0

  # JASO SET
  CHO_SET = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ", " "]
  JUNG_SET = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ", "ㅛ", "ㅜ", "ㅝ", "ㅞ", "ㅟ", "ㅠ", "ㅡ", "ㅢ", "ㅣ", " "]
  JONG_SET = ["", "ㄱ", "ㄲ", "ㄳ", "ㄴ", "ㄵ", "ㄶ", "ㄷ", "ㄹ", "ㄺ", "ㄻ", "ㄼ", "ㄽ", "ㄾ", "ㄿ", "ㅀ", "ㅁ", "ㅂ", "ㅄ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ", " "]

  # Braille SET
  CHO = {
    'ㄱ' => '⠈',
    'ㄴ' => '⠉',
    'ㄷ' => '⠊',
    'ㄹ' => '⠐',
    'ㅁ' => '⠑',
    'ㅂ' => '⠘',
    'ㅅ' => '⠠',
    'ㅇ' => '⠛', # 원래 없음
    'ㅈ' => '⠨',
    'ㅊ' => '⠰',
    'ㅋ' => '⠋',
    'ㅌ' => '⠓',
    'ㅍ' => '⠙',
    'ㅎ' => '⠚'
  }

  JUNG = {
    'ㅏ' => '⠣',
    'ㅑ' => '⠜',
    'ㅓ' => '⠎',
    'ㅕ' => '⠱',
    'ㅗ' => '⠥',
    'ㅛ' => '⠬',
    'ㅜ' => '⠍',
    'ㅠ' => '⠩',
    'ㅡ' => '⠪',
    'ㅣ' => '⠕',
    'ㅐ' => '⠗',
    'ㅔ' => '⠝',
    'ㅒ' => '⠜⠗',
    'ㅖ' => '⠌',
    'ㅘ' => '⠧',
    'ㅙ' => '⠧⠗',
    'ㅚ' => '⠽',
    'ㅝ' => '⠏',
    'ㅞ' => '⠏⠗',
    'ㅟ' => '⠍⠗',
    'ㅢ' => '⠺'
  }

  JONG = {
    'ㄱ' => '⠁',
    'ㄴ' => '⠒',
    'ㄷ' => '⠔',
    'ㄹ' => '⠂',
    'ㅁ' => '⠢',
    'ㅂ' => '⠃',
    'ㅅ' => '⠄',
    'ㅇ' => '⠶',
    'ㅈ' => '⠅',
    'ㅊ' => '⠆',
    'ㅋ' => '⠖',
    'ㅌ' => '⠦',
    'ㅍ' => '⠲',
    'ㅎ' => '⠴',
    'ㅆ' => '⠌'
  }

  ABBREVIATIONS = {
    '가' => '⠫',
    '나' => '⠉',
    '다' => '⠊',
    '마' => '⠑',
    '바' => '⠘',
    '사' => '⠇',
    '자' => '⠨',
    '카' => '⠋',
    '타' => '⠓',
    '파' => '⠙',
    '하' => '⠚',
    '것' => '⠸⠎',
    '억' => '⠹', #=> ㅓ ㄱ
    '언' => '⠾', #=> ㅓ ㄴ
    '얼' => '⠞', #=> ㅓ ㄹ
    '연' => '⠡', #=> ㅕ ㄴ
    '열' => '⠳', #=> ㅕ ㄹ
    '영' => '⠻', #=> ㅕ ㅇ
    '옥' => '⠭', #=> ㅗ ㄱ
    '온' => '⠷', #=> ㅗ ㄴ
    '옹' => '⠿', #=> ㅗ ㅇ
    '운' => '⠛', #=> ㅜ ㄴ
    '울' => '⠯', #=> ㅜ ㄹ
    '은' => '⠵', #=> ㅡ ㄴ
    '을' => '⠮', #=> ㅡ ㄹ
    '인' => '⠟', #=> ㅣ ㄴ
  }

  GROUPS = {
    '그래서' => '⠁⠎',
    '그러나' => '⠁⠉',
    '그러면' => '⠁⠒',
    '그러므로' => '⠁⠢',
    '그런데' => '⠁⠝',
    '그리고' => '⠁⠥',
    '그리하여' => '⠁⠱'
  }

  ALPHABETS = {
    'a' => '⠁',
    'b' => '⠃',
    'c' => '⠉',
    'd' => '⠙',
    'e' => '⠑',
    'f' => '⠋',
    'g' => '⠛',
    'h' => '⠓',
    'i' => '⠊',
    'j' => '⠚',
    'k' => '⠅',
    'l' => '⠇',
    'm' => '⠍',
    'n' => '⠝',
    'o' => '⠕',
    'p' => '⠏',
    'q' => '⠟',
    'r' => '⠗',
    's' => '⠎',
    't' => '⠞',
    'u' => '⠥',
    'v' => '⠧',
    'w' => '⠺',
    'x' => '⠭',
    'y' => '⠽',
    'z' => '⠵'
  }

  NUMBERS = {
    '1' => '⠁',
    '2' => '⠃',
    '3' => '⠉',
    '4' => '⠙',
    '5' => '⠑',
    '6' => '⠋',
    '7' => '⠛',
    '8' => '⠓',
    '9' => '⠊',
    '0' => '⠚',
    ',' => '⠂'
  }

  SPECIAL = {
    :capital => '⠠',
    :number  => '⠼',
    :alphabet_open => '⠴',
    :alphabet_close => '⠲',
    :on => '⠿'
  }

  PUNCTUATION = {
    '.' => '⠲', 
    ',' => '⠐',
    '!' => '⠖',
    '?' => '⠦'
  }

end
