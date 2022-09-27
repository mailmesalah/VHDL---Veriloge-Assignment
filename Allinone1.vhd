-----***4 input NOR Gate(Q no:1)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Nor4  is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);------output 
end Nor4; 
---------------------------- 
architecture Operation of Nor4 is 
begin 
  o<= not(a or b or c or d); 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***4 input NAND Gate(Q no: 2)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Nand4  is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);--output 
end Nand4; 
---------------------------- 
architecture Operation of Nand4 is 
begin 
  o<= not(a and b and c and d); 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***3 input AND Gate(Q no:3)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity And3  is 
  port( 
    a,b,c:in std_logic;--inputs 
    d:out std_logic);--output 
end And3; 
---------------------------- 
architecture Operation of And3 is 
begin 
  d<= a and b and c; 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***3 input Xor Gate(Q no:4)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Xor3  is 
  port( 
    a,b,c:in std_logic;--inputs 
    o:out std_logic);--output 
end Xor3; 
---------------------------- 
architecture Operation of Xor3 is 
begin 
  o<= a xor b xor c; 
end operation;
------------------------------------------------------------------------------------------------------------


-----***2 input Ex-Nor Gate(Q no:5)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity XNor2  is 
  port( 
    a,b:in std_logic;--inputs 
    o:out std_logic);--output 
end XNor2; 
---------------------------- 
architecture Operation of XNor2 is 
begin 
  o<= a xnor b; 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***3 input OR Gate(Q no:6)***----- 
-----coded by Jenson and Salahudheen-----

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Or3  is 
  port( 
    a,b,c:in std_logic;--inputs 
    o:out std_logic);--output 
end Or3; 
---------------------------- 
architecture Operation of Or3 is 
begin 
  o<= a or b or c; 
end operation;
--------------------------------------------------------------------------------------------------------------


-----***3 input NAND Gate(Q no:7)***----- 
-----coded by Jenson and Salahudheen----- 


library ieee; 
use ieee.std_logic_1164.all; 
----------------------------- 
entity Nan3 is 
  port( 
    a,b,c:in std_logic;--inputs 
    o:out std_logic);--outputs 
  end Nan3;  
----------------------------- 
  architecture operation of Nan3 is 
  begin 
    o<= not(a and b and c); 
  end operation;
-----------------------------------------------------------------------------------------------------------


-----***3 input NOR Gate(Q no:9)***----- 
-----coded by Jenson and Salahudheen----- 


library ieee; 
use ieee.std_logic_1164.all; 
----------------------------- 
entity Nor3 is 
  port( 
    a,b,c:in std_logic;--inputs 
    d:out std_logic);--ouput 
  end Nor3; 
----------------------------- 
  architecture Op of Nor3 is 
  begin 
    d<=(not(a or b or c)); 
  end op;
-----------------------------------------------------------------------------------------------------------


-----***Half Adder(Q no:10)***----- 
-----coded by Jenson and Salahudheen---- 


library ieee; 
use ieee.std_logic_1164.all; 
------------------------------- 
entity HalfAdder is 
  
    port( 
        
        a,b:in std_logic;--inputs 
        sum,carry:out std_logic);--output 
    
end HalfAdder; 
------------------------------- 

architecture Operation of HalfAdder is 

  begin 
    
    sum<=a xor b; 
    carry<= a and b; 
    
end Operation;
-----------------------------------------------------------------------------------------------------------
-----***Full Adder(Q no:11)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity FullAdder is 
  port( 
    
    a,b,cin:in std_logic;--inputs 
    sum,carry:out std_logic);--output 
end FullAdder; 
---------------------------- 
architecture Operation of FullAdder is 

    begin 
      sum<= a xor b xor cin ; 
      carry<= (a and b) or (a and cin) or (b and cin); 
end Operation; 
-----------------------------------------------------------------------------------------------------------


-----***2-1 Mux(Q no:12)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Mux is 
  port( 
    a,b,ce:in std_logic;--inputs 
    cout:out std_logic);--output 
end Mux; 
---------------------------- 
architecture Operation of Mux is 
begin 
  cout<= ((not ce) and a) or(ce and b); 
