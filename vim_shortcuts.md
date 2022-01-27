\# vim: syntax=markdown conceallevel=3

gv .....re-select  
gi .....start insert mode in the last typing place  
\`.	....got to last change

**Increment**  
:pu=range(1,X) ...insert a range  
c-a|c-x|gc-a .....increment number, decrease, increment range  
:sort

**Insert mode:**  
c-w ....delete back one word  
c-koo ..insert bullet  
c-a	....increment a number  

**Macros, etc.**  
q[a] ..........start recording  
q .............end recording  
@[a] ..........play  
:norm @[a] ....play on selected lines  
:ab [short] [long] abbreviations  

**Norm**  
:norm _i• ............insert • (bullet) before first char, optional <cr> or <esc>  
@: @@ ................repeat last :command, @@ then again  
'{,'}norm $F^I_i• ....insert • (bullet) before first char only lines with tabs  

**Spell**  
set spell ...enable spelling, use nospell to turn off  
z ...........show suggestions  
1z ..........replace with first item  
[s ]s .......move forward/backward  
zg ..........remember word

**Search/replace**  
s/^/[bul] /	...........bullet selected lines where ,[bul] = c-koo and <sp>=space  
s/^/\=line(".")-line("'<")-1.". " ......number selected text  	
:g/^baz/s/foo/bar/g	...change each 'foo' to 'bar' in each line starting with 'baz'   
& .....................put back the search text, rather than replace i.e. s/ello/h&/g  
^ .....................start of line  
$ .....................end of line  

**Movement**  
gj ...................down by display line, not full line
set virtualed=all ....move up/down retain column, go into blank areas

**Other**  
:dig ......show digigraph chars, use c-k to use  
_ .........move to first char  
^ .........move first spot on line  

c-^|e:# ...open previous file  

**run commands from within the file itself:**  
\# vim: colorcolumn=50,70  
in vimrc add:  
set modeline  
set modelines=10  

ma - mark spot  
\`a .......return to line  
'a .......return to spot  

**Windows:**  
:sp or :vsp ................open window  
:close, :q, c-wc, c-wq .....close window  

:set breakindent ...........line wrap respect indents  

https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/