var
F_in, F_out: Text;
i, j, k, s, n: integer;

begin
assign(F_in, 'C:\PABCWork.NET\text7_in.txt');
reset(F_in);
assign(F_out, 'C:\PABCWork.NET\text7_out.txt');
rewrite(F_out);
read(F_in, n);
for i := 1 to n do
begin
k := 0;
for j := 1 to i do
if i mod j = 0 then inc(k);
if k = 5 then
S += i;
end;
writeln(F_out,S);
close(F_in);
close(F_out);
end.