end Operation;
-----------------------------------------------------------------------------------------------------------


------***4-1 Mux(Q no:13)***----- 
-----coded by Jenson and Salahudheen---- 


library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Mux4 is 
  port( 
    a,b,c,d,ce1,ce2:in std_logic;--input 
    cout:out std_logic);--output 
  end Mux4; 
----------------------------- 
architecture Operation of Mux4 is 
begin 
  cout<= ((not ce1)and (not ce2)and a) or ((not ce1)and (ce2)and b) or ((ce1)and (not ce2)and c) or ((ce1)and (ce2)and d ); 
end Operation;
-----------------------------------------------------------------------------------------------------------
-----***8-1 Mux(Q no:14)***----- 
-----coded by Jenson and Salahudheen---- 


library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity Mux8x1 is 
  port( a,b,c,d,e,f,g,h,s0,s1,s2 : in std_logic;--inputs&select 
        out1 : out std_logic);--output 
end Mux8x1; 
-------------- 
architecture Operation of Mux8x1 is 
begin 
  out1<=  (( not s0) and ( not s1) and (not s2) and a)   or 
   (( not s0) and (not s1) and s2 and b) or 
   (( not s0) and ( s1) and (not s2) and c) or 
   (( not s0) and (  s1) and ( s2) and d) or 
   ((  s0) and ( not s1) and (not s2) and e) or 
   ((  s0) and ( not s1) and ( s2) and f) or 
   ((  s0) and ( s1) and (not s2) and g) or 
   ((  s0) and (  s1) and ( s2) and h) ; 
end Operation;
-----------------------------------------------------------------------------------------------------------



-----***16-1 Mux(Q no:15)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity mux16_1 is 
  port( a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s0,s1,s2,s3 : in std_logic;--inputs&select 
        out1 : out std_logic);--output 
end mux16_1; 
-------------------------------- 
architecture Operation of mux16_1 is 
begin 
  out1<=  (( not s0) and ( not s1) and (not s2) and (not s3) and a)  or 
   (( not s0) and (not s1) and (not s2) and (s3) and b) or 
   (( not s0) and (not s1) and (s2) and(not s3) and c) or 
   (( not s0) and (not s1) and (s2) and (s3) and d) or 
   (( not s0) and (s1) and (not s2) and (not s3) and e) or 
   (( not s0) and (s1) and (not s2) and (s3) and f) or 
   (( not s0) and (s1) and (s2) and(not s3) and g) or 
   (( not s0) and (s1) and (s2) and (s3) and h) or 
   ((s0) and (not s1) and (not s2) and (not s3) and i) or 
   ((s0) and (not s1) and (not s2) and (s3) and j) or 
   ((s0) and (not s1) and (s2) and (not s3) and k) or 
   ((s0) and (not s1) and (s2) and (s3) and l) or 
   ((s0) and (s1) and (not s2) and (not s3) and m) or 
   ((s0) and (s1) and (not s2) and (s3) and n) or 
   ((s0) and (s1) and (s2) and (not s3) and o) or 
   ((s0) and (s1) and (s2) and (s3) and p); 
     
 end Operation;
-----------------------------------------------------------------------------------------------------------

------***1-2 DeMux(Q no:16)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------------- 
entity dmux is 
  port (a : in std_logic;--input 
        s :in std_logic;--select 
        o1,o2 : out std_logic);--output 
end dmux; 
--------------------------------- 
architecture Operation of dmux is 
begin 

 o2<=  a and s; 
 o1<= a and (not s); 
  end Operation;
-----------------------------------------------------------------------------------------------------------


-----2-4 line Decoder(Q no:17)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity Demux4x2 is 
  port( 
    a,b,en:in std_logic;--inputs&select 
    z : out std_logic_vector(3 downto 0));--output 
end Demux4x2;  
--------------------------------- 
architecture Operation of Demux4x2 is 
signal abar,bbar:std_logic; 
begin 
  z(3)<=(a and b and en); 
  z(0)<= (abar and bbar and en); 
  bbar<=not b; 
  z(2)<=(a and bbar and en); 
  abar<=not a; 
  z(1)<=(abar and b and en); 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Demux 8x1(Q no:18)***------------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 
