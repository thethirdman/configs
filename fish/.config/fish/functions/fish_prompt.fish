function fish_prompt
   set ret $status
   printf "%s%s%s: %s%s" (set_color FD971F) (whoami) (set_color -o white) (set_color -o 00afff) (prompt_pwd)
   echo -n (set_color normal)
   if test  $ret != 0
      printf  " %s[$ret]%s" (set_color d7005f) (set_color normal)
   end
   printf "\n"
   printf ">"
end
