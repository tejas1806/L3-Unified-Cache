module ReadFromFile();

integer in;
reg [31:0]din;
integer x,y,z;
initial
begin
in=$fopen("input.txt","r");//$fopen opens a disk file, and returns a 32-bit32 file descriptor pointer to the file.

while(!$feof(in))
begin
y=$fscanf(in,"%d",x);// y is no of elements read from the file.
if(x==9)
$display("clear the cache");
//appropriate function is called
else
begin
z=$fscanf(in,"%h\n",din);// y is no of elements read from the file.

$display("%d  %h",x,din);
end
end
end

endmodule
