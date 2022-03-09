require "csv"
puts "1(新規でメモを作成)2(メモを編集する)"
memo_type = gets.to_s.chomp
    if memo_type == "1"
        puts "拡張子を除いたファイルを入力していください。"
        file_name = gets.chomp
        puts "メモしたい内容を記入してください"
        puts "完了したらCtrl + Dをおします"
        CSV.open("#{file_name}.csv", "w") do |memo|
        content = readlines
        memo << content
        end

    elsif memo_type == "2"
        puts "編集したいファイル名を編集したいファイル名を入力してください"
        file_name = gets.chomp
        puts "編集内容を入力してください。"
        puts "完了したらCtrl + Dをおします"
        CSV.open("#{file_name}.csv", "a") do |memo|
        content = readlines
        memo << content
        end
    end
