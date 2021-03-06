-- generated with romgen v3.03 by MikeJ
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.numeric_std.all;

entity PROM_F1 is
port (
	CLK  : in  std_logic;
	ADDR : in  std_logic_vector(7 downto 0);
	DATA : out std_logic_vector(3 downto 0)
	);
end;

architecture RTL of PROM_F1 is


	type ROM_ARRAY is array(0 to 255) of std_logic_vector(3 downto 0);
	constant ROM : ROM_ARRAY := (
		x"F",x"1",x"2",x"3",x"F",x"2",x"3",x"4", -- 0x0000
		x"F",x"3",x"4",x"5",x"F",x"4",x"5",x"6", -- 0x0008
		x"F",x"5",x"6",x"7",x"F",x"6",x"7",x"8", -- 0x0010
		x"F",x"7",x"8",x"9",x"F",x"8",x"9",x"A", -- 0x0018
		x"F",x"9",x"A",x"B",x"F",x"A",x"B",x"C", -- 0x0020
		x"F",x"B",x"C",x"D",x"F",x"C",x"D",x"E", -- 0x0028
		x"F",x"D",x"E",x"F",x"F",x"E",x"F",x"1", -- 0x0030
		x"F",x"F",x"1",x"2",x"F",x"F",x"F",x"F", -- 0x0038
		x"F",x"0",x"0",x"0",x"F",x"1",x"1",x"1", -- 0x0040
		x"F",x"2",x"2",x"2",x"F",x"3",x"3",x"3", -- 0x0048
		x"F",x"4",x"4",x"4",x"F",x"5",x"5",x"5", -- 0x0050
		x"F",x"6",x"6",x"6",x"F",x"7",x"7",x"7", -- 0x0058
		x"F",x"8",x"8",x"8",x"F",x"9",x"9",x"9", -- 0x0060
		x"F",x"A",x"A",x"A",x"F",x"B",x"B",x"B", -- 0x0068
		x"F",x"C",x"C",x"C",x"F",x"D",x"D",x"D", -- 0x0070
		x"F",x"E",x"E",x"E",x"F",x"F",x"F",x"F", -- 0x0078
		x"F",x"3",x"1",x"4",x"F",x"4",x"3",x"5", -- 0x0080
		x"F",x"5",x"4",x"6",x"F",x"6",x"5",x"7", -- 0x0088
		x"F",x"7",x"6",x"8",x"F",x"8",x"7",x"A", -- 0x0090
		x"F",x"A",x"8",x"B",x"F",x"B",x"A",x"E", -- 0x0098
		x"F",x"E",x"B",x"D",x"F",x"D",x"E",x"C", -- 0x00A0
		x"F",x"C",x"D",x"9",x"F",x"9",x"C",x"2", -- 0x00A8
		x"F",x"2",x"9",x"1",x"F",x"1",x"2",x"3", -- 0x00B0
		x"F",x"F",x"F",x"F",x"F",x"F",x"F",x"F", -- 0x00B8
		x"F",x"9",x"D",x"E",x"F",x"4",x"D",x"A", -- 0x00C0
		x"F",x"1",x"2",x"9",x"F",x"1",x"0",x"3", -- 0x00C8
		x"F",x"F",x"F",x"F",x"F",x"F",x"F",x"F", -- 0x00D0
		x"F",x"F",x"F",x"F",x"F",x"F",x"F",x"F", -- 0x00D8
		x"F",x"F",x"F",x"F",x"F",x"F",x"F",x"F", -- 0x00E0
		x"F",x"F",x"F",x"F",x"F",x"F",x"F",x"F", -- 0x00E8
		x"F",x"9",x"9",x"9",x"F",x"A",x"A",x"A", -- 0x00F0
		x"F",x"A",x"6",x"2",x"F",x"C",x"F",x"F"  -- 0x00F8
	);

begin

	p_rom : process
	begin
		wait until rising_edge(CLK);
			DATA <= ROM(to_integer(unsigned(ADDR)));
	end process;
end RTL;
