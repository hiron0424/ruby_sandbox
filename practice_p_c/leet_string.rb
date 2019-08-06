# frozen_string_literal: true

# 016

origin_word = gets.chomp

converted_word = origin_word.gsub(/[AEGIOSZ]/,
                                  'A' => '4',
                                  'E' => '3',
                                  'G' => '6',
                                  'I' => '1',
                                  'O' => '0',
                                  'S' => '5',
                                  'Z' => '2')

puts converted_word
