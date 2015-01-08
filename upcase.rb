class Bitmap
  alias upcase_draw_text draw_text
  def draw_text(*args)
   args.each_index do |idx|
     if args[idx].is_a? String
       args[idx] = args[idx].upcase
     end
   end
    upcase_draw_text(*args)
  end
end