------------------------------------ 
entity Demux8x1 is 
  port ( 
    input : in  std_logic; 
    sel : in  std_logic_vector(2 downto 0); 
    output : out std_logic_vector(7 downto 0)); 
end Demux8x1; 
------------------------------------- 
architecture Operation of Demux8x1 is 
begin 
  output(0) <= (not sel(2)) and (not sel(1)) and (not sel(0)) and input; 
  output(1) <= (not sel(2)) and (not sel(1)) and sel(0) and input; 
  output(2) <= (not sel(2)) and sel(1) and (not sel(0)) and input; 
  output(3) <= (not sel(2)) and sel(1) and sel (0) and input; 
  output(4) <= sel(2) and (not sel(1)) and (not sel (0)) and input; 
  output(5) <= sel(2) and (not sel(1)) and sel (0) and input; 
  output(6) <= sel(2) and sel(1) and (not sel (0)) and input; 
  output(7) <= sel(2) and sel(1) and sel (0) and input; 
end Operation;
-----------------------------------------------------------------------------------------------------------


------***MasterSlave JK FF(Q no:19)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity msjkff is 
  port (j , k , out_pre : in std_logic; 
          out_next : out std_logic); 
end msjkff; 

architecture Operation of msjkff is 

begin 
  
  out_next <= out_pre when j ='0' and k='0' else 
                       '1' when j ='1' and k='0' else 
                       '0'when j ='0' and k='1' else 
                        '-'; 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----**RS NOR Latch(Q no:20)***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity rs_latch is 
  port(r,s : in std_logic; 
       q,qbar:inout std_logic); 
end rs_latch; 
--------------------------------- 
architecture Operation of rs_latch is 
begin 
  q <= s nor qbar; 
  qbar <= r nor q; 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Realization (Q no:21)***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Realise1 is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);--output 
end Realise1; 
---------------------------- 
architecture Operation of Realise1 is 
  begin 
    o<=((a xnor b) and (c xnor d)) or ((a xor b) and (c xor d)); 
end operation;
-----------------------------------------------------------------------------------------------------------



-----***Realization (Q no:22(a))***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Realise2 is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);--output 
end Realise2; 
---------------------------- 
architecture Operation of Realise2 is 
  begin 
    o<= (((not d) or (b and c)) and (not a)) or ((a and d) and (not b)); 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***Realisation (Q no:22(b))***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Realise2b is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);--output 
end Realise2b; 
---------------------------- 
architecture Operation of Realise2b is 
  begin 
    o<=((not a) and (not c) and (not d)) or ((not b) and (not d) and c) or (a and b and (not c)) or (a and b and c); 
end operation;
-----------------------------------------------------------------------------------------------------------



-----**Half Subtractor(Q no:23)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity HalfSubtractor is 
  
  port( 
    
    a,b:in std_logic;--inputs 
    difference,borrow:out std_logic);--output 
    
end HalfSubtractor; 
-------------------------------- 
architecture Operation of HalfSubtractor is 

  begin 
    
    difference<=a xor b; 
    borrow<= (not a)and b; 
      
end Operation;
---------------------------------------------------------------------------------------------------------------


-----***FullSubtractor(Q no:24)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity FullSubtractor is 
  
  port( 
    
    a,b,c:in std_logic;--inputs 
    difference,borrow:out std_logic);--output 
    
end FullSubtractor; 
-------------------------------- 
architecture Operation of FullSubtractor is 

  begin 
    
    difference<=((not a) or ((not b) or (not c)))or (a and b and c); 
    borrow<= ((not a)and (b or c))or (b and c); 
     
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***BCD to 7 segment Decoder(Q no:25)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity bcd_7seg_dec is 
        port ( w,x,y,z : in std_logic;--inputs 
               a,b,c,d,e,f,g: out std_logic);--outputs 
