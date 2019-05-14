library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
port
(
	A,B : IN SIGNED(7 downto 0);
	C : IN STD_LOGIC_VECTOR(3 downto 0);
	R : OUT SIGNED(15 downto 0)
);
END ALU ;

architecture ARCH of ALU is
signal sum,inc,diff,dec, MAX, MIN, CRS, CLS, LRS, LLS, ARS, ALS : SIGNED (7 downto 0);
signal mult : SIGNED(15 downto 0);
signal temp1, temp2 : std_logic ;

BEGIN 
PROCESS(A,B,C) 
BEGIN 
sum <= (SIGNED (A)+ SIGNED (B)) ;


inc <= SIGNED (SIGNED(A)+ 1);
DIFF <= SIGNED(SIGNED(A)-SIGNED(B));
DEC <=  SIGNED(SIGNED(A)-1);
MULT <= SIGNED(SIGNED(A)*SIGNED(B));
IF (signed (A) >=SIGNED (B)) THEN Max <= A ; 
ELSE MAX<= B ;
END IF ;
IF (signed (A) <=SIGNED (B)) THEN MIN <= A ;  
ELSE MIN <= B ;
END IF ;

temp1<=A(7);
G1: FOR h IN 0 TO 6 loop CLS(h+1)<=A(h); END loop ;
CLS(0)<=temp1;

temp2<=A(0);
G2: FOR h IN 1 TO 7 loop CRS(h-1)<=A(h); END loop ;
CRS(7)<=temp2;

G3: FOR h IN 0 TO 6 loop LLS(h+1)<=A(h); END loop ;
LLS(0)<='0';

G4: FOR h IN 1 TO 7 loop LRS(h-1)<=A(h); END loop ;
LRS(7)<='0';

G5: FOR h IN 0 TO 6 loop ALS(h+1)<=A(h); END loop ;
ALS(0)<=ALS(1);

G6:FOR h IN 1 TO 7 loop ARS(h-1)<=A(h); END loop ;
ARS(7)<=ARS(6);




IF(C="0000") then R<=SIGNED(resize((sum),R'LENGTH));
ELSIF (C="0001") then R<=SIGNED(resize( (INC),R'LENGTH));
ELSIF (C="0010") then R<=SIGNED(resize(signed(DIFF),R'LENGTH));
ELSIF (C="0011") then R<=SIGNED(resize(signed(dec),R'LENGTH)); 
ELSIF (C="0100") then R<=SIGNED (MULT);
ELSIF (C="0101") then R<=SIGNED(resize(signed(MAX),R'LENGTH));
ELSIF (C="0110") then R<=SIGNED(resize(signed(MIN),R'LENGTH));
ELSIF (C="1000") then R<=SIGNED(resize(signed(CRS),R'LENGTH));
ELSIF (C="1001") then R<=SIGNED(resize(signed(CLS),R'LENGTH));
ELSIF (C="1010") then R<=SIGNED(resize(signed(LRS),R'LENGTH));
ELSIF (C="1011") then R<=SIGNED(resize(signed(LLS),R'LENGTH));
ELSIF (C="1110") then R<=SIGNED(resize(signed(ARS),R'LENGTH));
ELSIF (C="1101") then R<=SIGNED(resize(signed(ALS),R'LENGTH));
Else R<="0000000000000000" ;
                
end IF;




END PROCESS;
END ARCH;