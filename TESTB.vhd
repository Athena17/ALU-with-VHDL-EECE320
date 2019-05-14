library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
end test;





architecture mine of test is

component ALU is 
port
(
	A,B : IN SIGNED(7 downto 0);
	C : IN STD_LOGIC_VECTOR(3 downto 0);
	R : OUT SIGNED(15 downto 0)
);
END component ;

signal AT,BT : SIGNED(7 DOWNTO 0);
signal CT : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal OT : SIGNED(15 DOWNTO 0);



BEGIN
G: ALU port map (A => AT,B=> BT, C=> CT,R=> OT);

PROCESS BEGIN
AT<="00101010"; BT<="00011111";  WAIT FOR 0 ns ;
CT<= "0000"; WAIT FOR 10 ns ;
CT<= "0001"; WAIT FOR 10 ns ;
CT<= "0010"; WAIT FOR 10 ns ;
CT<= "0011"; WAIT FOR 10 ns ;
CT<= "0100"; WAIT FOR 10 ns ;
CT<= "0101"; WAIT FOR 10 ns ;
CT<= "0110"; WAIT FOR 10 ns ;
CT<= "1000"; WAIT FOR 10 ns ;
CT<= "1001"; WAIT FOR 10 ns ;
CT<= "1010"; WAIT FOR 10 ns ;
CT<= "1011"; WAIT FOR 10 ns ;
CT<= "1110"; WAIT FOR 10 ns ;
CT<= "1101"; WAIT FOR 10 ns ;


AT<="10101010"; BT<="10011111"; WAIT FOR 0 ns ;
CT<= "0000"; WAIT FOR 10 ns ;
CT<= "0001"; WAIT FOR 10 ns ;
CT<= "0010"; WAIT FOR 10 ns ;
CT<= "0011"; WAIT FOR 10 ns ;
CT<= "0100"; WAIT FOR 10 ns ;
CT<= "0101"; WAIT FOR 10 ns ;
CT<= "0110"; WAIT FOR 10 ns ;
CT<= "1000"; WAIT FOR 10 ns ;
CT<= "1001"; WAIT FOR 10 ns ;
CT<= "1010"; WAIT FOR 10 ns ;
CT<= "1011"; WAIT FOR 10 ns ;
CT<= "1110"; WAIT FOR 10 ns ;
CT<= "1101"; WAIT FOR 10 ns ;

AT<="00101010"; BT<="10011111"; WAIT FOR 0 ns ;
CT<= "0000"; WAIT FOR 10 ns ;
CT<= "0001"; WAIT FOR 10 ns ;
CT<= "0010"; WAIT FOR 10 ns ;
CT<= "0011"; WAIT FOR 10 ns ;
CT<= "0100"; WAIT FOR 10 ns ;
CT<= "0101"; WAIT FOR 10 ns ;
CT<= "0110"; WAIT FOR 10 ns ;
CT<= "1000"; WAIT FOR 10 ns ;
CT<= "1001"; WAIT FOR 10 ns ;
CT<= "1010"; WAIT FOR 10 ns ;
CT<= "1011"; WAIT FOR 10 ns ;
CT<= "1110"; WAIT FOR 10 ns ;
CT<= "1101"; WAIT FOR 10 ns ;

AT<="10101010"; BT<="00011111"; WAIT FOR 0 ns ;
CT<= "0000"; WAIT FOR 10 ns ;
CT<= "0001"; WAIT FOR 10 ns ;
CT<= "0010"; WAIT FOR 10 ns ;
CT<= "0011"; WAIT FOR 10 ns ;
CT<= "0100"; WAIT FOR 10 ns ;
CT<= "0101"; WAIT FOR 10 ns ;
CT<= "0110"; WAIT FOR 10 ns ;
CT<= "1000"; WAIT FOR 10 ns ;
CT<= "1001"; WAIT FOR 10 ns ;
CT<= "1010"; WAIT FOR 10 ns ;
CT<= "1011"; WAIT FOR 10 ns ;
CT<= "1110"; WAIT FOR 10 ns ;
CT<= "1101"; WAIT FOR 10 ns ;









END PROCESS;

END MINE;