end  bcd_7seg_dec; 
---------------------------------- 
architecture Operation of  bcd_7seg_dec is 
begin 
   a <= ((not x) and z) or ( x and z ) or ( y and z ) or (w); 
   b <= (not x) or ((not y) and (not z)) or (y and z); 
   c <= (x) or (not y) or (z); 
   d <= ((not x) and (not z)) or (y and (not z)) or ((not x) and y) or (x and (not y) and z); 
   e <= ((not x) and (not z)) or (y and (not z)); 
   f <= (w) or ((not y) and (not z)) or (x and (not y)) or (x and (not z)); 
   g <= (w) or (x and (not y)) or ((not x) and y) or (y and (not z)); 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Realization (Q no:27)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Realise3 is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    o:out std_logic);--output 
end Realise3; 
---------------------------- 
architecture Operation of Realise3 is 
  begin 
    o<= ((not a) and (not b)) or (a and b and (not d)) or (a and b and c); 
end operation;
-----------------------------------------------------------------------------------------------------------


-----***BCD To EXCESS 3 With NAND Gates***(Q no:28)-----
-----coded by Jenson and Salahudheen-----

library ieee;
use ieee.std_logic_1164.all;
-----------------------------
entity BcdExcess is
  port(a,b,c,d:in std_logic;  p,q,r,s:out std_logic);--inputs and outputs
end BcdExcess;
-----------------------------
architecture Operation of BcdExcess is
begin
  p<=(((a nand a) nand (b nand c)) nand (b nand d));
  q<=(((b nand b) nand ((c nand c) nand (d nand d))) nand (b nand (c nand d)));
  r<=((c nand d) nand ((c nand c) nand (d nand d)));
  s<=(d nand d);
end Operation;
----------------------------------------------------------------------------------------------------------------


------***EXCESS To BCD With NAND(Q no:29)***------
-----coded by Jenson and Salahudheen****-----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
entity ExcesBcd is
  port(
  a,b,c,d:in std_logic;--inputs
  p,q,r,x:out std_logic);--outputs
end ExcesBcd;
----------------------------------------------------
architecture Operation of ExcesBcd is
signal s:std_logic_vector(0 to 36);
begin
 
 s(0)<=a nand b;
 s(1)<=a nand c;
 s(2)<=s(1) nand s(1);
 s(3)<=d nand s(2);
 s(4)<=s(3)nand s(0);
 p<=s(4);
 s(5)<=c nand c;
 s(6)<=s(5)nand a;
 s(7)<=s(6) nand s(6);
 s(8)<=s(7)nand d;
 s(9)<=b nand c;
 s(10)<=s(9) nand s(9);
 s(11)<=s(10) nand d;
 s(12)<=d nand d;
 s(13)<=s(12) nand s(2);
 s(14)<=b nand b;
 s(15)<=a nand s(14);
 s(16)<=s(15)nand s(15);
 s(17)<=s(5) nand s(16);
 s(18)<=s(8) nand s(11);
 s(19)<=s(18) nand s(18);
 s(20)<=s(13) nand s(17);
 s(21)<=s(20) nand s(20);
 q<=s(19) nand s(21);
 s(23)<=b nand s(5);
 s(24)<=s(23) nand s(23);
 s(25)<=s(24) nand d;
 s(26)<=s(8) nand s(13);
 s(27)<=s(26) nand s(26);
 s(28)<=s(10) nand s(12);
 s(29)<=s(25) nand s(28);
 s(30)<=s(29) nand s(29);
 s(31)<=s(27) nand s(30);
 r<=s(31);
 s(32)<=s(12) nand a;
 s(33)<=s(12) nand b;
 s(34)<=s(0) nand s(32);
 s(35)<=s(34) nand s(34);
 s(36)<=s(35) nand s(33);
 x<=s(36); 
 end Operation;
---------------------------------------------------------------------------------------------------------


-----***2 Bit Comparator(Q no:30)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Comparator is 
  port( 
    a,b:in std_logic;--inputs 
    agb,alb,aeb:out std_logic);--outputs 
end Comparator;               
------------------------------ 
architecture Operation of Comparator is 

