
------***EXCESS To BCD With NAND(Q no:29)***------
-----coded by Jenson and Salahudheen****-----

library ieee;
use ieee.std_logic_1164.all;
------------------------------------------
entity ExcesBcd is
  port(
  a,b,c,d:in std_logic;
  p,q,r,x:out std_logic);
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