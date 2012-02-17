# encoding: utf-8
require 'date'

# argv (start datetime, end datetime, the number of lines to output)

# 引数の確認
begin
  dstart = Date.strptime(ARGV[0], "%Y/%m/%d %H:%M:%s")
  dend   = Date.strptime(ARGV[1], "%Y/%m/%d %H:%M:%s")
rescue => ex
  p ex.class     # 例外の種類
  p ex.message   # 例外メッセージ
  p ex.backtrace # 例外発生の位置情報
  exit(1)
ensure
  # finaly
end



d = 0
stopper = ARGV[2].to_i
for j in 1..stopper do
  d += rand(4)
  h = rand(23)
  m = rand(59)
  s = rand(59)

  ph = h < 10 ? "0" + h.to_s : h.to_s
  pm = m < 10 ? "0" + m.to_s : m.to_s
  ps = s < 10 ? "0" + s.to_s : s.to_s
  
  p (dstart + d).to_s + " " + ph + ":" + pm + ":" + ps
end