begin 
  agb<= a and(not b); 
  alb<= (not a) and b; 
  aeb<= a xnor b; 
end Operation; 
-----------------------------------------------------------------------------------------------------------

       
-----***4 Bit Comparator(Q no:31)***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity comp_4 is 
        port( a,b : in std_logic_vector ( 3 downto 0);--inputs 
        aeb,agb,alb : out std_logic);--outputs 
end comp_4; 
-------------------------------- 
architecture Operation of comp_4 is 
begin 
  aeb <= '1' when (a=b) else '0'; 
  agb <= '1' when (a>b) else '0'; 
  alb <= '1' when (a<b) else '0'; 
end Operation; 
-----------------------------------------------------------------------------------------------------------

                                                                     
-----***4-1 Mux Using WithSelect(Q no:32)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
-------------------------------- 
entity Mux421 is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    s:in std_logic_vector(1 downto 0); 
    o:out std_logic);--output 
end Mux421; 
--------------------------------- 
Architecture Operation of Mux421 is 
begin 
  
  with s select 
    o<= a when "00",b when "01",c when "10",d when others; 
     
end Operation;
-----------------------------------------------------------------------------------------------------------


----***4-1 Mux using When Else(Q no:33)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
-------------------------------- 
entity MuxWhenElse is 
  port( 
    a,b,c,d:in std_logic;--inputs 
    s:in std_logic_vector(1 downto 0); 
    o:out std_logic);--output 
end MuxWhenElse; 
--------------------------------- 
Architecture Operation of MuxWhenElse is 
begin 
  
    o<= a when s="00" else b when s="01" else c when s="10" else d ; 
     
end Operation;
-----------------------------------------------------------------------------------------------------------

 
----***BCD to 7segment using With Select(Q no:34)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
-------------------------------- 
entity DisplaySelect is 
  port( 
  --  i:in std_logic; 
    s:in std_logic_vector(3 downto 0);--input 
    o:out std_logic_vector(6 downto 0)); --output 
end DisplaySelect; 
--------------------------------- 
Architecture Operation of DisplaySelect is 
begin 
  
  with s select 
    o<= "1111110" when "0000", 
    "0110000"  when "0001", 
    "1101101"  when "0010", 
    "1111001"  when "0011", 
    "0110011"  when "0100", 
    "1011011"  when "0101", 
    "1011111"  when "0110", 
    "1110000"  when "0111", 
    "1111111"  when "1000",        
    "1111011"  when "1001", 
    "1110111"  when "1010", 
    "0011111"  when "1011", 
    "1001110"  when "1100", 
    "0111101"  when "1101", 
    "1001111"  when "1110", 
    "1000111"     when others; 
     
end Operation;
-----------------------------------------------------------------------------------------------------------


-----*** BCD to 7Segment using When Else(Q no:35)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
-------------------------------- 
entity DisplayWhenElse is 
  port( 
  --  i:in std_logic; 
    s:in std_logic_vector(3 downto 0);--input 
    o:out std_logic_vector(6 downto 0));--output 
end DisplayWhenElse; 
--------------------------------- 
Architecture Operation of DisplayWhenElse is 
begin 
  
     o<= "1111110" when s="0000" else 
    "0110000"  when  s="0001" else 
    "1101101"  when  s="0010" else 
    "1111001"  when  s="0011" else 
    "0110011"  when  s="0100" else 
    "1011011"  when  s="0101" else 
    "1011111"  when  s="0110" else 
    "1110000"  when  s="0111" else 
    "1111111"  when  s="1000" else        
    "1111011"  when  s="1001" else 
    "1110111"  when  s="1010" else 
    "0011111"  when  s="1011" else 
    "1001110"  when  s="1100" else 
    "0111101"  when  s="1101" else 
    "1001111"  when  s="1110" else 
    "1000111"; 
     
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***T FlipFlop(Q no:37)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Tflip is 
  port( 
    
    t,clk,q0:in std_logic;--input 
    q,qbar:out std_logic);--output 
    
  end Tflip; 
   
