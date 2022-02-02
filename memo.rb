require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
 
    memo_type = gets.chomp.to_s
 
    if memo_type == "1"
      puts "拡張子を除いたファイルを入力してください"
      
      test = gets.chomp 
      
      puts "メモしたい内容を記入してください"
      puts "完了したらCtrl+Dを押します"
      
      memo = STDIN.read
      
       CSV.open("#{test}.csv","w") do |csv|
      csv.puts ["#{memo}"]
      
    end
    elsif memo_type == "2"
      puts "編集するファイル名を拡張子を除いて入力してください"
      file = gets.chomp
    
      puts "追記したい内容を記入してください"
      puts "完了したらCtrl+Dを押します"
      
      memo = STDIN.read
      
       CSV.open("#{file}.csv","a") do |csv|
      csv.puts ["#{memo}"]
      puts "入力した内容が#{file}.csvに追加されました"
       
  end
    else 
      puts "１または２を入力してください"
    end