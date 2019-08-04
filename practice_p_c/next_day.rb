# frozen_string_literal: true

require 'byebug'

date_info = gets.split(' ').map(&:to_i)
year = date_info[0]
month = date_info[1]
day = date_info[2]

MONTH_OF_THE_30TH = [4, 6, 9, 11].freeze
LAST_MONTH = 12

def judge_year_type(year)
  @year_type = if (year % 400).zero?
                 'leap'
               elsif (year % 100).zero?
                 'normal'
               elsif (year % 4).zero?
                 'leap'
               else
                 'normal'
               end
end

def judge_last_day_of_month(month)
  @last_day = if month == 2 && @year_type == 'leap'
                29
              elsif month == 2 && @year_type == 'normal'
                28
              elsif MONTH_OF_THE_30TH.include?(month)
                30
              else
                31
              end
end

def determine_next_day(year, month, day)
  judge_year_type(year)
  judge_last_day_of_month(month)
  @next_day = if day == @last_day && month == LAST_MONTH
                [year + 1, 1, 1]
              elsif day == @last_day
                [year, month + 1, 1]
              else
                [year, month, day + 1]
              end
end

determine_next_day(year, month, day)
puts "#{@next_day[0]} #{@next_day[1]} #{@next_day[2]}"