architecture Operation of Tflip is 

  signal qbar1,temp:std_logic; 

  begin 
    qbar1<= not q0; 
    temp<= q0 when clk='1' and t='0' else qbar1 when clk='1' and t='1' else '-'; 
    q<= temp; 
    qbar<= not temp; 
   
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***D FlipFlop(Q no:38)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Dflip is 
  port( 
    
    d,clk:in std_logic;--input & clock 
    q:out std_logic);--output 
    
  end Dflip; 
  
architecture Operation of Dflip is 

  begin 
   q<= d when clk='1'  else (not d) when clk='1' and d='1' else '-'; 
   
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Priority Encoder(Q no:39)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
-------------------------------- 
entity pr_encod is 
  port ( a : in std_logic_vector ( 3 downto 0); 
         y : out std_logic_vector ( 1 downto 0 ); 
         z : out std_logic); 
end pr_encod; 
-------------------------------- 
architecture Operation of pr_encod is 
  begin 
    y<= "11" when a(3)='1' else 
        "10" when a(2)='1' else 
        "01" when a(1)='1' else 
        "00"; 
    z<= '0' when a="0000" else '1'; 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Realising 4bit FA with fast carry(Q no:40)***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 
------------------------------------ 
entity FA4bitFC is 
  port( 
    a_0,a_1,a_2,a_3,b_0,b_1,b_2,b_3,cin:in std_logic;--inputs 
    s0,s1,s2,s3,cout:out std_logic);--outputs 
end FA4bitFC; 
------------------------------------ 
architecture Operation of FA4bitFC is 
signal a: std_logic_vector(1 to 25); 
begin 
  a(1)<= a_0 nor b_0; 
  a(2)<= a_0 nand b_0; 
  a(3)<= a_1 nor b_1; 
  a(4)<= a_1 nand b_1; 
  a(5)<= a_2 nor b_2; 
  a(6)<= a_2 nand b_2; 
  a(7)<= a_3 nor b_3; 
  a(8)<= a_3 nand b_3; 
  a(9)<= (not a(1)) and a(2); 
  a(10)<= (not cin) and a(2); 
  a(11)<= (not cin) and a(4); 
  a(12)<= (not cin) and a(2) and a(4); 
  a(13)<= a(2) and a(1); 
  a(14)<= (not a(5)) and a(6); 
  a(15)<= (not cin) and a(2) and a(4) and a(6); 
  a(16)<= a(4) and a(6) and a(1); 
  a(17)<= a(6) and a(3); 
  a(18)<= (not a(7)) and a(8); 
  a(19)<= (not cin) and a(2) and a(4) and a(6) and a(8); 
  a(20)<= a(4) and a(6) and a(8) and a(1); 
  a(21)<= a(8) and a(6) and a(3); 
  a(22)<= a(8) and a(5); 
  a(23)<= not(a(17) or a(16) or a(15)); 
  a(24)<= not(a(12) or a(13) or a(3)); 
  a(25)<= not(a(10) or a(1)); 
  cout<= not(a(22) or a(21) or a(20) or a(19)); 
  s0<=a(9) xnor cin; 
  s1<=a(25) xnor a(11); 
  s2<=a(24) xnor a(14); 
  s3<=a(23) xnor a(18); 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***4 Variable Majority fn(Q no:41)***----- 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity Major4var is 
  port( 
    a,b,c,d:in std_logic;--input 
    o:out std_logic);--output 
end Major4var; 
---------------------------- 
architecture Operation of Major4var is 
  begin 
    o<=(((a and b)) and (d or c)) or(((c and d)) and (b or a)); 
end Operation;
-----------------------------------------------------------------------------------------------------------


-----***Traffic Light System(Q no:42)***------ 
-----coded by Jenson and Salahudheen---- 

library ieee; 
use ieee.std_logic_1164.all; 
---------------------------- 
entity traffic is 
  port( 
    a,b:in std_logic;--inputs 
    r,y,g:out std_logic);--outputs 
end traffic; 
---------------------------- 
architecture Operation of Traffic is 
begin 
  r<=not a; 
  y<= b; 
  g<= a and (not b); 
end operation; 


