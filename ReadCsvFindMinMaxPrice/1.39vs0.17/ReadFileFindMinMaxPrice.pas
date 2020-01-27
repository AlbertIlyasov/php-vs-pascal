program ReadFileFindMinMaxPrice;

uses sysutils;

var f:text;
    s,minProductName,maxProductName:string;
    price, minPrice, maxPrice: real;
    posDelimiter: integer;
begin
writeln('Find min and max prices...');

minProductName := '';
minPrice := 4294967296;

maxProductName := '';
maxPrice := 0;

assign(f,'../test.csv');
reset(f);

while not eof(f) do
 begin
    readln(f,s);
    posDelimiter := pos(',',s);
    price := strtofloat(copy(s,posDelimiter+1));

    if (price <= 0) then continue;

    if (price < minPrice) then
        begin
        minPrice:=price;
        minProductName := copy(s,1,posDelimiter-1);
        end;
    if (price > maxPrice) then
        begin
        maxPrice:=price;
        maxProductName := copy(s,1,posDelimiter-1);
        end;
 end;
close(f);
writeln(minProductName,' ',minPrice);
writeln(maxProductName, ' ',maxPrice);
end.

